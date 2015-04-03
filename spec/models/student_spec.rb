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
#  mentor_id     :integer
#

require 'rails_helper'

RSpec.describe Student, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
