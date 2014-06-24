require "rails"

module UEditor
  class Engine < ::Rails::Engine
    initializer "ueditor.precompile", :group => :all do |app|
      app.config.assets.precompile << "ueditor.js"
    end

    initializer "ueditor.helpers" do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, UEditor::Helpers::ViewHelper
        ActionView::Base.send :include, UEditor::Helpers::FormHelper
        ActionView::Helpers::FormBuilder.send :include, UEditor::Helpers::FormBuilder
      end
    end

    initializer "ueditor.hooks" do
      if Object.const_defined?("SimpleForm")
        SimpleForm.send :include, Hooks::SimpleForm
      end
    end

    initializer "ueditor.assets" do |app|
      app.middleware.insert_before ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
    end
  end
end
