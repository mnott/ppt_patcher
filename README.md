# PPT Patcher

Take a PowerPoint file and replace images by other images.

- [Introduction](#introduction)
- [Principle](#principle)
- [Prerequisites](#prerequisites)

The only condition is that you need to set the alt text
within PowerPoint for the images that you want to replace,
by the name of the new image files.

# Introduction

Just use

```
./ppt_patcher.py --help
```

to understand the different commands; the main command is
`patchslides`, so you can do

```
./ppt_patcher.py patchslides --help
```

for more information.


# Principle

PowerPoint allows to set an Alt-Text for an image. Just
right-click on the image, and find the menu entry
`View Alt Text ...`

This opens a text entry field into which you put a path
to the image you want to replace it with. For example,
consider something like

```
manual/forecast.png
```

If you then start the program like this:

```
./ppt_patcher.py patchslides --input template.pptx \
                             --outfile output.pptx \
                             --images my_images
```

each image in the file template.pptx that you have
annotated via its alt text with `manual/forecast.png`
will be replaced by `my_images/manual/forecast.png`.

The default value of the `images` parameter is just
the current directory.

# Prerequisites

The default Python pptx module does not support the
alt text. For this reason, you need to patch it:
look at the `prereqs` directory; it contains a
`patch.sh` shell script and a patch directory.
Copy both patch.sh and the patch directory into
whereever your python virtual environment is that
you are currently using. Go into that directory and
call `patch.sh` (for this, the pptx module needs to
be installed). If you patch twice, the script will
offer you to unpatch. Alternatively, use setup.sh.
