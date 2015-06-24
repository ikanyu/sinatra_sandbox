get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  # Look in app/views/index.erb
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  # this returns {"post"=>{"description"=>"ads"}}
  # post[description]: use post hash and description as key
  erb :post_cool_url
end

# get and post function is the same but main difference is get will append the params to url and post does not
# forms usually use POST method because it will not show the sensitive information at the url
# sequence of form GET -> POST -> GET
# erb is extended ruby: combination of ruby and html