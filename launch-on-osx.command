#!/bin/bash
#
# Simple launcher for OSX systems
#
# Author: Olivier Bilodeau <olivier@bottomlesspit.org>
# Copyright (C) 2011 Groupe Proserus inc.
# Licensed under the GPLv3
#
echo "Don't close this window until you are done with Stock-Portfolio-Manager"

OSX_VERSION=`sw_vers -productVersion 2>&1`
# Mac OS X 10.5.2+ have java 6 but it's not installed in PATH
if [[ "$OSX_VERSION" =~ ^10\.5\.[2-9]$ ]]; then
    CUR_DIR=`dirname "$0"`
    /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands/java -jar "$CUR_DIR/StockPortfolioLauncher.jar" $@

# Mac OS X 10.5.0 and .1 don't have java 6
elif [[ "$OSX_VERSION" =~ ^10\.5\.([0-1])$ ]]; then
    echo "Your system is not supported. Please file a bug report if you think it can be supported."

# Mac OS X 10.4 and before can't run java 6
elif [[ "$OSX_VERSION" =~ ^10\.[0-4]\..*$ ]]; then
    echo "Your system is not supported. Please file a bug report if you think it can be supported."

else

    # Mac OX 10.6+
    CUR_DIR=`dirname "$0"`
    echo "Note: You can also run the program by double-clicking on StockPortfolioLauncher.jar"
    java -jar "$CUR_DIR/StockPortfolioLauncher.jar" $@
fi

