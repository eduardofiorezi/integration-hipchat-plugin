# Jumpup-hipchat

[![RubyGems][gem_version_badge]][ruby_gems]

This plugin adds hipchat notifications support to [Jumpup](https://github.com/Helabs/jumpup).
Its a small set of rake tasks that can be used along with Jupmup so it can
interact with hipchat during the integration process.

## Installation

Add to your Gemfile:

```ruby
group :development do
  gem 'jumpup-hipchat'
end
```

## Usage

1. Configure some environmental variables

```
HIPCHAT_TOKEN="Your token"
HIPCHAT_ROOM="Your room"
HIPCHAT_APP_NAME="Your project name" # used on announcement messages
```

2. Configure integration.rake

```
TODO
```

## Testing

Unfortunately we have no automated testing yet, so you can try running the provided
tasks from the project's root in order to check if things are working fine:

```sh
HIPCHAT_TOKEN="123456" \
HIPCHAT_ROOM="Company's room" \
HIPCHAT_APP_NAME="The next Facebook" \
bundle exec rake jumpup:hipchat:announce
```

[gem_version_badge]: https://badge.fury.io/rb/jumpup-hipchat.png
[ruby_gems]: http://rubygems.org/gems/jumpup-hipchat

------------------------

After bundling your app, you need to change your INTEGRATION\_TASKS adding your hipchat tasks like in the example below

      INTEGRATION_TASKS = %w(
      integration:start
      db:migrate
      integration:hipchat:announce
      spec
      integration:coverage_verify
      integration:hipchat:finish
      integration:finish)

## Tasks provided

This plugin provides the following tasks

  * jumpup:hipchat:announce
  * jumpup:hipchat:finish
