class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :country
      t.decimal :sat_min_score
      t.decimal :sat_max_score
      t.decimal :tuition

      t.timestamps null: false
    end
  end
end
