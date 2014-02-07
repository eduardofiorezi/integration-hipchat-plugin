require 'hipchat'

namespace :jumpup do
  # REFACTOR: Extract a separate class with duplicated logic
  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room"
    task :announce do
      user = `git config --get user.name`.strip
      msg  = "User #{user} started to integrate project #{ENV['HIPCHAT_APP_NAME']}"

      client = HipChat::Client.new(ENV['HIPCHAT_TOKEN'])
      client[ENV['HIPCHAT_ROOM']].send(user, msg, notify: true)
    end

    task :finish do
      user = `git config --get user.name`.strip
      msg  = "User #{user} finished to integrate project #{ENV['HIPCHAT_APP_NAME']}. Well done pro!"

      client = HipChat::Client.new(ENV['HIPCHAT_TOKEN'])
      client[ENV['HIPCHAT_ROOM']].send(user, msg, notify: true)
    end
  end
end
