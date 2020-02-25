class RemoveDescriptionColumnFromQualifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :qualifications, :description, :text
  end
end
