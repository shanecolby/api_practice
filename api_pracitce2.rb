require "http"

p "What city would you like to know the weather of?"
user_input = gets.chomp

weather = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{user_input}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial").parse

p weather

temperature = weather['main']['temp']
description = weather['weather'][0]['description']

city = weather['name']


p "It is #{temperature} degrees and #{description} in #{city}"