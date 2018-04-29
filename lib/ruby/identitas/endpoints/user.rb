module Ruby
  module Identitas
    module Endpoints
      module User
        def create_user(options = {})
          options.merge!({access_token: @token})
          endpoint = build_endpoint("/v1/users")
          self.class.post(endpoint, query: options)
        end
      end
    end
  end
end
