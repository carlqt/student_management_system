# == Schema Information
#
# Table name: colleges
#
#  id            :integer          not null, primary key
#  name          :string
#  country       :string
#  sat_min_score :decimal(, )
#  sat_max_score :decimal(, )
#  tuition       :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class College < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :students

  validates :name, presence: true
  validates_numericality_of :tuition, greater_than: 0
  validates :sat_min_score, numericality: { greater_than: 0, less_than: 11 }
  validates :sat_max_score, numericality: { greater_than: 0, less_than: 11}
end
