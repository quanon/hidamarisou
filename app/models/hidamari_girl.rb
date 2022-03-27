class HidamariGirl < ApplicationRecord
  has_one :girl, as: :girl, touch: true, dependent: :destroy

  delegate :name, :voice_actor, to: :girl
end