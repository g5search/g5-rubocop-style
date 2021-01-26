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
Or, if your repo requires codeclimate you can uses the following instead: 

```yaml
inherit_from:
  - https://raw.githubusercontent.com/g5search/g5-rubocop-style/v1.0.1/default.yml
```

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
