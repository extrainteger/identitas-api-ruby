require "ruby/identitas/endpoints/me"
require "ruby/identitas/endpoints/token_status"
require "ruby/identitas/endpoints/password"
require "ruby/identitas/endpoints/user"
require "ruby/identitas/endpoints/internal/password"

module Ruby
  module Identitas
    class Main
      include HTTParty
      include Ruby::Identitas::Endpoints::Me
      include Ruby::Identitas::Endpoints::TokenStatus
      include Ruby::Identitas::Endpoints::Password
      include Ruby::Identitas::Endpoints::User
      include Ruby::Identitas::Endpoints::Internal::Password

      def initialize(token, api_key = "")
        @base_uri = Ruby::Identitas::Api.url
        @token = token
        @api_key = api_key
      end

      private
        def build_endpoint(u)
          @base_uri + u
        end

    end
  end
end