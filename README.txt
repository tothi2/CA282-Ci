This is the same as the "1-build-test" branch, except...

The make file (Makefile) actually consists of two separate stages: build and test.

Structure the GitLab CI pipeline as two separate stages:

  - https://docs.gitlab.com/ee/ci/yaml/#stage

More...

If you observe the stages of your pipeline execution on GitLab carefully, you will
observe that the C file was built at the "build" stage, discarded at the start of the
"test" stage, and then built again!

This obviously defeats the purpose of having the build stage.  And this matters for
large projects where the build stage is substantial, and several test jobs depend upon
the resulting build.

Use either a cache or an artifact:

  - https://docs.gitlab.com/ee/ci/yaml/#cache
  - https://docs.gitlab.com/ee/ci/yaml/#artifacts

to ensure that the build files (just "add", here) are passed correctly from the
build stage to the test stage, without the need for them to be rebuilt.
