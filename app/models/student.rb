class Student < ActiveRecord::Base
  has_many :colleges
  belongs_to :mentor
end
