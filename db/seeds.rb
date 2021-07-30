Sample.destroy_all
s1 =Sample.create(:name => 'Barbat-01', :BPM => '105', :musicalkey => 'Dm')
s2 =Sample.create(:name => 'Kemancheh', :BPM => '95', :musicalkey => 'Am')
s3 =Sample.create(:name => 'Shoorangiz-10', :BPM => '105', :musicalkey => 'Dm')
s4= Sample.create(:name => 'Duduk', :BPM => '58', :musicalkey => 'Cm')
s5= Sample.create(:name => 'Tar', :BPM => '85', :musicalkey => 'Am')
s6= Sample.create(:name => 'Ney', :BPM => '60', :musicalkey => 'Gm')
puts "#{ Sample.count } samples created."

Artist.destroy_all
a1 = Artist.create(:name => 'Djivan Gasparyan', :country => 'Armenia', :image => 'http://musicofarmenia.com/sites/default/files/styles/colorbox/public/musician/photo/Djivan-Gasparyan.png?itok=eVZLM4oc')
a2 = Artist.create(:name => 'Hosein Alizadeh', :country => 'Iran', :image => 'https://www.navahang.com/images/2017/07/470x470/Hossein-Alizadeh.jpg')
a3 = Artist.create(:name => 'Kayhan Kalhor', :country => 'Iran', :image => 'https://img9.irna.ir/d/r2/2019/08/09/4/156536834.jpg')
puts "#{ Artist.count } artists created."
a4 = Artist.create(:name => 'Hassan Kasayi', :country => 'Iran', :image => 'https://scontent.fsyd1-1.fna.fbcdn.net/v/t31.18172-8/244392_134385333303570_7809267_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=U6X_WbP7bUkAX8iqK_2&_nc_ht=scontent.fsyd1-1.fna&oh=28a48e6a77a44312221bb8ab383c7dac&oe=612AC4FB')
puts "#{ Artist.count } artists created."

Instrument.destroy_all
i1 =Instrument.create(:name => 'Barbat', :family => 'Strings', :country => 'Iran', :image => 'https://goirantours.com/wp-content/uploads/2019/01/One-of-the-traditional-Persian-musical-instruments-Barbat.jpg')
i2 =Instrument.create(:name => 'Kemancheh', :family => 'Strings', :country => 'Iran', :image => 'http://persian-pedia.com/wp-content/uploads/2019/10/%DA%A9%D9%85%D8%A7%D9%86%DA%86%D9%87-%D9%86%D8%B1%DB%8C%D9%85%D8%A7%D9%86.jpg')
i3 =Instrument.create(:name => 'Shoorangiz', :family => 'Strings', :country => 'Iran', :image => 'https://shopipersia.com/wp-content/uploads/2020/11/SHURANGIZ-6.jpg')
i4= Instrument.create(:name => 'Duduk', :family => 'Winds', :country => 'Armenia', :image => 'https://zvuk-m.com/wp-content/uploads/2018/07/1200-678342-1068x556.jpg')
i5= Instrument.create(:name => 'Tar', :family => 'Strings', :country => 'Iran', :image => 'https://kiavashmusic.com/wp-content/uploads/2021/04/0002-01.jpg')
i6= Instrument.create(:name => 'Ney', :family => 'Winds', :country => 'Iran', :image => 'https://i.ebayimg.com/images/g/I5AAAOSwADldF3s2/s-l1600.jpg')
puts "#{ Instrument.count } instruments created."

User.destroy_all
u1 =User.create :name => 'Mo Abyari', :email => 'm67.abyari@gmail.com', :password => 'chicken'
u2 =User.create :name => 'Mai', :email => 'mai@ga.co', :admin => true, :password => 'chicken'
puts " #{User.count } users created"

Soundbag.destroy_all
sb1 =Soundbag.create :name => 'first-list'
sb2 =Soundbag.create :name => 'folk'
sb3 =Soundbag.create :name => 'Jazz'
puts "#{Soundbag.count} soundbags created "

########### Association ################

puts "Instruments and Artists"
a1.instruments << i4
a2.instruments << i3 << i5
a3.instruments << i2 << i5
a4.instruments << i6


puts "Instruments and samples"
i2.samples << s2
i3.samples << s3
i4.samples << s4
i5.samples << s5

puts "Artists and Samples"
a3.samples << s2
a2.samples << s3
a1.samples << s4
a2.samples << s5
a4.samples << s6

puts " Users and Soundbag"

u1.soundbags << sb1 << sb2
u2.soundbags << sb3

puts "samples and soundbags"
sb1.samples << s1 << s2 << s3
sb2.samples << s1 << s5 << s4
