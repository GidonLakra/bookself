class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :rating
      t.integer :reading_status

      t.timestamps
    end
  end
end
