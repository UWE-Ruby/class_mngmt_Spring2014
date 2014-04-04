class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.integer :age
      t.text :bio
      t.string :profession
      t.string :favorite_ice_cream_flavor

      t.timestamps #created_at, updated_at
    end
  end
end
