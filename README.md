# Pet Adoption System 1.0

Please install and use Ruby 2.2

## To install

    $ bundle install
    $ bin/rake db:setup
    $ bin/rails server

## Orientation

There are Animals and Employees in the system today.

* Animals: `/animals`
* Employees: `/employees`

## Running Tests

    $ bundle exec rspec spec

## Seeing Emails

When emails are sent from the system, they are written to `development.log`. To see them, tail the log:

    $ tail -f log/development.log

## Submission
We will review your code for consistency, structure, reliability, and team-friendliness.

To submit, zip or tar this project directory, and then email to twieczorek@localytics.com
