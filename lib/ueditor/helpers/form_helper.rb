module UEditor
  module Helpers
    module FormHelper
      extend ActiveSupport::Concern
      include JsHelper

      def uetext_area(object_name, method, options = {})
        id = options[:id] || options[:id] = SecureRandom.hex
        text_area(object_name, method, options) + uejs(id)
      end
    end
  end
end
