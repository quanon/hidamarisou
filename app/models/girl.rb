class Girl < ApplicationRecord
  belongs_to :voice_actor
  belongs_to :girl, polymorphic: true

  scope :hidamari, -> { where(girl_type: HidamariGirl.name) }
  scope :magical, -> { where(girl_type: MagicalGirl.name) }
end
