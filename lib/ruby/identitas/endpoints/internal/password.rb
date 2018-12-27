module Ruby
  module Identitas
    module Endpoints
      module Internal
        module Password
          def user_password(options = {}, headers = {})
            headers.merge!({AuthKey: @api_key})
            endpoint = build_endpoint("/v1/internal/users/password")
            self.class.post(endpoint, query: options, headers: headers)
          end
        end
      end
    end
  end
end
