# == Schema Information
#
# Table name: recurring_events
#
#  id         :integer          not null, primary key
#  title      :string
#  anchor     :date
#  frequency  :integer          default(0)
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RecurringEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
