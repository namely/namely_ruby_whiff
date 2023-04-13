# Namely Ruby Whiff

Namely Ruby Whiff is a Ruby gem that contains common Rubocop configurations to use in your Ruby projects. New tools will be added over time, the next being ruby critic.

## Installation

To install Namely Ruby Whiff, simply add it to your Gemfile:

```ruby
gem 'namely-ruby-whiff'
```

And then run `bundle install`.

Next, replace your project's `.rubocop.yml` file with the following, followed by any rules or configurations you want to add or override:

```yaml
inherit_gem:
  namely_ruby_whiff: config/rubocop-rails.yml
```

For non-Rails projects, use the following file path instead: `config/rubocop-vanilla.yml`.

## Usage

Once you've installed the gem, you can run Rubocop with the following command to make sure it's finding the configs from the gem:

```bash
bundle exec rubocop
```

The gem also includes `rubocop-changes` a tool to apply Rubocop to only the files that have changes in your branch.

```bash
bundle exec rubocop-changes
```
