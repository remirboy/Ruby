Telegram.bots_config = {
  default: DEFAULT_BOT_TOKEN,
  chat: {token: '1131647430:AAGEIvHRJgE8xkMNNWOAWj7wjlbHoMTXnw8', username: 'chatbot'},
}

Telegram.bot.get_updates
Telegram.bot == Telegram.bots[:default] # true
Telegram.bots[:chat].send_message(...)
