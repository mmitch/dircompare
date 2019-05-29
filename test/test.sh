#!/bin/bash

set -e

# before
ROOTDIR="$(mktemp -d dircompare-test.XXXXXX)"
cp ../dircompare "$ROOTDIR"
cp expected "$ROOTDIR"
pushd "$ROOTDIR"

# given
mkdir -p one/aaa/bbb
mkdir -p one/ccc

touch one/unchanged one/to_be_removed
touch one/aaa/bbb/to_be_renamed one/aaa/bbb/to_be_moved
touch one/ccc/to_be_moved_and_renamed

cp -rl one two

mkdir -p two/ccc/ddd

touch two/created
rm    two/to_be_removed
mv    two/aaa/bbb/to_be_renamed two/aaa/bbb/renamed
mv    two/aaa/bbb/to_be_moved   two/aaa
mv    two/ccc/to_be_moved_and_renamed two/ccc/ddd/moved_and_renamed

# when
./dircompare one two > actual

# then
diff expected actual
echo "Test OK"

# after (if successful)
popd
rm -r "$ROOTDIR"
