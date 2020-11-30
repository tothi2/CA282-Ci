This is now a Java project.

Read the make file (Makefile).

There are four Java source files which are bundled together into a Java
archive (.jar) file.

This is the result of the build.

GitLab supports "artifacts", whereby build files are posted back to the
GitLab server, from where they can later be downloaded.

Complete the GitLab CI config file making...

  build/arithmetic.jar

an artifact.

Be sure to set a suitable expiration date:

  - https://docs.gitlab.com/ee/ci/yaml/#artifactsexpire\_in
