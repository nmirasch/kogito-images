@quay.io/kiegroup/kogito-builder @quay.io/kiegroup/kogito-runtime-jvm @quay.io/kiegroup/kogito-runtime-native @quay.io/kiegroup/kogito-data-index-infinispan @quay.io/kiegroup/kogito-data-index-mongodb @quay.io/kiegroup/kogito-trusty
Feature: Common tests for Kogito images

  Scenario: Verify if Kogito user is correctly configured
    When container is started with command bash
    Then run bash -c 'echo $USER' in container and check its output for kogito
     And run sh -c 'echo $HOME' in container and check its output for /home/kogito
     And run sh -c 'id' in container and check its output for uid=1001(kogito) gid=0(root) groups=0(root),1001(kogito)

