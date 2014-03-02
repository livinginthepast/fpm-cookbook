fpm cookbook
============

The effing package manager.

This cookbook installs [@jordansissel](https://github.com/jordansissel/fpm)'s
[fpm](http://rubygems.org/gems/fpm) gem. This gem can be used to
generate packages on any(tm) platform.

## Usage

In your Berksfile or Cheffile, add:

```ruby
cookbook 'fpm', git: 'https://github.com/livinginthepast/fpm-cookbook'
```

In your cookbook's metadata, add a

```ruby
depends 'fpm'
```

In your recipe that uses fpm, do the following:

```ruby
include_recipe 'fpm'
```

The gem will be installed at Chef compile time. Note that this will
happen after attributes are compiled, so don't expect to be able to use
anything from fpm in attribute definition.
