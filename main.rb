     
require 'sinatra'
require 'pg'

if development? # only run the code in development
  require 'sinatra/reloader'
  require 'pry'
end



def run_sql(sql)
  conn = PG.connect(ENV['DATABASE_URL'] || {dbname: 'planets'})
  results = conn.exec(sql)
  conn.close
  return results
end

get '/' do

  sql = "select * from planets;"
  @planets = run_sql(sql)

  erb :index
end

get '/planets/new' do
  
  erb :new_planets
end

get '/planets/:id' do
  
  sql = "select * from planets where id = #{ params[:id] };"
  @planets = run_sql(sql)

  erb :details
end

get '/planets/:id/edit' do
  
  sql = "select * from planets where id = #{ params[:id] };"

  @planet = run_sql(sql)[0] 


  erb :edit_planets
end

patch '/planets/:id' do

  sql = "update planets set name = '#{ params[:name] }', 
  diameter = '#{ params[:diameter] }',
  distance = '#{ params[:distance] }',
  mass = '#{ params[:mass] }',
  moon_count = '#{ params[:moon_count] }',
  image_url = '#{ params[:image_url] }'
  where id = #{ params[:id] };"

  run_sql(sql)

  redirect "/planets/#{ params[:id] }"
end

post '/planets' do 

  sql = "insert into planets (name, diameter, distance, mass, moon_count, image_url) values ('#{ params[:name] }', '#{ params[:diameter] }','#{ params[:distance] }', '#{ params[:mass] }', '#{ params[:moon_count] }', '#{ params[:image_url] }');"

  run_sql(sql)

  redirect '/'
end

delete '/planets/:id' do

  sql = "delete from planets where id = #{ params[:id] };"
 
  run_sql(sql) 

  redirect '/'
end