require 'rails_helper'

RSpec.describe Locomotive::SubscriptionType, :type => :model do
  subject {
    Locomotive::SubscriptionType.new(
      days: '8',
      months: '1',
      is_available: 'false'
    )
  }

  skip ' context validation'

  skip '#name'

  describe '#days' do
    it 'saves as an integer' do
      expect(subject.days).to eq 8
    end
  end

  describe '#months' do
    it 'saves as an integer' do
      expect(subject.months).to eq 1
    end
  end

  describe '#is_available' do
    it 'saves as a boolean' do
      expect(subject.is_available).to eq false
    end
  end
end
