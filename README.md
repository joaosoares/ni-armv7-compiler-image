# National Instruments ARMv7 compiler image
This image builds the National Instruments Cross-compiler for Linux hosts so you can use it on any platform with Docker installed (including MacOS).

## Building the image
Download the file `oecore-x86_64-cortexa9-vfpv3-toolchain-5.0.sh` from the [NI Website](http://www.ni.com/download/labview-real-time-module-2017/6760/en/) and add it to the current folder. It is not included here due to copyright reasons and its large filesize.

Run the command

```
docker build -t ni-armv7-compiler .
```

And now the image has been built!

## Usage
To see an example of how to use this image along with docker-compose to produce executables, see the project [joaosoares/ni-armv7-docker-starter](https://github.com/joaosoares/ni-armv7-docker-starter).
