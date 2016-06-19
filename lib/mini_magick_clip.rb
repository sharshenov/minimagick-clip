require "mini_magick_clip/version"
require "mini_magick"

module MiniMagickClip

  def mask mask_path
    manipulate! do |img|
      img.format 'png'

      mask = ::MiniMagick::Image.open mask_path
      mask.resize([img[:width], img[:height]].join("x"))

      masked = img.composite(mask, 'png') do |i|
        i.alpha "set"
        i.compose 'DstIn'
      end
    end
  end

end
