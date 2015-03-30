class AddImageToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :image, :string
  end
end
