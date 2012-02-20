
# this automatically creates a user with the following
Factory.define :user do |user|
  user.name "Tony Hoffman"
  user.email  "tony@gmail.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end

