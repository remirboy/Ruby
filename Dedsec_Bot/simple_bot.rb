require 'telegram/bot'
require './joke_getter.rb'
require './number_guesser.rb'

token = '1131647430:AAGEIvHRJgE8xkMNNWOAWj7wjlbHoMTXnw8'
numberBot=Number_guesser.new
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|

	case message.text

	when '/hi'
		bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
	when '/joke'
		bot.api.send_message(chat_id: message.chat.id, text: "pososi")
	when '/jokes' 
		begin
		joke = Joke_getter.new;	
		bot.api.send_message(chat_id: message.chat.id, text: "#{joke.find_joke}") 
		end

	when '/number'
		begin
		bot.api.send_message(chat_id: message.chat.id, text: "Hey, #{message.from.first_name}. I have a number! Can you guess it?") 
		bot.api.send_message(chat_id: message.chat.id, text: "Give me a number") 
		bot.api.send_message(chat_id: message.chat.id, text: "You have 1 to try guess my number")
		end
	end	 

	case message
	
	when Telegram::Bot::Types::Message
		begin
		if message.text == 'touch'
			bot.api.send_message(chat_id: message.from.id, text: "Don't touch me!")
		elsif numberBot.is_started?
			bot.api.send_message(chat_id: message.from.id, text: "#{numberBot.number_predictiction(message.text.to_i)}")
		  end
	   end
	end 
 end
end