Feature:
  As a guess
  I want to sign up my new account
  So that I can join in to forum

##  Background:
##    Given I go to the sign up page
##    When I fill in "Name" with "Nguyen Van A"
##    When I fill in "Email" with "email_test@gmail.com"
##    When I fill in "Password" with "123456"
##    When I fill in "Confirmation" with "123456"
##    When I press "Create my account"
##    Then I should see the user page
##    And I logout to the forum
#
#  Scenario: Sign up a correct account
#    Given I go to the sign up page
#    When I fill in "Name" with "Nguyen Van B"
#    When I fill in "Email" with "email_test2@gmail.com"
#    When I fill in "Password" with "123456"
#    When I fill in "Confirmation" with "123456"
#    When I press "Create my account"
#    Then I should see the user page
#
#  Scenario Outline: Sign up a wrong account
#    Given I go to the sign up page
#    When I fill in "Name" with <name>
#    When I fill in "Email" with <email>
#    When I fill in "Password" with <password>
#    When I fill in "Confirmation" with <confirm password>
#    When I press "Create my account"
#    Then I should see <error message>
#  Examples:
#    |name          |email                  |password|confirm password| error message|
#    |""            |"email_test1@gmail.com"|"123456"|"123456"        |"Name can't be blank"|
#    |"Nguyen Van A"|""                     |"123456"|"123456"        |"Email can't be blank"|
#    |"Nguyen Van A"|"email_test1@gmail.com"|        |"123456"        |"Password can't be blank"|
#    |"Nguyen Van A"|"email_test1@gmail.com"|"123456"|                |"Password confirmation doesn't match Password"|
#    |"Nguyen Van A"|"email_test1@gmail.com"|"123456"|"123457"        |"Password confirmation doesn't match Password"|
#    |"Nguyen Van A"|"email_test1@gmail.com"|"12345" |"12345"         |"Password is too short (minimum is 6 characters)"|
#    |"Nguyen Van A"|"email_test1@gmail"    |"123456"|"123456"        |"Email is invalid"                               |
#    |"Nguyen Van A"|"email_test1@gmail"    |"123456"|"123456"        |"Email is invalid"                               |
#    |"Nguyen Van A"|"email_test1#^@gmail"  |"123456"|"123456"        |"Email is invalid"                               |