require 'RMagick'
require 'FileUtils'
require 'JSON'

dest_path = "./Assets.xcassets/AppIcon.appiconset"
unless File.directory?(dest_path)
  FileUtils.mkdir_p(dest_path)
end

source = "1024p.png"
hash_array = []

image = Magick::Image.read(source).first

thumb = image.resize_to_fit(48, 48)
thumb_name = "img_48p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "24x24",
      "idiom" => "watch",
      "filename" => thumb_name,
      "scale" => "2x",
      "role" => "notificationCenter",
      "subtype" => "38mm"
}
hash_array << thumbHash

thumb = image.resize_to_fit(55, 55)
thumb_name = "img_55p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "27.5x27.5",
      "idiom" => "watch",
      "filename" => thumb_name,
      "scale" => "2x",
      "role" => "notificationCenter",
      "subtype" => "42mm"
}
hash_array << thumbHash

thumb = image.resize_to_fit(58, 58)
thumb_name = "img_58p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "29x29",
      "idiom" => "watch",
      "filename" => thumb_name,
      "role" => "companionSettings",
      "scale" => "2x"
}
hash_array << thumbHash

thumb = image.resize_to_fit(80, 80)
thumb_name = "img_80p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "29x29",
      "idiom" => "watch",
      "filename" => thumb_name,
      "role" => "companionSettings",
      "scale" => "3x"
}
hash_array << thumbHash

thumb = image.resize_to_fit(87, 87)
thumb_name = "img_87p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "40x40",
      "idiom" => "watch",
      "filename" => thumb_name,
      "scale" => "2x",
      "role" => "appLauncher",
      "subtype" => "38mm"
}
hash_array << thumbHash

thumb = image.resize_to_fit(172, 172)
thumb_name = "img_172p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "86x86",
      "idiom" => "watch",
      "filename" => thumb_name,
      "scale" => "2x",
      "role" => "quickLook",
      "subtype" => "38mm"
}
hash_array << thumbHash

thumb = image.resize_to_fit(196, 196)
thumb_name = "img_196p.png"
thumb.write(dest_path + "/" + thumb_name)
thumbHash = {
	  "size" => "98x98",
      "idiom" => "watch",
      "filename" => thumb_name,
      "scale" => "2x",
      "role" => "quickLook",
      "subtype" => "42mm"
}
hash_array << thumbHash
puts 'Finished creating your image Assets..'
puts 'Now creating additional config files..'

infoHash = {
	"version" => 1,
	"author" => "xcode"
}

contentsHash = {
    "images" => hash_array,
    "info" => infoHash
}

File.open(dest_path + "/Contents.json", "w") do |f|
  f.write(JSON.pretty_generate(contentsHash))
end

puts 'Finished creating your Watch OS Assets, you can check your folder!'