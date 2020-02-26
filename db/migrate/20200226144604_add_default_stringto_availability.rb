class AddDefaultStringtoAvailability < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :availability, "Consult teacher"
  end
end
