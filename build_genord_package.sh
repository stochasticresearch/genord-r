#!/bin/bash
reset

pushd .

# Remove Old versions
rm GenOrd_1.4.0.tar.gz
R CMD REMOVE --library=../install GenOrd

# build new version
R CMD build --no-build-vignettes --no-manual GenOrd

# install in our directory
R CMD INSTALL --library=../install GenOrd_1.4.0.tar.gz

popd
