
puts 'destroying galleries..'
Gallery.destroy_all
Item.destroy_all

puts 'creating galleries..'
main_gallery = Gallery.create!(
  name: 'main gallery'
)

puts "created #{Gallery.count} galleries"

puts 'creating items..'
Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621734391/homeless-chic_crgma9.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621741027/tshirt-ayaka-sample_oi6vuf.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621737441/yann-eating_ng27bp.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621737551/tshirt-kenn-sample_mwmmlx.png',
  gallery: main_gallery
)

puts "created #{Item.count} items"
