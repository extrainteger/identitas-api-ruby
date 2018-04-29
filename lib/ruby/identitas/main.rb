require "ruby/identitas/endpoints/me"
require "ruby/identitas/endpoints/token_status"
require "ruby/identitas/endpoints/password"
require "ruby/identitas/endpoints/user"

module Ruby
  module Identitas
    class Main
      include HTTParty
      include Ruby::Identitas::Endpoints::Me
      include Ruby::Identitas::Endpoints::TokenStatus
      include Ruby::Identitas::Endpoints::Password
      include Ruby::Identitas::Endpoints::User

      def initialize(token)
        @base_uri = Ruby::Identitas::Api.url
        @token = token
      end

      private
        def build_endpoint(u)
          @base_uri + u
        end

    end
  end
end