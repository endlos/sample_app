# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
User.create!(:name => "Michael Hartl", :email => "mhartl@example.com",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Peter", :email => "peter@example.com",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Beta", :email => "beta@example.com",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Tutorial", :email => "example@railstutorial.org",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Hanni Ross", :email => "h@nniross.me",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Issac", :email => "isaac@automattic.com",
              :password => "foobar", :password_confirmation => "foobar")
User.create!(:name => "Mark", :email => "mark@automattic.com",
              :password => "foobar", :password_confirmation => "foobar")
