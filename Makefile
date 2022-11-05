reset:
	bin/rails db:reset

migrate_from_start:
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed

test_db:
	bin/rails db:test:prepare
	RAILS_ENV=test bin/rails db:seed

test:
	-rm log/test.log
	-bundle exec rspec
	./scripts/process_log.sh
	cat log/test.log | pbcopy
	echo "test log copied to clipboard"

test_orig:
	-rm log/test.log
	-bundle exec rspec
	bat -p --paging=never log/test.log