module UEditor
  autoload :VERSION,  "ueditor/version"

  module Hooks
    autoload :SimpleForm, "ueditor/hooks/simple_form"
  end

  require "ueditor/engine"

  module Helpers
    autoload :JsHelper,    "ueditor/helpers/js_helper"
    autoload :ViewHelper,  "ueditor/helpers/view_helper"
    autoload :FormHelper,  "ueditor/helpers/form_helper"
    autoload :FormBuilder, "ueditor/helpers/form_builder"
  end
end
