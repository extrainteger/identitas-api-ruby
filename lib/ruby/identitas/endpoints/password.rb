module Ruby
  module Identitas
    module Endpoints
      module Password
        def password(options = {})
          options.merge!({access_token: @token})
          endpoint = build_endpoint("/v1/me/password")
          self.class.post(endpoint, query: options)
        end
      end
    end
  end
end
