#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ -std=c++2a -stdlib=libc++ -fmodules -c /Users/philipwenkel/Github/Modules_example_cmake/modules/speech.cpp -Xclang -emit-module-interface -o /Users/philipwenkel/Github/Modules_example_cmake/xbuild/modules/speech.pcm
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ -std=c++2a -stdlib=libc++ -fmodules -c /Users/philipwenkel/Github/Modules_example_cmake/modules/speech.cpp -Xclang -emit-module-interface -o /Users/philipwenkel/Github/Modules_example_cmake/xbuild/modules/speech.pcm
fi
if test "$CONFIGURATION" = "Kuk"; then :
  cd /Users/philipwenkel/Github/Modules_example_cmake/xbuild
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ -std=c++2a -stdlib=libc++ -fmodules -c /Users/philipwenkel/Github/Modules_example_cmake/modules/speech.cpp -Xclang -emit-module-interface -o /Users/philipwenkel/Github/Modules_example_cmake/xbuild/modules/speech.pcm
fi

