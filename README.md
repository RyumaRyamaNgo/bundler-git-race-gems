# bundler-git-race-gems

Minimal public monorepo used to reproduce a Bundler bug: parallel `bundle install`
races on git operations when several gems point at the **same git repository but
resolve to different revisions**.

It contains five tiny, independent gems, each in its own subdirectory with its
own gemspec:

- `race_gem_a/`
- `race_gem_b/`
- `race_gem_c/`
- `race_gem_d/`
- `race_gem_e/`

Each gem was added in its own commit and tagged on that commit, so every tag
points at a **different revision**:

- `race_gem_a-v1.0.0`
- `race_gem_b-v1.0.0`
- `race_gem_c-v1.0.0`
- `race_gem_d-v1.0.0`
- `race_gem_e-v1.0.0`

A `Gemfile` that pins each gem to its own tag makes Bundler resolve five
different revisions out of a single shared git cache directory.
