class MagicalGirl < ApplicationRecord
  has_one :girl, as: :girl, touch: true, dependent: :destroy

  enum soul_gem_status: { clean: 0, lightly_tainted: 1, moderately_tainted: 2, heavily_tainted: 3 }

  delegate :name, :voice_actor, to: :girl
end
