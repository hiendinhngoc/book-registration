class Api::V1::UserBooksController < ApiController
  include Response

  def create
    user_book = UserBook.new(user_book_params)

    if user_book.save
      generate_basic_response(true, Api::V1::UserBookSerializer.new(user_book).serializable_hash)
    else
      generate_basic_response(false, {}, user_book.errors)
    end
  end

  private

  def user_book_params
    params.require(:user_book).permit(
      :user_id, :book_id
    )
  end
end
