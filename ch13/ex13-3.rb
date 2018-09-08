require 'sinatra'
get '/' do
  "Hello, world!"
end

get '/bye' do
  "Leaving already?"
end

get '/time' do
  Time.now.to_s
end

get '/add/:a/:b' do |a, b|
  (a.to_i + b.to_i).to_s
end
