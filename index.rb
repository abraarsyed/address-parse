# Code is facing issue
# https://github.com/dialogflow/dialogflow-ruby-client/issues/23

client = ApiAiRuby::Client.new(
    :client_access_token => 'b850107a2c304e4d895cb25bf8dc69e6'
)

puts 'Enter the mail subject \n'
mail_subject = gets.chomp
puts 'Enter the mail body'
mail_body = gets.chomp
mail = mail_subject + ' ' + mail_body
response = client.text_request mail
# Need to parse reponse, to get into result > fulfillment > speech
puts response