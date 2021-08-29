#!/bin/bash
set -e

pwd

# Create the Rails production DB on first run
bundle exec rake db:create

# Make sure we are using the most up to date
# database schema
bundle exec rake db:migrate

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
