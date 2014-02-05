require 'hipchat'

namespace :integration do

  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room"
    task :announce do
      user = `whoami`
      config_file = Rails.root.join 'config', 'hipchat.yml'
      options     = YAML.load_file(config_file).symbolize_keys

      `MESSAGE="User #{user} started to integrate project #{options[:appname]}" bundle exec rake hipchat:send`
    end

    task :finish do
      user = `whoami`
      config_file = Rails.root.join 'config', 'hipchat.yml'
      options     = YAML.load_file(config_file).symbolize_keys

      `MESSAGE="User #{user} finished to integrate project #{options[:appname]}. Well done pro!" bundle exec rake hipchat:send`
    end

  end

end
