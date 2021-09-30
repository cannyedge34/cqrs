We implement command bus/command handler to have the controller logic decoupled.

We gain performance because we can have sync/async command bus.

## Run rack server

    rackup

## Tests

    COVERAGE=true bundle exec rspec

## Lints

    bundle exec rubocop

