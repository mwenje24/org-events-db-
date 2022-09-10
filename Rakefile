require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Start the server"
task :server do  
  if ActiveRecord::Base.connection.migration_context.needs_migration?
    puts "Migrations are pending. Make sure to run `rake db:migrate` first."
    return
  end
  ENV["PORT"] ||= "9292"
  rackup = "rackup -p #{ENV['PORT']}"

  # rerun allows auto-reloading of server when files are updated
  # -b runs in the background (include it or binding.pry won't work)
  exec "bundle exec rerun -b '#{rackup}'"
end

desc "Runs a Pry console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  Pry.start
end

# require 'rdoc/task'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ''

#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "rack-cors #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end

# task :start_server do
#     exec "rerun -b 'rackup config.ru'"
# end

# task :seed_data do
#     require_relative './db/seed_data'
# end