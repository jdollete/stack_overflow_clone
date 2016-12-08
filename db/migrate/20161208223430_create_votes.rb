class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :user, null: false
      t.references :voteable, polymorphic: true, index: true

      t.timestamps(null: false)
    end
  end
end
