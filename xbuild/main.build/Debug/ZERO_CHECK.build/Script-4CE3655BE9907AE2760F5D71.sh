#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  make -f /Users/philipwenkel/Github/Modules_example_cmake/xbuild/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  make -f /Users/philipwenkel/Github/Modules_example_cmake/xbuild/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Kuk"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  make -f /Users/philipwenkel/Github/Modules_example_cmake/xbuild/CMakeScripts/ReRunCMake.make
fi

