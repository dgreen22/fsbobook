class FsboMailer < ApplicationMailer

	default :from => 'fsbo@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_fsbo_report_email(user)
    @subscriber = user
    mail( :to => @subscriber.email,
    :subject => "Here's your Free FSBO Cheatsheet" )
  end

end
