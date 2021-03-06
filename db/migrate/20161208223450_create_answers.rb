class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.references :user, null: false, index: true
      t.references :question, null: false, index: true

      t.timestamps(null: false)
    end
  end
end
