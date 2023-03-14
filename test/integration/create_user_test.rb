require "test_helper"

class CreateUserTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create new user on signing up" do
    get '/signup'
    assert_template 'users/new'
    assert_difference 'User.count',1 do
        post users_path, params:{user: {username: "Ebenezer-Ankrah1", email: "ebenankrah@gmail.com",
                                 password: "password123"}}
        follow_redirect!
    end
    assert_template 'users/show'
    assert_match "p", "Welcome to Ebenezer's page"
end
end
