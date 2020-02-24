class AddCustomUserColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :language, :string
    add_column :users, :location, :string
    add_column :users, :qualifications, :string
    add_column :users, :availability, :string
    add_column :users, :biography, :text
  end
end
