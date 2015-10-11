guard :rspec, cmd: 'bundle exec rspec' do
  watch('spec/rails_helper.rb')                       { "spec" }
  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  watch(%r{^app/serializers/(.+)\.rb$})               { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch(%r{^app/controllers/concerns/(.+)\.rb$})                   { |m| "spec/controllers/concerns/#{m[1]}_spec.rb" }
  watch(%r{^app/models/(.+)\.rb$})                    { |m| "spec/models/#{m[1]}_spec.rb"}
  watch(%r{^app/controllers/api/v1/(.+)\.rb$})               { |m| "spec/controllers/api/v1/#{m[1]}_spec.rb"}
  watch(%r{^spec/.+_spec\.rb$})
  # watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  # watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  # watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
end