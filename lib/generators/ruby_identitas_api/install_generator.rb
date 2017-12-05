module RubyIdentitasApi
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    def copy_initializer
      template "initializer.rb", "config/initializers/ruby_identitas_api.rb"
    end
  end
end