reset:
	bin/rails db:reset
	bin/rails c

migrate_from_start:
	bin/rails db:drop
	bin/rails db:create
	bin/rails db:migrate
	bin/rails db:seed
	bin/rails c