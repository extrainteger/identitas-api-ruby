module Ruby
  module Identitas
    module Endpoints
      module TokenStatus
        def token_status(options = {})
          options.merge!({access_token: @token})
          endpoint = build_endpoint("/v1/token_status")
          self.class.get(endpoint, query: options)
        end
      end
    end
  end
end
