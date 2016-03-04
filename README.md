# Column Like
<img src="https://badge.fury.io/rb/column_like.svg" alt="Gem Version" />
<img src="https://hakiri.io/github/SinghSatyam/column_like/master.svg" alt="Security Feature"/>
<img src="https://d3s6mut3hikguw.cloudfront.net/github/SinghSatyam/column_like/badges/gpa.svg" alt="Code Complete"/>
<img src="https://codeclimate.com/github/SinghSatyam/column_like/badges/coverage.svg"  alt="Code Coverage"/>
<a href='https://gemnasium.com/SinghSatyam/column_like'><img src="https://gemnasium.com/SinghSatyam/column_like.svg" alt="Dependency Status" /></a>

Column Like allows you to search using like query in ActiveRecord. It is:

* LightWeight
* Customizable
* Available with every model

## Getting started

Column Like works with ActiveRecord 3.0 onwards. You can add it to your Gemfile with:

```ruby
gem 'column_like'
```

Run the ```bundle``` command to install it.

After you install Column Like and add it to your Gemfile, you need to run the generator:

```console
rails generate column_like:install
```

You should restart your application after installing Column Like.

## Usage

```ruby
User.first_name_like('satyam')
User.last_name_like('satyam')
User.email_like('satyam')
User.first_name_like('saty%')
User.first_name_like('s_ty%')
User.first_name_like('%ty%')
User.first_name_like('%ty__')
```

## Bug reports

If you discover a problem with Column Like, I would like to know about it. Send an email to satyam.mgs@gmail.com


## Contribute

1. Fork it ( http://github.com/SinghSatyam/column_like/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
