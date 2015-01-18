# Drill 1

### Positives

* Waited to `migrate` and checked `db/migrate` files for errors.
* Waited to setup associations and generated `foriegn_key` migration `user_id`
* Started on `auth` setup first and completed mostly everything in one swoop: `User` model and `SessionsHelper`.
* Used partials to relieve headaches with larger views
* Remembered to `login` users after `sign_up` and `login`.
* Utilized `before_action` in `articles` to avoid code repetition and authorize users.

### Pitfalls

* Forgot to add `bcrypt` to `Gemfile`
* Forgot to setup associations until app was nearly complete
* Had typo in `before_action :logged_in?` had `logged_in`
* Generated app using `rails new blogy_1` instead of `rails new blogy_1 -T -d postgresql` 
* Forgot to rake `db:create`
* Forgot to add `placeholders` to the sign_up form.
* Forgot to `redirect` after `articles#create` and `articles#update`
* Forgot about certain `instance variables` be passed to users `show.html.erb`, i.e. `@articles`.
* Forgot to add `logout`.
* Forgot about simple `nav` in `application_controller`.
* Forgot about adding simple `model` validations