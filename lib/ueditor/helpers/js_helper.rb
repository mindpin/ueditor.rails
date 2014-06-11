module UEditor
  module Helpers
    module JsHelper
      def uejs(id)
        javascript_tag <<-END.gsub(/^ {8}/, "")
          document.addEventListener("DOMContentLoaded", function(event) {
            UE.getEditor(\"#{id}\");
          });
        END
      end
    end
  end
end
