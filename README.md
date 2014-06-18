# ueditor.rails

Baidu UEditor integration for rails 4.1.

Usages
----

In your Gemfile's default group:

```ruby
gem "ueditor.rails", "~> 0.0.2"

# or

gem "ueditor.rails", :github => "mindpin/ueditor.rails", :tag => "0.0.2"
```

In `app/assets/javascripts/application.js`:

```ruby
//= require ueditor
```

Form helpers:
```erb
<%= form_for @model do |f| %>
....
  <%= f.uetext_area :description %>
....
  <%= uetext_area_tag :another_field, @model.some_Field %>
....
<% end %>
```

SimpleForm:

```erb
<%= simple_form_for @model do |f| %>
....
  <%= f.input :description, :as => :ueditor %>
....
<% end %>
```

