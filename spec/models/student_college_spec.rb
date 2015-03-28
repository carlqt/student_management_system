# == Schema Information
#
# Table name: student_colleges
#
#  id         :integer          not null, primary key
#  student_id :integer
#  college_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe StudentCollege, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
