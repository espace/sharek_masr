# -*- coding: utf-8 -*-
class FillData < ActiveRecord::Migration
  def self.up
    10.times.each do |t|
    Need.create(:title=>"اكفل طفل يتيم #{t}",:descriptionn=>"طفل يتيم يعيش فى قريه مصريه بسيطه فقد والدة", :verified=>true, :satisfied=>false, :city_id=>City.first.id, :category_id=>Category.find_by_name("رعاية الأيتام").id, :district_id=> District.first.id, :address=> "قريه مصريه", :urgency_id=>Urgency.last.id, :organisation_id=>Organisation.find_by_name("رسالة"))
    end


    10.times.each do |t|
    Need.create(:title=>"اكفل طفل يتيم #{t}",:descriptionn=>"طفل يتيم يعيش فى قريه مصريه بسيطه فقد والدة", :verified=>true, :satisfied=>true, :city_id=>City.first.id, :category_id=>Category.find_by_name("اطفال الشوارع").id, :district_id=> District.first.id, :address=> "قريه مصريه", :urgency_id=>Urgency.last.id, :organisation_id=>Organisation.find_by_name("رسالة"))
    end

    10.times.each do|t|
    Need.create(:title=>"اكفل طفل يتيم #{t}",:descriptionn=>"طفل يتيم يعيش فى قريه مصريه بسيطه فقد والدة", :verified=>true, :satisfied=>true, :city_id=>City.first.id, :category_id=>Category.find_by_name("اطفال الشوارع").id, :district_id=> District.last.id, :address=> "قريه مصريه", :urgency_id=>Urgency.first.id, :organisation_id=>Organisation.find_by_name("رسالة"))
    end
  end

  def self.down
  end
end
