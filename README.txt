This is not a task, rather it's just a demo.

A custom feature of the SoC GitLab runner service is that it supports
a per-repo (and per repo/branch) cache.

This is an area of disk on the runner server which persists between job/ci
runs.

The locations of the caches are given by the variables:

  - $CACHE
  - $JOB_CACHE

This branch demos the use of this cache for a large download.
