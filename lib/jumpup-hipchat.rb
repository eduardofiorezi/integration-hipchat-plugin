require "jumpup-hipchat/version"

gem_path = Gem::Specification.find_by_name('jumpup-hipchat').full_gem_path
Dir["#{gem_path}/lib/tasks/*.rake"].each { |ext| load ext } if defined?(Rake)
