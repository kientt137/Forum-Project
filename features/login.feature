Feature:
  As a user
  I want to log in to forum
  So that I can use all feature of forum


# Background:
#   Given I go to the sign up page
#   When I fill in "Name" with "Nguyen Van A"
#   When I fill in "Email" with "email_test@gmail.com"
#   When I fill in "Password" with "123456"
#   When I fill in "Confirmation" with "123456"
#   When I press "Create my account"
#   Then I should see the user page
#   And I logout to the forum
#
#  Scenario: Correct User
#    Given I go to the login page
#    When I fill in "Email" with "email_test@gmail.com"
#    When I fill in "Password" with "123456"
#    When I press "Log in"
#    Then I should see the homepage with my name on the header
#
#  Scenario Outline: Wrong User
#    Given I go to the login page
#    When I fill in "Email" with <email>
#    When I fill in "Password" with <password>
#    When I press "Log in"
#    Then I should see the error
#  Examples:
#    |email                  |password |
#    |"email_test@gmail.com" |"12345" |
#    |"emailtest@gmail.com"  |"123456"|
#    |""                     |"123456"|
#    |"email_test@gmail.com" |""      |