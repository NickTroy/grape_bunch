require 'rails/generators/base'

module GrapeBunch
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_initializer_file
        create_file "config/initializers/initializer.rb", "# Add initialization content here"
      end
    end
  end
end
