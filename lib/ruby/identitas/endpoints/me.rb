module Ruby
  module Identitas
    module Endpoints
      module Me
        def me(options = {})
          options.merge!({access_token: @token})
          endpoint = build_endpoint("/v1/me")
          self.class.get(endpoint, query: options)
        end
      end
    end
  end
end
