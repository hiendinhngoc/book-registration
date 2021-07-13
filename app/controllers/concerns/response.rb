module Response
  def response(success, data, errors = '')
    if success
      render json: { success: success, errors: errors, user_book: data }, status: :ok
    else
      render json: { success: success, errors: errors, user_book: data }, status: :unprocessable_entity
    end
  end
end
