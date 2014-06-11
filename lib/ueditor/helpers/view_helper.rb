module UEditor
  module Helpers
    module ViewHelper
      extend ActiveSupport::Concern
      include JsHelper

      def uetext_area_tag(name, content = nil, options = {})
        id = options[:id] || options[:id] = SecureRandom.hex
        text_area_tag(name, content, options) + uejs(id)
      end
    end
  end
end
