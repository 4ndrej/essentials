#!/bin/sh
# http://blog.tplus1.com/blog/2007/08/29/how-to-use-vimdiff-as-the-subversion-diff-tool/

# Configure your favorite diff program here.
DIFF="/usr/bin/vimdiff"

# Subversion provides the paths we need as the sixth and seventh 
# parameters.
LEFT=${6}
RIGHT=${7}

# Call the diff command (change the following line to make sense for
# your merge program).
#$DIFF --left $LEFT --right $RIGHT
$DIFF $LEFT $RIGHT

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
