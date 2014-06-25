# ueditor.rails

Baidu UEditor integration for rails 4.1.

Usages
----

In your Gemfile's default group:

```ruby
gem "ueditor.rails", "~> 0.0.4"

# or

gem "ueditor.rails", :github => "mindpin/ueditor.rails", :tag => "0.0.4"
```

After bundling, run the following:

```bash
$ rails g ueditor:install
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

# v0.0.4

- 为了精简的目的，重新打包了 ueditor，去除了用不到的一些文件

- 采用非侵入的方式来进行参数配置（config.mindpin.default.coffee），这样 ueditor 版本升级可时直接替换原文件

- 为 mindpin 单独编写了样式 (app/assets/stylesheets/themes/mindpin)

- 实现配置中的 filterTxtRules 配置项来规定了文本粘贴时的标签过滤算法，相比于 retainOnlyLabelPasted: true 这样做的好处是能够在过滤时规定保留哪些指定标签和哪些指定属性（如文字下划线样式。）具体参见：https://github.com/mindpin/tech-exp/issues/39

# 备注
- lib 下的 simple_form 钩子会在 html 正文内添加 `<script>` 侵入性较强。集成时暂时不会使用。目前集成时采用手动调用 ueditor API 的方式来加载编辑框。
