#!/bin/bash -ex

# Tar up the staged release, all the pom files, and some build files. We will use these in
# subsequent build steps to perform the actual release.
tar -zcvf target/docker-client-staged-release.tar.gz `find . -name nexus-staging && find . -name pom.xml`
