class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name, index: true
      t.text :text
      t.references :user, index: true, foreign_key: true, null: true

    end
  end
end
