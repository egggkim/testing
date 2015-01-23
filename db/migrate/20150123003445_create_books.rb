class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :authorname
      t.string :subject
      t.string :genre
      t.string :summary

      t.timestamps null: false
    end
  end
end
