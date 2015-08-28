require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

map '/artists' do
  run ArtistsController
end

map '/genres' do
  run GenresController
end

map '/songs' do
  run SongsController
end

run ApplicationController
