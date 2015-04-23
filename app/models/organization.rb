class Organization
  attr_reader :info, :members
  delegate :name, :description, :html_url, to: :@info
  
  def initialize(client, name)
    @info = client.organization(name)
    @members = client.organization_members(name)
  end
end