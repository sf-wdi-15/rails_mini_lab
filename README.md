# Rails Review
## Weekend Minilab

### Part 1: Time Trials

| Objective |
| :--- |
| Try to complete the following functionality in `3` hours maximum with a target time of `2` hours. Being able to do it once in under `3` hours is not enough. Everyone should do this at least twice to establish some kind of average work time. |

* Want the lastest changes for you fork?
  * `git remote add upstream https://github.com/sf-wdi-15/rails_mini_lab.git`
  * `git fetch upstream`
  * Take a look at the remote branches
    * `git branch -r` "The ones with upstream are the ones to pay attention to."

NOTE: Please use a timer to time yourself when working on part 1. You'll be doing part 1 at least twice! Please have your two `best` times recorded and ready to share on Monday, and have notes of questions that came up when doing this process.

Resources:

* [rails generate](http://guides.rubyonrails.org/command_line.html#rails-generate)
* [rails destroy](http://guides.rubyonrails.org/command_line.html#rails-destroy)

Use the following when constructing a blog. You are not allowed to add styling or anything extra during time trials. This is barebones functionality.

* We need 3 models
  * a `user` model with the following attributes
    * `email`, `first_name`, `last_name`, `password_digest`
    * We need authentication in our `user` model, i.e. `User.confirm` and `secure_pasword`
    * We need simple validations on our user, i.e. a unique `email`, email and password confrimations, and presence for both attributes.
  * an `article` model
    * `title` and `content`
    * simple validations on the title and content for presence
* We need one association
  * 1 to Many: `user` and `article`
* We need a `sites` controller with `index`, `about`, and `contact`
* We need a `users` controller with all seven resources
* We need an `articles` controller with all seven resources
* We need a `sessions` controller with at least `new` and `create`.
* We need `session_helper` methods for `login`, `logged_in?`, `logout`, and `current_user`.

With all of the above `users` should be able to do the following:

* `users` can `sign_up`
* `users` can `login`
* `users` can `logout`
* `users` can view, create, and edit articles once logged in.
* `users` can only `edit`, `update`, and `destroy` their own articles


## Tips:

* Use partials for your articles `edit` and `update`.
* Put a basic nav bar in your `layouts/application.html.erb` using a `ul` and some conditionals.

## Part 2: Testing

Pick one of the blogs you've implemented from `part 1`.

* Add models tests for your `user` validations.
* Add model tests for your `article` validations
* Add some basic `controller` tests for your `sessions` controller. Remember `new` and `create` are the easy methods to test in a controller.
* Add some basic `controller` tests for your `articles` controller for the `new` and `index` methods.

## Part 3: Partials It Up

Go back through your application and separate a lot of your views into partials. 

## Part 4: Seeding Your Application

Add `ffaker` to your Gemfile and use it in your `db/seeds.rb` file to create fake users and associated articles.

See the following [seed file](https://github.com/sf-wdi-15/rails_testing/blob/master/db/seeds.rb) for guidance. Find a blogs like [this](http://ricostacruz.com/cheatsheets/ffaker.html).


## Part 4: Adding Alchemy

You need to add an `API`. You've already registered for the Alchemy API, so it's a perfect choice to integrate into this application.

### Phase 1: Setting up Alchemy

* [Research](http://www.gotealeaf.com/blog/managing-environment-configuration-variables-in-rails) and setup `dotenv` to store your `API` keys.
* Add a method to [`get_keywords`](https://github.com/sf-wdi-15/blog_app_rails/blob/master/blog_solution/app/models/article.rb) in your `article` model. It should only get keywords if the `content` has more than `500` characters.

### Phase 2: Tagging Articles

* Create a model called `tag` that has a `text` attribute.
* Associate your `article` to your `tag` model where your `article` has many `tags`.
* Alter your `get_keywords` method to save each keyword as an associated `tag`. If an `article` already has `tags` it should not make a request to Alchemy's API.


## Part 5: Research

Users may want to upload images


* Research `carrier_wave`, `image_magic`, and `paperclip`. What do these gems do and how would you use them? You don't have to implement them, but you should research them.
*[Research ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html), [sending email with gmail](https://blog.heroku.com/archives/2009/11/9/tech_sending_email_with_gmail) and [MailGun](http://documentation.mailgun.com/libraries.html#ruby), [heroku email policy](https://devcenter.heroku.com/articles/smtp), take a peek at [heroku mailgun](https://devcenter.heroku.com/articles/mailgun)
* [Cron jobs](https://devcenter.heroku.com/articles/scheduled-jobs-custom-clock-processes), [delayed job](https://devcenter.heroku.com/articles/delayed-job)
* [rake task](http://railscasts.com/episodes/66-custom-rake-tasks)
* [bower rails](https://rails-assets.org/)



