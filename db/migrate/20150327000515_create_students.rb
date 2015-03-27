class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :school
      t.string :level
      t.string :country
      t.decimal :sat_score
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
