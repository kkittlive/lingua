class AddStatusToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :status, :string, default: "pending"
  end
end
