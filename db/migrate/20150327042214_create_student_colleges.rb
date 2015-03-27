class CreateStudentColleges < ActiveRecord::Migration
  def change
    create_table :student_colleges do |t|
      t.integer :student_id
      t.integer :college_id

      t.timestamps null: false
    end

    add_index :student_colleges, [:student_id, :college_id]
  end
end
