require 'rails_helper'

RSpec.describe Locomotive::Subscription, :type => :model do
  subject {
    Locomotive::Subscription.new(
      start: Time.now
    )
  }

  skip ' context validation'

  # crud

  skip '#destroy'

  # fields

  skip '#subscription_type'

  skip '#account'

  skip '#site'

  describe '#start' do
    it 'saves as a Time' do
      expect(subject.start).to be_instance_of ActiveSupport::TimeWithZone
    end
  end

  # methods

  skip '#name_str'

  skip '#end_date'

  skip '#days_left'
end
