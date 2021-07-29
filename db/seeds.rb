Sample.destroy_all
s1 =Sample.create(:name => 'Barbat-01', :BPM => '105', :musicalkey => 'Dm')
s2 =Sample.create(:name => 'Kemancheh', :BPM => '95', :musicalkey => 'Am')
s3 =Sample.create(:name => 'Shoorangiz-10', :BPM => '105', :musicalkey => 'Dm')
s4= Sample.create(:name => 'Duduk', :BPM => '58', :musicalkey => 'Cm')
s5= Sample.create(:name => 'Tar', :BPM => '85', :musicalkey => 'Am')
puts "#{ Sample.count } samples created."

Artist.destroy_all
a1 = Artist.create(:name => 'Djivan Gasparyan', :country => 'Armenia', :image => 'http://musicofarmenia.com/sites/default/files/styles/colorbox/public/musician/photo/Djivan-Gasparyan.png?itok=eVZLM4oc')
a2 = Artist.create(:name => 'Hosein Alizadeh', :country => 'Iran', :image => 'https://www.navahang.com/images/2017/07/470x470/Hossein-Alizadeh.jpg')
a3 = Artist.create(:name => 'Kayhan Kalhor', :country => 'Iran', :image => 'https://img9.irna.ir/d/r2/2019/08/09/4/156536834.jpg')
puts "#{ Artist.count } artists created."

Instrument.destroy_all
i1 =Instrument.create(:name => 'Barbat', :family => 'strings', :country => 'Iran', :image => 'https://goirantours.com/wp-content/uploads/2019/01/One-of-the-traditional-Persian-musical-instruments-Barbat.jpg')
i2 =Instrument.create(:name => 'Kemancheh', :family => 'strings', :country => 'Iran', :image => 'http://persian-pedia.com/wp-content/uploads/2019/10/%DA%A9%D9%85%D8%A7%D9%86%DA%86%D9%87-%D9%86%D8%B1%DB%8C%D9%85%D8%A7%D9%86.jpg')
i3 =Instrument.create(:name => 'Shoorangiz', :family => 'strings', :country => 'Iran', :image => 'https://shopipersia.com/wp-content/uploads/2020/11/SHURANGIZ-6.jpg')
i4= Instrument.create(:name => 'Duduk', :family => 'Winds', :country => 'Armenia', :image => 'https://zvuk-m.com/wp-content/uploads/2018/07/1200-678342-1068x556.jpg')
i5= Instrument.create(:name => 'Tar', :family => 'strings', :country => 'Iran')
puts "#{ Instrument.count } instruments created."

User.destroy_all
u1 =User.create :name => 'Mo Abyari', :email => 'm67.abyari@gmail.com'
u2 =User.create :name => 'Mai', :email => 'mai@ga.co', :admin => true
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

puts " Users and Soundbag"

u1.soundbags << sb1 << sb2
u2.soundbags << sb3

puts "samples and soundbags"
sb1.samples << s1 << s2 << s3
sb2.samples << s1 << s5 << s4
