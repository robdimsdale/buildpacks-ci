#!/usr/bin/env bash

set -ex
cd "$( dirname "${BASH_SOURCE[0]}" )/.."

bundle exec rspec --tag ~fly
pushd dockerfiles/depwatcher
  shards
  crystal spec --no-debug
popd

bundle exec rake

rm -rf source-*-latest