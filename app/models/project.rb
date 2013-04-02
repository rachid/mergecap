class Project < ActiveRecord::Base
  validates_presence_of :name
  attr_accessible :name, :team_id
  belongs_to :team

  has_many :project_members
  has_many :members, through: :project_members

  def mergecap=(member_name)
    project_members.update_all(mergecap: false)
    member = Member.where(name: member_name)
    if member.any?
      project_members.where(member_id: member.first.id).update_all(mergecap: true)
    end
  end

  def mergecap
    members = project_members.where(mergecap: true)
    if members.any?
       if members.first.member
          members.first.member.name
       end
    end
  end

  def self.broadcast(channel = '/anyone', data)
    token = APP_SETTINGS['faye']['token']
    faye_server = APP_SETTINGS['faye']['server']
    message = {channel: channel, data: data, ext: { auth_token: token } }
    uri = URI.parse(faye_server)
    Net::HTTP.post_form(uri, message: message.to_json)
  end

  def self.push_me(id)
    broadcast("/dashboard/#{id}", 'ping')
  end
end
