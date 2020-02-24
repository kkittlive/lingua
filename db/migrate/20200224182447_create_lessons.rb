class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.datetime :date
      t.string :location
      t.bigint :teacher, foreign_key: true
      t.bigint :student, foreign_key: true

      t.timestamps
    end
  end
end
