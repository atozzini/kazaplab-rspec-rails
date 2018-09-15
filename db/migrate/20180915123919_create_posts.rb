class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, limit: 100, null: false
      t.text :description, null: false
      t.references :user, foreing_key: true, null: false

      t.timestamps
    end
  end
end
