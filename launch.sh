#!/bin/bash
#
# Simple launcher for Unix-style systems
#
# Author: Olivier Bilodeau <olivier@bottomlesspit.org>
# Copyright (C) 2011 Groupe Proserus inc.
# Licensed under the GPLv3
#

OSX_VERSION=`sw_vers -productVersion 2>&1`

# Mac OS X 10.5.2+ have java 6 but it's not installed in PATH
if [[ "$OSX_VERSION" =~ ^10\.5\.[2-9]$ ]]; then
    /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands/java -jar StockPortfolioLauncher.jar $@

# Mac OS X 10.5.0 and .1 don't have java 6
elif [[ "$OSX_VERSION" =~ ^10\.5\.([0-1])$ ]]; then
    echo "Your system is not supported. Please file a bug report if you think it can be supported."

# Mac OS X 10.4 and before can't run java 6
elif [[ "$OSX_VERSION" =~ ^10\.[0-4]\..*$ ]]; then
    echo "Your system is not supported. Please file a bug report if you think it can be supported."

else

    # Linux, Mac OX 10.6 and hopefully most other sane Unixes
    java -jar StockPortfolioLauncher.jar $@
fi


