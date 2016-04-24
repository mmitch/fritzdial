Feature: quit fritzdial
  As a user using fritzdial
  I want to be able to quit the program
  In order to do something else

  Background:
    Given a running fritzdial

  Scenario: enter quit
    When I enter "quit"
    Then fritzdial should quit

  @in_progress
  Scenario: close stdin
    When I close stdin
    Then fritzdial should quit

