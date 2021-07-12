class RenameBookRegistrationsToUserBook < ActiveRecord::Migration[6.0]
  def change
    rename_table :book_registrations, :user_books
  end
end
