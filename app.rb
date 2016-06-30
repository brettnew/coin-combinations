require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  @result = params.fetch('change')
  @thing = params.fetch('change').to_i().coin_combo()
  @quarters = @thing[0]
  @dimes = @thing[1]
  @nickels = @thing[2]
  @pennies = @thing[3]
  erb(:coin_combo)

end
