ApplicationRecord.transaction do
  Girl.create(
    name: 'ゆの',
    voice_actor: VoiceActor.find_or_create_by(name: '阿澄佳奈'),
    girl: HidamariGirl.create(room_number: 201)
  )

  Girl.create(
    name: '宮子',
    voice_actor: VoiceActor.find_or_create_by(name: '水橋かおり'),
    girl: HidamariGirl.create(room_number: 202)
  )

  Girl.create(
    name: '巴マミ',
    voice_actor: VoiceActor.find_or_create_by(name: '水橋かおり'),
    girl: MagicalGirl.create(color: '黄', soul_gem_status: :moderately_tainted)
  )

  Girl.create(
    name: '美樹さやか',
    voice_actor: VoiceActor.find_or_create_by(name: '喜多村英梨'),
    girl: MagicalGirl.create(color: '青', soul_gem_status: :heavily_tainted)
  )

  Girl.create(
    name: '佐倉杏子',
    voice_actor: VoiceActor.find_or_create_by(name: '野中藍'),
    girl: MagicalGirl.create(color: '赤', soul_gem_status: :heavily_tainted)
  )
end