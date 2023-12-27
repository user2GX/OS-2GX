# OS-2GX
Working on my own OS. I'm making it in pure assembly.
Kernel should work, and for Linux users..

CD into the main trunk/folder of the repository either
when cloning or downloading the zip, then type in:

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
