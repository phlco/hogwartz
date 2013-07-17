class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.string :password_hash
      t.string :password_salt
      t.integer :house_id
      t.timestamps
    end
  end

  def down
    drop_table :students
  end
end
