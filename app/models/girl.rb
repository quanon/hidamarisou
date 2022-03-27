class Girl < ApplicationRecord
  belongs_to :voice_actor
  delegated_type :girl, types: %w(HidamariGirl MagicalGirl)
end
