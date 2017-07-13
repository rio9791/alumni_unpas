# == Schema Information
#
# Table name: donates
#
#  id             :integer          not null, primary key
#  amount         :decimal(, )
#  file_transfer  :string
#  recipient_name :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_valid       :boolean          default(FALSE)
#

require 'test_helper'

class DonateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
