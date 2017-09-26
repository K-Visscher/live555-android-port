# live555-android-port

A port for the [live555](http://www.live555.com) library which offers glorious RTP streaming functionality. The library had some problems being compiled by the Android NDK, I mainly changed some implementations detail such as using socklen_t's instead of int's which Android's g++ was particularly picky about and some other minor details.

There are some various other live555 ports on GitHub however they're terribly outdated or simply weren't working for me.
If this repository seems to be not working for you or is in danger of becoming outdated, please open a issue. :3 

This port was tested and build with:
* NDK (r15c)
* live.2017.09.12
* Android-24

## Building
1. Clone this repository: `git clone --bare https://github.com/tvisscher/live555-android-port.git`
2. Add the NDK Tools to your PATH: `export PATH=$PATH:/your/path/to/android/sdk/ndk-bundle`
3. Go into your cloned repository: `cd /your/path/to/live555-android-port/jni`
4. Build: `ndk-build APP_PLATFORM=YOUR_TARGET_API` (e.g android-24)
5. Use the build *.so or *.a libraries.


## LICENSE
The library is GPL and LGPL licensed.
