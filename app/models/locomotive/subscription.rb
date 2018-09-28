module Locomotive
  class Subscription
    include Locomotive::Mongoid::Document

    field :start, type: Time

    belongs_to :subscription_type, class_name: 'Locomotive::SubscriptionType', inverse_of: :subscriptions
    belongs_to :account, class_name: 'Locomotive::Account', inverse_of: :subscription
    belongs_to :site, class_name: 'Locomotive::Site', inverse_of: :subscriptions

    validates_presence_of :start, :account, :subscription_type

    def name_str
      "#{account.name} - #{subscription_type.name_str}"
    end

    def end_date
      (start_date >> subscription_type.months) + subscription_type.days
    end

    def days_left
      now = Time.now
      now > end_date ? 0 : end_date - now
    end
  end
end
