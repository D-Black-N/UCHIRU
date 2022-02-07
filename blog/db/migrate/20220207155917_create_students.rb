class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name, index: true, null: false
      t.datetime :created_at
      t.references :parent, index: true, foreign_key: true, default: nil
    end
  end
end
