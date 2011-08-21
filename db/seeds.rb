# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Backlog.delete_all

Backlog.create(:name => 'Books to read')

BacklogItem.delete_all

BacklogItem.create(:name => 'Seven Languages in Seven Weeks',
    :cost => 1,
    :priority => 1)

BacklogItem.create(:name => 'The One Minute Manager',
    :cost => 1,
    :priority => 1)

BacklogItem.create(:name => 'Who Moved My Cheese',
    :cost => 1,
    :priority => 1)
