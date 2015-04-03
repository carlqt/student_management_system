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
#  college_id    :integer
#

require 'rails_helper'

RSpec.describe Mentor, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
