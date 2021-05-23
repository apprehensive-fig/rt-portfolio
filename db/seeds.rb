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
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621747327/homeless-chic_n3ntvs.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621746113/kitchen-origin_jnduer.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621745766/yann-eating_qjb5z4.png',
  gallery: main_gallery
)

Item.create!(
  img_url: 'https://res.cloudinary.com/dzwpbkn3u/image/upload/v1621746113/kenn-itsokay_mhi7l8.png',
  gallery: main_gallery
)

puts "created #{Item.count} items"
