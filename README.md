# MaterializeComponents

Simple Ruby on Rails Gem that offers some utilities for easy generation of [MaterializeCSS components](http://materializecss.com/badges.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'materialize_components', :git => "git://github.com/bo-oz/materialize-components.git"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install materialize_components

## How to Use

Using this gem is pretty simple. There are two ways you can access the components, either by referring to the classes themselves, or use one of the utility methods provided in the main module.

To make things really easy, you can add a reference to the module in a helper file:

```
module MaterializeHelper

    def mc
      return MaterializeComponents
    end
end
```

This allows you quick access to the various helper methods. Take a look at `lib/materialize_components.rb` for the list of convenience methods.

## Access to the components

The gem gives access to the following components from MaterializeCSS:

* [Badges](#badges)
* [Breadcrumbs](#breadcrumbs)
* [Buttons](#buttons)
* [Chips](#chips)
* [Fixed Action Buttons](#fab)
* [Icon Badges](#iconbadges)
* [Icons](#icons)
* [Preloaders](#preloaders)
* [Spinners](#spinners)

### <a name="badges"></a> Badges

Please refer to the documentation on [Badges](http://materializecss.com/badges.html) from MaterializeCSS Documentation, to get a basic idea of what these are.

```ruby
# Accessing the class directly
MaterializeComponents::Badge.new("Text").to_s

# You can also use the convenience method
MaterializeComponents.badge('text').to_s

# Both willgenerate the following HTML:
<span class="badge">Text</span>

# Setting a caption
MaterializeComponents.badge('text').caption('caption').to_s

# Will generate
<span data-badge-caption="caption" class="badge">Text</span>

```

MaterializeCSS also has a "New Badge", you can create these by instantiating a different class:

```ruby
# Accessing the class directly
MaterializeComponents::Badge::New.new("Text").to_s

# You can also use the convenience method
MaterializeComponents.new_badge('text').to_s
```
```html
<!-- Both will generate the following HTML: -->
<span class="badge new">Text</span>
```

### <a name="breadcrumbs"></a> Breadcrumbs

To create a [breadcrumb](http://materializecss.com/breadcrumbs.html), you first instantiate the class and can then add links to the object.

```ruby
# Accessing the class directly
breadcrumb = MaterializeComponents::Breadcrumb.new

# You can also use the convenience method
breadcrumb = MaterializeComponents.breadcrumb

# now you can add links to the object
link = "<a href='http://www.google.com'>google</a>"
link2 = "<a href='http://www.github.com'>github</a>"

breadcrumb.add_link(link).add_link(link2).to_s
```
```html
<!-- this will generate the breadcrumb list -->
<nav class="">
   <div class="nav-wrapper">
      <div class="s12 col">
        <a href='http://www.google.com'>google</a>
        <a href='http://www.github.com'>github</a>
      </div>
   </div>
</nav>

```

### <a name="buttons"></a> Buttons

Please have a look at the documentation to find out all about the various types of [buttons](http://materializecss.com/buttons.html). All types are currently supported.

```ruby
# Accessing the class directly
MaterializeComponents::Button.new('text').to_s

# You can also use the convenience method
MaterializeComponents.button('text').to_s
```
```html
<!-- This will generate the following HTML -->
<a class="btn">text</a>"
```

There are a lot more options:

```ruby
button = MaterializeComponents::Button.new('text')

# to set the link
button.href('http://www.google.com').to_s

# to make it use waves
button.waves.to_s

# to make it disabled
button.disabled.to_s

# to make it large
button.large.to_s

# to make it flat
button.flat.to_s

# all the methods are returning a reference to self, so you are able
# to chain commands as well, so to create a large wave button:
button.large.waves.to_s
```

#### Icon Button

If you want an icon in the button, use a separate class:

```ruby
# Accessing the class directly
icon_button = MaterializeComponents::Button::WithIcon.new('add_box')

# You can also use the convenience method
MaterializeComponents.button_with_icon('add_box').to_s

# Don't forget to set the content!
icon_button.content('text').to_s
```
```html
<!-- This will generate the following HTML -->
<a class="btn"><i class="material-icons">add_box</i> text</a>
```


One important difference is that in this case, the class should be instantiated
with the name of the icon. This name refers to the [Icon List](http://materializecss.com/icons.html) you can find
in the official MaterializeCSS documentation.

There are also some other others for this class

```ruby
# to set the icon right of the text
icon_button = icon_button.icon_right.content('text')

# to set an class for the icon
icon_button.icon_class('red').to_s
```
```html
<!-- This will generate the following HTML -->
<a class="btn">text <i class="material-icons red">add_box</i></a>
```

#### Floating Button

There's alson something called a Floating button, this is circle shaped button
with an icon.


```ruby
# Accessing the class directly
icon_button = MaterializeComponents::Button::Floating.new('add_box')

# You can also use the convenience method
MaterializeComponents.floating_button('add_box').to_s

```
```html
<!-- This will generate the following HTML -->
<a class="btn-floating btn-large"><i class="material-icons">add_box</i></a>
```


### <a name="chips"></a> Chips

### <a name="fab"></a> Fixed Action Buttons

### <a name="iconbadges"></a> Icon Badges

### <a name="icons"></a> Icons

### <a name="preloaders"></a> Preloaders

### <a name="spinners"></a> Spinners


## Todo

* Write documentation
* Write some tests

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bo-oz/materialize_components. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
