class CreateBookRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :book_registrations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
