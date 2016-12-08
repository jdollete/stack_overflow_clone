class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.references :user, null: false, index: true
      t.references :answer, index: true #best answer

      t.timestamps(null: false)
    end
  end
end
