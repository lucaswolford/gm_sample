# README

Ruby 2.5.1

Rails 5.2.0

Postgres Database

Requirements:

1. A lead form consisting of the following fields: name, email, phone, and postal code. This form should take the submitted data and store it to the database. The phone number should be stored in its own table, separate from the rest of the submitted information.

2. An admin backend behind a login form, which lists all leads that have been submitted. It should also allow an admin to delete submissions from the database.

Set up Local Environment:

```
# install gems
bundle install
```

```
# create and migrate the database
rails db:create
rails db:migrate
```

```
# create admin user
User.create(email: 'admin@admin.com', 
  confirmed: true,
  approved: true,
  active: true,
  password: 'admin123',
  password_confirmation: 'admin123')
```