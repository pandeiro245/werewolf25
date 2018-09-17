class User < ApplicationRecord
  def self.generate(num=20)
    1.upto(num).each do |i|
      User.create!({name: "name#{i}"})
    end
  end

  def self.sync
    room = Room.first
    citizen = Role.find_by(name: 'citizen')
    werewolf = Role.find_by(name: 'werewolf')
    self.all.each do |user|
      member = Member.find_or_create_by(
        room: room,
        user: user,
      )
      next if member.role_id.present?
      params = {room: room, role: werewolf}
      member.role = Member.where(params).present? && rand < 0.1 ? werewolf : citizen
      member.save!
    end
  end
end
