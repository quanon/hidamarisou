ApplicationRecord.transaction do
  HidamariGirl.create(
    girl: Girl.create(
      name: 'ゆの',
      voice_actor: VoiceActor.find_or_create_by(name: '阿澄佳奈')
    ),
    room_number: 201
  )

  HidamariGirl.create(
    girl: Girl.create(
      name: '宮子',
      voice_actor: VoiceActor.find_or_create_by(name: '水橋かおり')
    ),
    room_number: 202
  )

  MagicalGirl.create(
    girl: Girl.create(
      name: '巴マミ',
      voice_actor: VoiceActor.find_or_create_by(name: '水橋かおり')
    ),
    color: '黄',
    soul_gem_status: :moderately_tainted
  )

  MagicalGirl.create(
    girl: Girl.create(
      name: '美樹さやか',
      voice_actor: VoiceActor.find_or_create_by(name: '喜多村英梨')
    ),
    color: '青',
    soul_gem_status: :heavily_tainted
  )

  MagicalGirl.create(
    girl: Girl.create(
      name: '佐倉杏子',
      voice_actor: VoiceActor.find_or_create_by(name: '野中藍')
    ),
    color: '赤',
    soul_gem_status: :lightly_tainted
  )
end