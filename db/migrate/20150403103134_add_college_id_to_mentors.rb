class AddCollegeIdToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :college_id, :integer
  end
end
