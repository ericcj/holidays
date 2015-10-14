# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/us.yaml, data/north_america_informal.yaml
class UsDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_us
{Date.civil(2008,1,1) => 'New Year\'s Day',
 Date.civil(2008,1,21) => 'Martin Luther King, Jr. Day',
 Date.civil(2008,2,18) => 'Presidents\' Day',
 Date.civil(2008,5,26) => 'Memorial Day',
 Date.civil(2008,7,4) => 'Independence Day',
 Date.civil(2008,9,1) => 'Labor Day',
 Date.civil(2008,10,13) => 'Columbus Day',
 Date.civil(2008,11,11) => 'Veterans Day',
 Date.civil(2008,11,27) => 'Thanksgiving',
 Date.civil(2013,11,28) => 'Thanksgiving',
 Date.civil(2008,12,25) => 'Christmas Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us)[0] || {})[:name]
end
{Date.civil(2008, 3, 31) => 'Cesar Chavez Day',
 Date.civil(2008, 11, 28) => 'Day after Thanksgiving',
 Date.civil(2013, 11, 29) => 'Day after Thanksgiving'}.each do |date, name|
 assert_equal name, (Holidays.on(date, :us, :us_ca)[0] || {})[:name]
end


{Date.civil(2013,2,2) => 'Groundhog Day',
 Date.civil(2013,2,14) => 'Valentine\'s Day',
 Date.civil(2013,3,17) => 'St. Patrick\'s Day',
 Date.civil(2013,4,1) => 'April Fool\'s Day',
 Date.civil(2013,4,22) => 'Earth Day',
 Date.civil(2013,5,12) => 'Mother\'s Day',
 Date.civil(2013,5,18) => 'Armed Forces Day',
 Date.civil(2013,6,16) => 'Father\'s Day',
 Date.civil(2013,10,31) => 'Halloween'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us, :informal)[0] || {})[:name]
end

  end
end
