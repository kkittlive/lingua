class DeleteQualifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :qualifications, :string
  end
end
