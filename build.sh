#!/bin/sh
libPath=/home/dthompson/Repos/aflat/libraries/std
/home/dthompson/Repos/aflat/bin/main src/main.af out.s
/home/dthompson/Repos/aflat/bin/main src/Client.af client.s
/home/dthompson/Repos/aflat/bin/main src/Project.af project.s
gcc -g -O0 -no-pie out.s client.s project.s $libPath/asm.s $libPath/std.s $libPath/io.s $libPath/collections.s $libPath/math.s $libPath/strings.s $libPath/files.s $libPath/concurrancy.s
