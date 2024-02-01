#!/bin/bash

cat deployment.yaml
buildnum=${BUILD_NUMBER}
echo "Build number old is : $buildnum"
old_build_no=echo "(( ${buildnum} - 1 ))"
sed -i s/"${old_build_no}/${BUILD_NUMBER}/g deployment.yaml
cat deployment.yaml
