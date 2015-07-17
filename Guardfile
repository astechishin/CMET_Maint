# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'cucumber' do
#   watch(%r{^features/.+\.feature$})
#   watch(%r{^features/support/.+$})          { 'features' }
#   watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
# end
#

guard :rspec, cmd: 'bundle exec spring rspec', all_after_pass: true do
  watch(%r{^(spec/.+_spec\.rb)$}) { |m| "#{m[1]}" }
  watch('spec/spec_helper.rb')  { 'spec' }
  watch('spec/rails_helper.rb')  { 'spec' }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }

  watch(%r{^app/deserializers/value_(.+)_deserializer.rb}) { |m| 'spec/deserializers/observation_deserializer_spec.rb' }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$}) do |m|
    ["spec/routing/#{m[1]}_routing_spec.rb",
     "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
     "spec/acceptance/#{m[1]}_spec.rb"]
  end
  watch(%r{^spec/serializers/support/([^-]+)-(.+)\.json$}) { |m| "spec/serializers/#{m[1]}_serializer_spec.rb" }
  watch(%r{^spec/support/(.+)\.rb$})                  { 'spec' }
  watch(%r{^spec/support-files/(.+)\.rb$})            { 'spec' }
  watch(%r{^spec/support-files/ehmbr-json/(.+)\.json$}) { |m| "spec/requests/#{m[1]}s_api_spec.rb" }
  watch('config/routes.rb')                           { 'spec/routing' }
  watch('app/controllers/application_controller.rb')  { 'spec/controllers' }
  watch('app/lib/formatters.rb')                { 'spec/lib/formatters' }
  watch(%r{^app/lib/ehmbr/(.+)\.rb$})                 { 'spec/lib/deserializers' }
  watch(%r{^app/lib/ehmbr/types/(type|base)_deserializer\.rb$}) { 'spec/lib/ehmbr/types' }
  watch(%r{^app/lib/ehmbr/types/(.+)\.rb$})           do |m|
    [ "spec/lib/types/#{m[1]}_spec.rb",
      'spec/lib/types/type_deserializer_use_spec.rb' ]
  end

  # Capybara features specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$})     { |m| "spec/features/#{m[1]}_spec.rb" }

  # Turnip features and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
end

