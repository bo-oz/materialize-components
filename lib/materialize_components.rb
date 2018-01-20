$:.unshift(File.dirname(__FILE__))
require 'materialize_components/badge.rb'
require 'materialize_components/base.rb'
require 'materialize_components/breadcrumb.rb'
require 'materialize_components/button.rb'
require 'materialize_components/chip.rb'
require 'materialize_components/errors.rb'
require 'materialize_components/fixed_action_button.rb'
require 'materialize_components/icon_badge.rb'
require 'materialize_components/icon.rb'
require 'materialize_components/preloader.rb'
require 'materialize_components/spinner.rb'
require 'materialize_components/version.rb'

module MaterializeComponents

  # Convenience methods for easy access to
  # the various components inside the gem

  # Badges

  def self.badge content
    return Badge.new(content)
  end

  def self.new_badge content
    return Badge::New.new(content)
  end

  # Breadcrumb

  def self.breadcrumb
    return Breadcrumb.new
  end

  # Button

  def self.button content
    return Button.new(content)
  end

  def self.flat_button content
    return Button.new(content).flat
  end

  def self.disabled_button content
    return Button.new(content).disabled
  end

  def self.large_disabled_button content
    return Button.new(content).disabled.large
  end

  def self.wave_button content
    return Button.new(content).waves
  end

  def self.button_with_icon icon
    return Button::WithIcon.new(icon)
  end

  def self.button_with_icon_right icon
    return Button::WithIcon.new(icon).icon_right
  end

  def self.wave_button_with_icon icon
    return Button::WithIcon.new(icon).waves
  end

  def self.wave_button_with_icon_right icon
    return Button::WithIcon.new(icon).waves.icon_right
  end

  def self.floating_button icon
    return Button::Floating.new(icon)
  end

  def self.wave_floating_button icon
    return Button::Floating.new(icon).waves
  end

  # Chip

  def self.chip content
    return Chip.new(content)
  end

  def self.chip_with_icon icon
    return Chip::WithIcon.new(icon)
  end

  # FAB

  def self.fixed_action_button icon
    return FixedActionButton.new(icon)
  end

  # Icon Badge

  def self.icon_badge icon
    return IconBadge.new(icon)
  end

  def self.icon_badge_large icon
    return IconBadge::Large.new(icon)
  end

  # Icon

  def self.icon icon
    return Icon.new(icon)
  end

  # Preloader

  def self.preloader
    return Preloader.new
  end

  def self.preloader_determinate width
    return Preloader.new.determinate(width)
  end

  def self.preloader_indeterminate width
    return Preloader.new.indeterminate
  end

  # Spinner

  def self.spinner
    return Spinner.new
  end

  def self.red_spinner
    return Spinner.new.red
  end

  def self.blue_spinner
    return Spinner.new.blue
  end

  def self.red_spinner
    return Spinner.new.green
  end

  def self.yellow_spinner
    return Spinner.new.yellow
  end

end
