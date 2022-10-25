reset:
	bin/rails db:reset
	bin/rails c

migrate_from_start:
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed
	bin/rails c

test_db:
	bin/rails db:test:prepare
	RAILS_ENV=test bin/rails db:seed

test:
	-rm log/test.log
	-bundle exec rspec
	bat log/test.log