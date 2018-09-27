module Locomotive
  class SubscriptionType
    include Locomotive::Mongoid::Document

    field :name
    field :days, type: Integer
    field :months, type: Integer
    field :is_available, type: Boolean, default: true

    belongs_to :site, class_name: 'Locomotive::Site', inverse_of: :subscription_types

    validates_presence_of :name, :days, :months, :is_available

    def available?
      is_available
    end

    def name_str
      "#{name} (#{days}  days, #{months} months)"
    end
  end
end
