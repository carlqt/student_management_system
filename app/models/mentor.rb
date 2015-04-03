# == Schema Information
#
# Table name: mentors
#
#  id            :integer          not null, primary key
#  name          :string
#  sex           :string
#  age           :integer
#  date_of_birth :date
#  bio           :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image         :string
#

class Mentor < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :students
  accepts_nested_attributes_for :students

  validates :name, presence: true

  before_create :calculate_age


  private
  def calculate_age
    now = Time.now.utc.to_date
    dob = date_of_birth.to_date
    self.age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end
