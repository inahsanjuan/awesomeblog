class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true #user_id
      t.references :micropost, foreign_key: true #micropost_id

      t.timestamps
    end

    add_index :votes, [:user_id, :micropost_id], unique: true
  end
end
