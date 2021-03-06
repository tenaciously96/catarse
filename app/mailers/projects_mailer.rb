class ProjectsMailer < ActionMailer::Base
  
  include ERB::Util
  
  default :from => "smartn.me <contact@smartn.me>"

  def project_confirmation( user, project, url )
    @user = user
    @project = project
    @url = url
    attachments["rails.png"] = File.read("#{Rails.root}/public/assets/sites/smartn/logo.png")

    mail(:to => "newcampaigns@smartn.me", :subject => t('projects_mailer.start_project_email.subject', :name => @user.name))
  end
  
end
