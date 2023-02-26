require 'sinatra'

class App < Sinatra::Base

  get '/' do
    '<h3>Okay, Gotten</h3>'
  end

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/car' do
    '<h3>Vroom! Vroom! </h3>'
  end

  set :default_content_type, 'application/json'

  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end
  
end

run App
