require("bundler")
Bundler.require()

class Request < ApplicationRecord
  belongs_to :user
  belongs_to :trainer

  after_create :confirmation

  def confirmation
    @twilio_number = '+12058463430'
    @client = Twilio::REST::Client.new MY_KEY["account_sid"], MY_KEY["auth_token"]
    body = "Hi #{self.user.username}. We have received your one on one #{self.title} course request successfully. Date : #{self.start.slice(0,10)}, from #{self.start.slice(11,19)} to #{self.end.slice(11,19)}. We will contact you once the trainer #{self.trainer.name} accept your request. Thank you for choosing easy appoinement! Have a great day!"
    message = @client.messages.create(
      :from => @twilio_number,
      :to => MY_KEY["phone"],
      :body => body,
    )
  end

end 


