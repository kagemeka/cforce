#!/bin/bash

# rustdoc src/lib.rs
cargo doc --no-deps
rm -rf ./docs
echo "<meta http-equiv=\"refresh\" content=\"0; url=build_wheel\">" > target/doc/index.html
cp -r target/doc ./docs
