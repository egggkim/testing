class RemoveSubjectColumnFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :subject, :string
  end
end
