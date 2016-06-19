# MiniMagick cliping images with mask file

[![Gem Version](https://badge.fury.io/rb/minimagick-clip.svg)](http://badge.fury.io/rb/minimagick-clip)

Use mask file to clip images with minimagick.

![MiniMagick clip with mask](https://s3-us-west-2.amazonaws.com/sharshenov/minimagick-clip.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mini_magick_clip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_magick_clip

## Usage

Carrierwave example:

```ruby
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include MiniMagickClip

  process convert: 'png'

  version :thumb do
    process resize_to_fill: [210, 210]
    process mask: Rails.root.join('app/uploaders/t-shirt-mask.png')
  end

  def filename
    if original_filename
      [
        model.username,
        "png"
      ].join(".")
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sharshenov/minimagick-clip.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

