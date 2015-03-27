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
end
