# G5 Rubocop Style

G5 shared rubocop style configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'g5-rubocop-style'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'g5-rubocop-style'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with one of the following directives:

```yaml
inherit_gem:
  g5-rubocop-style:
    - default.yml
```
Or, if your repo requires codeclimate read the next section

Now, run:

```bash
$ bundle exec rubocop --auto-correct  // Auto-correct offenses (only when safe)
```
and 
```bash
$ bundle exec rubocop --auto-gen-config // Generate a configuration file acting as a TODO list.
```

Also, consider integrating rubocop with your editor or to a post commit git hook.
`https://docs.rubocop.org/rubocop/integration_with_other_tools.html`

You do not need to include rubocop directly in your application's dependencies. G5 Rubocop Style will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.

### CodeClimate
If you need to use CodeClimate to help test your code you will need to use an http/https url instead of a gem, so use this snippet as your .rubocop.yml.

```yaml
## .rubocop.yml

inherit_from:
  - https://raw.githubusercontent.com/g5search/g5-rubocop-style/v1.0.1/default.yml
```

For codeclimate to download the file you need to add these lines to the `.codeclimate.yml` file on the root of your project

```yaml
# .codeclimate.yml

version: "2"

prepare:
  fetch:
    - url: https://raw.githubusercontent.com/g5search/g5-rubocop-style/v1.0.1/default.yml
      path: .rubocop-https---raw-githubusercontent-com-g5search-g5-rubocop-style-v1-0-1-default-yml

plugins:
  rubocop:
    enabled: true
    channel: "rubocop-0-90"
```

Because of this rubocop will download a `.rubocop-https---raw-githubusercontent-com-g5search-g5-rubocop-style-v1-0-0-default-yml` to your project, so add it to your `.gitignore` file so it does not get deployed

```
## .gitignore

.rubocop-http*
```

As G5 releases new versions of this gem you will need to change the `v1.0.1` to the current version.

#### inherit_from order

Rubocop takes into account the order of the inherit_from keys, so if you are adding a `.rubocop_todo.yml` it should go after the `https://raw.githu....` like this:

```yaml
## .rubocop.yml

inherit_from:
  - https://raw.githubusercontent.com/g5search/g5-rubocop-style/v1.0.1/default.yml
  - .rubocop_todo.yml
```
