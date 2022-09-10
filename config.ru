require_relative './config/environment'

use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
end

# Parse JSON from the request body into the params hash
# use Rack::JSONBodyParser
use Rack::PostBodyContentTypeParser

use OrganizerController
use AttendeesController
run EventController