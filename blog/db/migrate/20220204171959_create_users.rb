class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest

    end
    add_index :users, :login, unique: true
  end
end
