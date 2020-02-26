class AddLanguageToLesson < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :language, foreign_key: true
  end
end
