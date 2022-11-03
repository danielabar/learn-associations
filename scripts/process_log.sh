#!/usr/bin/env bash

# https://superuser.com/questions/380772/removing-ansi-color-codes-from-text-stream
# removes all ansi escape sequences
# sed -i '.bak' 's/\x1b\[[0-9;]*m/SPECIAL/g' log/test.log

# https://github.com/rails/rails/blob/5-0-stable/activesupport/lib/active_support/log_subscriber.rb
# clear
sed -i '.bak' 's/\x1b\[0m/<\/span>/g' log/test.log
# bold does not have its own clear so just remove it otherwise HTML spans will be unbalanced
sed -i '.bak' 's/\x1b\[1m//g' log/test.log
# black
sed -i '.bak' 's/\x1b\[30m/<span class="rails-log-red">/g' log/test.log
# red
sed -i '.bak' 's/\x1b\[31m/<span class="rails-log-red">/g' log/test.log
# green
sed -i '.bak' 's/\x1b\[32m/<span class="rails-log-green">/g' log/test.log
# yellow
sed -i '.bak' 's/\x1b\[33m/<span class="rails-log-yellow">/g' log/test.log
# blue
sed -i '.bak' 's/\x1b\[34m/<span class="rails-log-blue">/g' log/test.log
# magenta
sed -i '.bak' 's/\x1b\[35m/<span class="rails-log-magenta">/g' log/test.log
# cyan
sed -i '.bak' 's/\x1b\[36m/<span class="rails-log-cyan">/g' log/test.log
# white
sed -i '.bak' 's/\x1b\[37m/<span class="rails-log-white">/g' log/test.log