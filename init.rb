require 'rubygems'
require 'active_support'
require 'shoulda'
require 'shoulda/active_record'
require 'shoulda/controller'
require 'shoulda/controller/routing'
require 'shoulda/action_mailer'

if defined?(RAILS_ROOT)
  # load in the 3rd party macros from vendorized plugins and gems
  Dir[File.join(RAILS_ROOT, "vendor", "{plugins,gems}", "*", "shoulda_macros", "*.rb")].each do |macro_file_path|
    require macro_file_path
  end

  # load in the local application specific macros
  Dir[File.join(RAILS_ROOT, "test", "shoulda_macros", "*.rb")].each do |macro_file_path|
    require macro_file_path
  end
end
