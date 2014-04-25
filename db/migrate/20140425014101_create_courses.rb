class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :number_of_students
      t.integer :student_id

      t.timestamps
    end
  end
end
