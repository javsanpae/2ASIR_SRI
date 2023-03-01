import os
import telebot

BOT_TOKEN = os.environ.get('BOT_TOKEN')
bot = telebot.TeleBot(BOT_TOKEN)

@bot.message_handler(commands=['start', 'hola'])
def enviar_bienvenida(mensaje):
	bot.reply_to(mensaje, "Hola, soy jsanchez_bot.")
	
@bot.message_handler(func=lambda msg: True)
def enviar_echo(mensaje):
	bot.reply_to(mensaje, mensaje.text)
	
bot.infinity_polling()
