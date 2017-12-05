require "ruby/identitas/endpoints/me"

module Ruby
  module Identitas
    class Main
      include HTTParty
      include Ruby::Identitas::Endpoints::Me

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