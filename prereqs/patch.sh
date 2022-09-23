#!/bin/bash

#
# Add the alt_text property to pptx shapes to identify images
# by their alt text given in powerpoint
#

patch python/lib/python3*/site-packages/pptx/oxml/shapes/shared.py prereqs/patch/shared.patch

patch python/lib/python3*/site-packages/pptx/shapes/base.py prereqs/patch/base.patch

