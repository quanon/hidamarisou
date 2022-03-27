class VoiceActor < ApplicationRecord
  has_many :girls, dependent: :destroy
end
