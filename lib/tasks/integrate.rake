require 'hipchat'

namespace :jumpup do
  # REFACTOR: Extract a separate class with duplicated logic, it might also
  #           be a goog idea to use the hipchat API directly
  #           See: https://github.com/hipchat/hipchat-rb#api-v2
  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room"
    task :announce do
      user = `git config --get user.name`.strip

      opts = {
        'HIPCHAT_USER' => user,
        'NOTIFY'       => '1',
        'MESSAGE'      => "User #{user} started to integrate project #{ENV['HIPCHAT_APP_NAME']}",
        'ROOM'         => ENV['HIPCHAT_ROOM'],
        'TOKEN'        => ENV['HIPCHAT_TOKEN']
      }.reject { |k, v| v.blank? }.
        map{|k, v| "#{k}='#{v}'" }.
        join(" ")

      `#{opts} bundle exec rake hipchat:send`
    end

    task :finish do
      user = `git config --get user.name`.strip

      opts = {
        'HIPCHAT_USER' => user,
        'NOTIFY'       => '1',
        'MESSAGE'      => "User #{user} started to integrate project #{ENV['HIPCHAT_APP_NAME']}",
        'ROOM'         => ENV['HIPCHAT_ROOM'],
        'TOKEN'        => ENV['HIPCHAT_TOKEN']
      }.reject { |k, v| v.blank? }.
        map{|k, v| "#{k}='#{v}'" }.
        join(" ")

      `#{opts} bundle exec rake hipchat:send`
    end
  end
end
