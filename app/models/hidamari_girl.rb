class HidamariGirl < ApplicationRecord
  has_one :girl, as: :girl, touch: true, dependent: :destroy
end