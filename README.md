# Column Like
<img src="https://badge.fury.io/rb/column_like.svg" alt="Gem Version" />

Column Like allows you to search using like query in ActiveRecord. It is:

* LightWeight
* Customizable
* Available with every model

## Getting started

Column Like works with ActiveRecord 3.0 onwards. You can add it to your Gemfile with:

```ruby
gem 'column_like'
```

Run the bundle command to install it.

After you install Column Like and add it to your Gemfile, you need to run the generator:

```console
rails generate column_like:install
```

You should restart your application after installing Column Like.

## Usage

```ruby
User.first_name_like('satyam')
```

## Bug reports

If you discover a problem with Column Like, I would like to know about it. Send an email to satyam.mgs@gmail.com
