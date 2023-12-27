# OS-2GX
Working on my own OS. I'm making it in pure assembly.
Kernel should work, and for Linux users..

If you're in a command line interface, move into 
the folder of the repository either when cloning
or downloading the zip, then type in:

```
make
```
It will repeat the commands inside of the make file, and
that means the modified code in the build directory
is updated and a new floppy image was made.

I use qemu, and it works on qemu. Please send me any issues
and send a response on how to fix the color & raw issue
returned by qemu. To run it in qemu, use this command:

```
qemu-system-i386 -fda build/os2gx.img
```

When running the make file, it will say something
about maximum byte size. Ignore that! Only post an
issue if there's something actually preventing you
from making the source, or running the image.
