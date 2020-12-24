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

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  g5-rubocop-style:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. G5 Rubocop Style will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.
