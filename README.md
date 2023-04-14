Time travel to 2008!
====================

This is a modified version of the nixpkgs from 2008, to allow some programs to successfully run and compile in 2023.

Here's how to start a temporary shell with Firefox, GIMP, Inkscape and Blender from 2008 available:

```
$ git clone git@github.com:blinry/nixpkgs.git
$ cd nixpkgs
$ nix-shell -p 'with (import ./. {}); [blender inkscape gimp firefox]'
```

This will take a long time to compile. If something goes wrong, feel free to open an issue (or try to fix it yourself, and submit a pull request)!

Check out the full documentation at https://blinry.org/nix-time-travel/.
