
# this automatically creates a user with the following
Factory.define :user do |user|
  user.name "Tony Hoffman"
  user.email  "thoff@gmail.com"
  #user.email f.sequence(:email) { |n| "foo#{n}@example.com" }
  #user.email user.sequence(:email) { |n| "test#{n}@example.com" }
  user.password "foobar"
  user.password_confirmation "foobar" 
end

