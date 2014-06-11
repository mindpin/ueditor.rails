module UEditor
  module Helpers
    module FormBuilder
      extend ActiveSupport::Concern

      def uetext_area(method, options = {})
        @template.uetext_area(@object_name, method, objectify_options(options))
      end
    end
  end
end
