class CreateBooksTable < ActiveRecord::Migration[8.0]
  def change
    create_table :books_tables do |t|
      t.timestamps
    end
  end
end
