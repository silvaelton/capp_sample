@user = User.new({
  name: "Homologação",
  email: 'homolog@homolog.com',
  password: "123456789",
  password_confirmation: "123456789",
  privilege: 2
})

@user.save!