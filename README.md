# :nose: Namely Ruby Whiff

Namely Ruby Whiff is a Ruby gem that contains common Rubocop configurations to use in your Ruby projects. New tools will be added over time, the next being ruby critic.

## Installation

To install Namely Ruby Whiff, simply add it to your Gemfile:

```ruby
  gem 'namely_ruby_whiff', git: 'https://github.com/namely/namely_ruby_whiff.git', branch: 'master', require: false
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

## Caveats

When adding an additional file to a rule for exclusion, the excluded files from the base config have to be added locally. For example:

```
# in the base config from this gem
Lint/RescueException:
  Exclude:
    - 'app/lib/koala/evaluator.rb'


# in your local project's config

## this will no longer exclude the koala evaluator
Lint/RescueException:
  Exclude:
    - 'app/my_weird_file.rb'

## this will work as intended
Lint/RescueException:
  Exclude:
    - 'app/lib/koala/evaluator.rb'
    - 'app/my_weird_file.rb'
```
