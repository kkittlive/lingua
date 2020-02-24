class AddIsTeacherToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_teacher, :boolean, default: false
  end
end
