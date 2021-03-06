class User < ActiveRecord::Base
  has_many :teams
  has_many :projects

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
    end
  end

  def member
    Member.find_by_name(name)
  end

  def related_projects
    Project.includes(:project_members).where(project_members: { member_id: member.id })
  end
end
