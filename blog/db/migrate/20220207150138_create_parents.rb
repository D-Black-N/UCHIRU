class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :name, null: false
      t.datetime :created_at
    end
  end
end
