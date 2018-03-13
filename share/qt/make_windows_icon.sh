#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/Zeon.ico

convert ../../src/qt/res/icons/Zeon-16.png ../../src/qt/res/icons/Zeon-32.png ../../src/qt/res/icons/Zeon-48.png ${ICON_DST}
