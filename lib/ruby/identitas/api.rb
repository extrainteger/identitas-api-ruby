require "ruby/identitas/api/version"
require "ruby/identitas/configuration"
require "httparty"
require "ruby/identitas/main"

module Ruby
  module Identitas
    module Api
      extend Ruby::Identitas::Configuration

      define_setting :url, "https://symbolic.id"

    end
  end
end
