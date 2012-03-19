require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin =User.create!(:name => "Example User",
                        :email => "example@softvision.ro",
                        :password => "foobar",
                        :password_confirmation => 'foobar')
    admin.toggle!(:add)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@softvision.ro"
      password = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end