# Red Hat Process Automation Manager Testing Using Cucumber

This project makes testing of RHPAM processes with Cucumber easier by implementing some useful integrations and default step definitions.  Here are the features:

1. BPMN assets to be tested are included as a dependency in the [pom.xml](pom.xml) file.  This way the tests can be separate from the process definitions.
2. Default [step definitions](src/test/java/org/jbpm/cucumber/DefaultStepDefinitions.java) and [example feature file](src/test/resources/features/Example.feature) define an easy way to interact with processes.
3. An [example custom step definition file](src/test/java/org/jbpm/cucumber/custom/CustomStepDefinitions.java) is included to add custom interactions.
4. A [JBPM Test Utility class](src/test/java/org/jbpm/cucumber/JbpmTestUtil.java) is used for both default and custom step definitions and is based on the [JbpmUnitBaseTestCase class](https://github.com/kiegroup/jbpm/blob/master/jbpm-test/src/main/java/org/jbpm/test/JbpmJUnitBaseTestCase.java) so many of the useful assertions can be leveraged
5. The [Cucumber Picocontainer](https://github.com/cucumber/cucumber-jvm/tree/master/picocontainer) is used to share the running process state (in the JbpmTestUtil class) between the default and custom step definition files.

## Instructions

1. Clone https://github.com/snandakumar87/cucumber-test-project
2. ```
   cd simple_process_test
   mvn clean install 
   ```
3. Run the Example.feature or mvn clean test. The test reports are available @ /target/surefire-reports  

 