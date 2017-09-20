User.create(
  name: 'Jing',
  email: 'jing@sando.club',
  bio: 'Two slices of pizza stuck face together is not a sandwich.',
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

Group.create(name: 'Mincing Room Only', description: 'A Place for Everyone', privacy: false)

Group.create(name: 'Fan Fiction', description: 'HARRY POTTER SLASH LOVERS', privacy: false)

Avatar.create(src: "croissando.png")
Avatar.create(src: "pickle.png")


Membership.create(user_id: 1, group_id: 1)
Membership.create(user_id: 1, group_id: 2)
Membership.create(user_id: 2, group_id: 1)
Membership.create(user_id: 3, group_id: 1)
