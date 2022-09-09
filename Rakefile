require_relative './config/environment'
require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Start the server"
task :server do  
  if ActiveRecord::Base.connection.migration_context.needs_migration?
    puts "Migrations are pending. Make sure to run `rake db:migrate` first."
    return
  end
  exec "bundle exec rerun -b 'rackup config.ru'"
end

desc "Runs a Pry console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  Pry.start
end

# task :start_server do
#     exec "rerun -b 'rackup config.ru'"
# end

# task :seed_data do
#     require_relative './db/seed_data'
# end