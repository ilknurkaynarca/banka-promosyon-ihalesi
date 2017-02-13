# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Bank.create([{ name: 'Akbank' }, { name: 'T.C. Ziraat Bankası' }, { name: 'Halkbank' }, { name: 'Yapı Kredi' }, { name: 'Garanti' }])
#Bank.create([{ name: 'Türk Ekonomi Bankası' }, { name: 'Şekerbank' }, { name: 'İş Bankası' }, { name: 'Yapı Kredi' }, { name: 'Denizbank' }])
#Bank.create([{ name: 'Finansbank' }, { name: 'HSBC Bank' }, { name: 'ING Bank' }, { name: 'Albaraka' }, { name: 'Küveyt Türk' }])
#Bank.create([{ name: 'Finans Katılım' }, { name: 'Anadolu' }, { name: 'ICBC BANK' }, { name: 'CITIBANK' }, { name: 'Odeabank' }])
Cause.create([{ name: 'Değerlendirme Dışı'}, { name: 'En Düşük Teklif'}, { name: 'Çekildi' }])
#Round.create([{ name: '1. Tur' }, { name: '2. Tur' }, { name: '3. Tur' }, { name: '4. Tur' }, { name: '5. Tur' }])
user = User.new
user.email = 'deneme@deneme.com'
user.password = 'deneme+55'
user.password_confirmation = 'deneme+55'
user.save
