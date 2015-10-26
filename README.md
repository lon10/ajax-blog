# AJAX Blog

## Installation:
1. `$ git clone git@github.com:lon10/ajax-blog.git` or `$ git clone https://github.com/lon10/ajax-blog.git`
2. Install ruby-2.2.3
3. `cp ./config/secrets.sample.yml ./config/secrets.yml`
   optional: generate and change keys with `rake secret`
4. `cp ./config/database.sample.yml ./config/database.yml` and configure it
5. `$ rake db:create && rake db:migrate`

## Run:
`rails s`

## Tests:
1. run all test : `$ bundle exec rspec`
2. coverage: `coverage/index.html`

## Code style:
1. `$ rubocop --format html -o rubocop.html`
2. `$ rubocop.html`
