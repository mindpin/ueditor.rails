require "rails"

module Ueditor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Installs UEditor asset files."

      source_root File.expand_path("../../../../../public", __FILE__)

      def copy_assets
        say_status("copying", "UEditor assets", :green)
        directory "ueditor", "public/ueditor"
      end
    end
  end
end
