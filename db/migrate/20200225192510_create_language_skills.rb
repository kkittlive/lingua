class CreateLanguageSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :language_skills do |t|
      t.references :user, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
