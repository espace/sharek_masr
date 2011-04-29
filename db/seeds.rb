# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

cairo = City.find_or_create_by_name("القاهرة")


puts 'Creating districts from greater cairo districts,txt ...'
open(Rails.root.join('db').join('greater cairo districts.txt')) do |disticts|
  disticts.read.each_line do |district|
    name = district.chomp.split(",")[1]
    District.find_or_create_by_name(name.strip.to_sym,{ :city_id => cairo.id})
  end

admin = Administrator.find_or_create_by_login( 'admin', {
                                       :password => 'admin',
                                       :password_confirmation => 'admin',
                                       :email => 'ahmad.bakr@espace.com.eg',
                                       :name => 'Sharek Admin'})

end

puts 'Creating Urgencies.....'
URGENCIES.each do |urgency|
	Urgency.find_or_create_by_name(:name => urgency)
end


















