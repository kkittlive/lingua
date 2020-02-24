class CreateUserQualifications < ActiveRecord::Migration[5.2]
  def change
    create_table :user_qualifications do |t|
      t.references :user, foreign_key: true
      t.references :qualification, foreign_key: true

      t.timestamps
    end
  end
end
