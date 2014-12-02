# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Brew.delete_all

Brew.create!(title: 'Bo bristle',
description:
%{<p>
IPA with a fruity twist.
</p>},
image_url: 'http://media-cache-ec0.pinimg.com/236x/e2/c6/86/e2c68658ad60ff2e9fb5f48307df49dd.jpg',
origin: 'Ireland',
website: 'www.bobristle.com',
price: 5.59,
brewtype: 'Indian Pale ale')

Brew.create!(title: 'hoegaarden',
description:
%{<p>
Fruity weissbier
</p>},
image_url: 'http://img.submarino.com.br/produtos/01/00/item/114032/4/114032431_2GG.jpg',
origin: 'Germany',
website: 'www.hoegaarden.com',
price: 4.50,
brewtype: 'Weissbier')
Brew.create!(title: 'Brooklyn Chocolate Stout',
description:
%{<p>
The famous Brooklyn chocolate stout. In the 18th century, Catherine the Great, Empress of Russia, ordered a stout to be sent to her from England. This beer was brewed strong and hoppy to survive the sea voyage, and it arrived in perfect condition. Soon "Russian Imperial Stout" became the toast of the Russian aristocracy.
</p>},
image_url: 'http://1.bp.blogspot.com/-hLktbgA7Pho/TZrxwWlFUbI/AAAAAAAABhM/13HBd6yXRy4/s1600/Brooklyn+Brewery+Black+Chocolate+Stout.JPG',
origin: 'Brooklyn, New york',
website: 'www.brooklynbrewery.com',
price: 4.50,
brewtype: 'Stout')

Brew.create!(title: 'Punk IPA',
description:
%{<p>
This 5.6% trans-atlantic fusion IPA is light golden in colour with tropical fruits and light caramel on the nose. The palate soon becomes assertive and resinous with the New Zealand hops balanced by the biscuit malt. The finish is aggressive and dry with the hops emerging over the warming alcohol.
</p>},
image_url: 'http://www.brewdog.com/product_images/T1_b743a3bdcb22f0b56a3a76e05bd1ebc7_80975.jpeg',
origin: 'New Zealand',
website: 'http://www.brewdog.com/product/punk-ipa#tabs1',
price: 4.50,
brewtype: 'Indian Pale ale')
