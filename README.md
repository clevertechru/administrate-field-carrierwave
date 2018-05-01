# Administrate::Field::Carrierwave

A plugin to integrate [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) fields in [Administrate](https://github.com/thoughtbot/administrate).

# Instructions

Add `administrate-field-carrierwave` and `carrierwave` to your Gemfile:

```
gem 'administrate-field-carrierwave'
gem 'carrierwave'
```

Install:

```
$ bundle install
```

## Usage

Follow the [instructions on carrierwave](https://github.com/carrierwaveuploader/carrierwave#quick-start) to get started with your models and migrations. Once you've added the carrierwave attribute to your models, edit your Administrate dashboards. If you added 'avatar' to 'User', then you should:

```ruby
class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    avatar: Field::Carrierwave,
  }
# ...
```

Then add `:avatar` to `FORM_ATTRIBUTES`, `SHOW_PAGE_ATTRIBUTES` and (optionally) `COLLECTION_ATTRIBUTES`.

You can provide the field with options using `Field::Carrierwave.with_options(options)`:

* `thumb` to control what image style is used to display the image in collection views
* `url` to show only a URL (as a link) instead of trying to display an image.

Based on the [Administrate::Field::Image](https://github.com/thoughtbot/administrate-field-image) template.