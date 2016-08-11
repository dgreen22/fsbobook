class FsboMailer < ApplicationMailer

	default from: 'For Sale By Owner Guide <fsbo@gmail.com>'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_fsbo_report_email(user)
    @subscriber = user
    mail(to: @subscriber.email, subject: "Here's your Free FSBO Guide")
    attachments['For_Sale_By_Owner_Guide.pdf'] = File.read('app/assets/images/2015_state_of_email.pdf')
  end

end
