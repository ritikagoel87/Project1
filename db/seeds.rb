User.destroy_all
u1 = User.create :fname => 'Ritika', :lname => 'Goel', :dob => '13/08/1987', :email => 'rg@ga.co', :password_digest => 'chicken', :admin => 'true'
u2 = User.create :fname => 'Joel', :lname => 'Turnbull', :dob => '01/01/1980', :email => 'jt@ga.co', :password_digest => 'chicken', :admin => 'false'
u3 = User.create :fname => 'Yianni', :lname => 'Moustakas', :dob => '01/01/1990', :email => 'ym@ga.co', :password_digest => 'chicken', :admin => 'flase'

Board.destroy_all
b1 = Board.create :name => 'Apples', :image => 'https://cdn.newsapi.com.au/image/v1/2b74874798de42d5de6e4711150946d3'
b2 = Board.create :name => 'Strawberries', :image => 'https://5.imimg.com/data5/CK/LM/MY-46960546/fresh-red-strawberry-500x500.jpg'
b3 = Board.create :name => 'Butterflies', :image => 'butterfly.jpg'
b4 = Board.create :name => 'Fruits', :image => 'https://s20427.pcdn.co/wp-content/uploads/2016/12/9-fruits-to-eat-every-day.jpg'

Pin.destroy_all
p1 = Pin.create :title => 'Royal Gala', :url => 'https://en.wikipedia.org/wiki/Gala_(apple)', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Malus-Gala.jpg/220px-Malus-Gala.jpg'
p2 = Pin.create :title => 'Granny Smith', :url => 'https://www.pinterest.com.au/pin/539446861588735487/?lp=true', :image => 'https://i.pinimg.com/originals/8b/67/c5/8b67c57f7cc535c3ca7822716624f095.jpg'
p3 = Pin.create :title => 'Chocolate Strawberries', :url => 'http://simplysouthernbaking.com/2013/chocolate-dipped-florida-strawberries/', :image => 'http://simplysouthernbaking.com/wp-content/uploads/2013/02/Chocolate-Strawberry-Collage1.jpg'
p4 = Pin.create :title => 'Strawberry Garden', :url => 'https://www.rhs.org.uk/advice/grow-your-own/fruit/strawberries', :image => 'https://www.rhs.org.uk/getmedia/a6ba9cf4-29a0-472d-847b-9d6b8a06e652/Strawberries940x627.jpg'
p5 = Pin.create :title => 'Monarch - Nymphalidae', :url => 'https://uwm.edu/field-station/monarch/', :image => 'https://uwm.edu/field-station/wp-content/uploads/sites/380/2008/06/monarch-1.jpg'
p6 = Pin.create :title => 'Purple Emperor', :url => 'https://www.bbc.com/news/magazine-33596341', :image => 'https://ichef.bbci.co.uk/news/660/cpsprodpb/68BE/production/_84441862_84feb9aa-fb40-4be7-86c7-03051264c9fb.jpg'
p7 = Pin.create :title => 'All About Butterflies', :url => 'https://butterfly-conservation.org/butterflies/a-to-z', :image => 'https://butterfly-conservation.org/sites/default/files/styles/masthead/public/2018-06/Holly-Blue-Celastrina-argiolus-_5DS2879.jpg?itok=bDej8hjq'
p8 = Pin.create :title => 'Butterfly Behaviours', :url => 'http://www.birdsandblooms.com/gardening/attracting-butterflies/butterfly-behavior-basics/', :image => 'http://www.birdsandblooms.com/wp-content/uploads/2018/01/monarch-blue-sky-zinnia-linda-konz.jpg'
p9 = Pin.create :title => 'Lifecycle of a Butterfly', :url => 'http://www3.canisius.edu/~grandem/butterflylifecycle/The_Lifecycle_of_a_Butterfly_print.html', :image => 'http://1.bp.blogspot.com/_iNkUn5QoxO4/TIvE6xu8y5I/AAAAAAAAAOQ/U_5ZEwhDwQw/s1600/lep_red-spotted_purple230.JPG'
p10 = Pin.create :title => 'All About Mangoes', :url => 'https://www.mango.org/', :image => 'https://www.mango.org/wp-content/uploads/2017/10/mango-verities.jpg'
p11 = Pin.create :title => 'How To Make Fresh Orange Juice', :url => 'https://www.organicfacts.net/recipe/orange-juice', :image => 'https://www.organicfacts.net/wp-content/uploads/orangejuice.jpg'
p12 = Pin.create :title => 'Butterflies and Fruits', :url => 'https://insteading.com/blog/how-to-attract-butterflies/', :image => 'https://cdn.insteading.com/wp-content/uploads/2016/02/butterfly_eating_fruit_by_charleychrizzy.jpg'

# Associations ######################################################
# Boards and Users
u1.boards << b1 << b2
u2.boards << b3
u3.boards << b4

# Pins and Boards
b1.pins << p1 << p2
b2.pins << p3 << p4
b3.pins << p5 << p6 << p7 << p8 << p9 << p12
b4.pins << p1 << p2 << p3 << p10 << p11 << p12
