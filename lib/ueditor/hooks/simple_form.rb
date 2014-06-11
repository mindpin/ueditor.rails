require "simple_form"

module UEditor::Hooks::SimpleForm
  extend ActiveSupport::Concern

  included do
    ::SimpleForm::FormBuilder.map_type :ueditor, :to => UEditorInput
  end

  class UEditorInput < ::SimpleForm::Inputs::Base
    def input(wrapper_options = nil)
      @builder.uetext_area(attribute_name, input_html_options)
    end
  end
end

