require 'rails/generators/base'

module GrapeBunch
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_root_api
        create_file "app/api/api_v1/api.rb", <<-ROOT_API
module ApiV1
  class API < Grape::API
    prefix 'api'
    version 'v1'
    format :json

    add_swagger_documentation(
      api_version: 'v1',
      hide_documentation_path: true,
      hide_format: true,
      info: {
        title: 'API documentation'
      }
    )
  end
end
        ROOT_API
      end

      def mount_routes
        inject_into_file 'config/routes.rb', after: "Rails.application.routes.draw do\n" do <<-ROUTES
  mount ApiV1::API => '/'
  mount GrapeSwaggerRails::Engine => '/swagger'
        ROUTES
        end
      end

      def swagger_initializer
        create_file "config/initializers/swagger.rb", <<-SWAGGER_INIT
GrapeSwaggerRails.options.url      = 'api/v1/swagger_doc'
GrapeSwaggerRails.options.app_name = 'GrapeSwagger'
GrapeSwaggerRails.options.app_url  = '/'
        SWAGGER_INIT
      end
    end
  end
end
