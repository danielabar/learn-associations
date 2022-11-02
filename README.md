# README

A Rails project to learn about the various `dependent` options that can be declared on ActiveRecord associations and how they impact model destroying/deletion and referential integrity.

```
bin/rails g annotate:install
bin/rails db:create
bin/rails db:migrate
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Experiment

https://linuxize.com/post/how-to-use-sed-to-find-and-replace-string-in-files/
https://superuser.com/questions/380772/removing-ansi-color-codes-from-text-stream
https://github.com/rails/rails/blob/5-0-stable/activesupport/lib/active_support/log_subscriber.rb


```bash
grep "\e\[31m" log/development.log
sed -i 's/SEARCH_REGEX/REPLACEMENT/g' INPUTFILE
sed -i '.bak' 's/\e\[31m/<span class="rails-log-red">/g' log/test.log
```