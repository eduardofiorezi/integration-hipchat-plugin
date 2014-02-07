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

1. Configure environmental variables

```
TODO
```

2. Configure integration.rake

```
TODO
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

Don't forget also to configure Rails.root/config/hipchat.yml with the following variables:

     token: "<your token>"
     room: "Your room"
     user: "Your name" # Default to `whoami`
     notify: true # Defaults to false
     appname: "Your project name" # used to create announce messages

## Tasks provided

This plugin provides the following tasks

  * integration:hipchat:announce
  * integration:hipchat:finish
