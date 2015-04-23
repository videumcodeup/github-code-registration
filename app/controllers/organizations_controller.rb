class OrganizationsController < ApplicationController
  def show
    @organization = get_organization_by(params[:name])
  end
  
  private
  
  def get_github_client
    Octokit::Client.new(:access_token => ENV['GITHUB_ACCESS_TOKEN'])
  end
  
  def get_organization_by(name)
    Organization.new(get_github_client, name)
  end
end
