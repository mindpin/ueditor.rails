module UEditor
  module Helpers
    module JsHelper
      def uejs(id)
        javascript_tag <<-END.gsub(/^ {8}/, "")
          function loadUEditor() {UE.getEditor('#{id}');}

          if (window.UE) {
            loadUEditor()
          } else {
            document.addEventListener('DOMContentLoaded', loadUEditor)
          }
        END

      end
    end
  end
end
