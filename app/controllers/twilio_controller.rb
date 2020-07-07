require 'twilio-ruby'

account_sid = "AC908f64e6f1f482313407e1b8c8a9a940"
auth_token = "3a1a977ad51967e0277001b281329f4e"   

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "Hello from Easy Appointment",
    to: "+19178537076",    
    from: "+12058463430")  
puts message.sid