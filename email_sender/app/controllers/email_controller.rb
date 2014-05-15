class EmailController < ApplicationController

  def about
  end

#   def email
#     # TODO: send the email here.
#     ContactMailer.status_email(email, subject, body).deliver
#     render nothing: true, status: 200
#   end
# end


def email

    email = email_params
    ContactMailer.status_email(email[:email], email[:subject], email[:body]).deliver
  render nothing: true, status: 200

    # put logic for sending an email
    # TODO: send the email here.
  end

  private

  def email_params 
    params.require(:email).permit(:subject, :body, :email)
  end
end
