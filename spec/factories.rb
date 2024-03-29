Factory.define :user do |user|
  user.name                  "Cornel Les"
  user.email                 "cornel.les@softvision.ro"
  user.password              "secret"
  user.password_confirmation "secret"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end