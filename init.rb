require 'redmine'

require 'post_script_patch'
require 'dispatcher'

Dispatcher.to_prepare :redmine_post_script do
  Redmine::Activity.default_event_types.each do |event|
    Redmine::Activity.providers[event].each do |clazz|
      clazz.constantize.send(:include, PostScriptPatch)
    end
  end
end

Redmine::Plugin.register :redmine_post_script do
  name 'Redmine Post Script plugin'
  author 'suer'
  description 'post script plugin'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://d.hatena.ne.jp/suer'
end
