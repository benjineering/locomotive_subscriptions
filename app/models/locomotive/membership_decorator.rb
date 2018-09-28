Locomotive::Membership.class_eval do
  has_one :subscription, dependent: :destroy
end
