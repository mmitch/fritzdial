Feature: quit fritzdial
  As a user using fritzdial
  I want to be able to quit the program
  In order to do something else

  Background:
    Given a running fritzdial

  Scenario:
    When I enter "quit"
    Then fritzdial should quit

    @in_process
  Scenario:
    When I close stdin
    Then fritzdial should quit

