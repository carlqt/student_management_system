class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.date :date_of_birth
      t.text :bio

      t.timestamps null: false
    end
  end
end
