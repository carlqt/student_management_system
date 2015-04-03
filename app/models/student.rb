# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  name          :string
#  sex           :string
#  age           :integer
#  school        :string
#  level         :string
#  country       :string
#  sat_score     :decimal(, )
#  date_of_birth :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  college_id    :integer
#  image         :string
#

class Student < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :college
  belongs_to :mentor

  validates :name, presence: true
  validates :school, presence: true

  before_create :calculate_age


  private
  def calculate_age
    now = Time.now.utc.to_date
    dob = date_of_birth.to_date
    self.age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end
