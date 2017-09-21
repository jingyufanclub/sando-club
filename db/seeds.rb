User.create(
  name: 'Jing',
  email: 'jing@sando.club',
  bio: 'Two slices of pizza stuck face-together is not a sandwich.',
  password: "1234",
  avatar_id: 1)

User.create(
  name: 'Rufus',
  email: 'rufus@rufusbf.com',
  bio: "console.dog('meow')",
  password: "1234",
  avatar_id: 2)

User.create(
  name: 'Leo Steinberg',
  email: 'leo@othercriteria.com',
  bio: "May I bathe you?",
  password: "1234",
  avatar_id: 2)

User.create(
  name: 'Louis Cattorze',
  email: 'louis@meerkat.manor',
  bio: "Bonjour, Kit Kat!",
  password: "1234",
  avatar_id: 1)

Group.create(name: 'Mincing Room Only', description: 'A Place for Everyone', privacy: false)


Avatar.create(src: "croissando.png")
Avatar.create(src: "pickle.png")


Membership.create(user_id: 1, group_id: 1, owner: true)
Membership.create(user_id: 2, group_id: 1)
Membership.create(user_id: 3, group_id: 1)
Membership.create(user_id: 4, group_id: 1)
