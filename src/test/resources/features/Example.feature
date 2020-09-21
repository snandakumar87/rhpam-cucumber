Feature: Example
  Scenario: Approval Flow
    Given the following process files:
      | com/myspace/simple_process_test/ExampleProcessOne.bpmn |
    Given the process definition ID "simple_process_test.ExampleProcessOne"
    Given a process parameter "message" with value "approval"
    When the process is started
    Then the following nodes were triggered:
      | Approval |
      | Approver |
    Then the process is active

  Scenario: Rejection Flow
    Given the following process files:
      | com/myspace/simple_process_test/ExampleProcessOne.bpmn |
    Given the process definition ID "simple_process_test.ExampleProcessOne"
    Given a process parameter "message" with value "rejection"
    When the process is started
    Then the following nodes were triggered:
      | Rejection |
    Then the process completed
    Then the process is not active
