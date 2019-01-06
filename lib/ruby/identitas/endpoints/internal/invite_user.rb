module Ruby
  module Identitas
    module Endpoints
      module Internal
        module InviteUser
          def user_invite(options = {}, headers = {})
            headers.merge!({AuthKey: @api_key})
            endpoint = build_endpoint("/v1/internal/users/invite")
            self.class.post(endpoint, query: options, headers: headers)
          end
        end
      end
    end
  end
end
