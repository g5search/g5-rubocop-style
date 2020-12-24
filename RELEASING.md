# Releasing

1. Update version.rb file accordingly.
1. Tag the release: `git tag vVERSION`
1. Push changes: `git push --tags`
1. Update the release notes on GitHub.com
1. Build and publish:

```bash
bundle exec rake build
fury push --as=g5dev pkg/g5-rubocop-style-X.XX.XX.gem
```
