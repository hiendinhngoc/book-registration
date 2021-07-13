class Api::V1::BooksController < ApiController
  def index # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    user_params = params[:user].present? ? params[:user][:name] : ''
    book_title_params = params[:book].present? ? params[:book][:title] : ''
    book_description_params = params[:book].present? ? params[:book][:description] : ''

    books = if params['book'].present? || params['user']
              Book.search_books(
                user_params,
                book_title_params,
                book_description_params
              ).page(params[:page]).per(params[:per_page]).order(:updated_at)
            elsif params['query'].present?
              Book.search_books(
                params[:query],
                params[:query],
                params[:query]
              ).page(params[:page]).per(params[:per_page]).order(:updated_at)
            else
              Book.page(params[:page]).per(params[:per_page]).order(:updated_at)
            end

    render json: books,
           root: 'books',
           adapter: :json,
           each_serializer: Api::V1::BookSerializer
  end
end
