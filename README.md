# Jekyll-Bidi

This project is a Jekyll plugin for adding bidirectional text support.

## Installation

Simply add `jekyll-bidi` to your `gemfile`
and the `_config.yml` under the `plugins` entry.

## Usage

Use the the `bidify` filter like:

```html
<article>
    {{ content | bidify }}
</article>
```

As a complementary step, CSS styles should use
[logical properties](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_logical_properties_and_values).

## Development

In an environment with Ruby 2.7 (or higher) install dependencies using `bundle install`.
Keep in mind to add reasonable tests for any changes you make.

Any new dependencies should be included in the project as follows:
- Runtime dependencies should be added to `jekyll-bidi.gemspec` file.
- Development dependencies should be added to `Gemfile`.

Before proposing any change,
run `bundle exec rake` to ensure no test or linting rule is broken.

## License

This project is released under an *LGPL 3.0 or later* license.
