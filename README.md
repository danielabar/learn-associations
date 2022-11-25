# README

A Rails project to learn about the various `dependent` options that can be declared on ActiveRecord associations and how they impact model destroying/deletion and referential integrity. This is a companion project for this [blog post](https://danielabaron.me/blog/activerecord-dependent-options).

## First Time Setup

```
bin/rails g annotate:install
bin/rails db:create
bin/rails db:migrate
```

## Run Tests

Regular:

```
make test
```

Display isolated log output with bat:

```
make test_bat
```

Syntax highlighted log output copied to clipboard for blog:

```
make test_blog
```

## Experiment with Migration(s)

If a migration is modified (would never do for a real application but this is an experiment):

```
make migrate_from_start
```