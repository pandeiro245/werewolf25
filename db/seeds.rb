Room.create! if Room.count.zero?
role = Role.find_or_create_by(name: 'gm')
Member.create!({room: Room.first, user: User.first, role: role})

Role.find_or_create_by(name: 'werewolf')
Role.find_or_create_by(name: 'citizen')

