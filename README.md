# TIFF-To-MBTILES-Converter
## How To Install GDAL/OGR Packages on Ubuntu
GDAL is a translator library for raster and vector geospatial data formats.

OGR Simple Features Library is a C++ open source library (and commandline tools) providing read (and sometimes write) access to a variety of vector file formats including ESRI Shapefiles, S-57, SDTS, PostGIS, Oracle Spatial, and Mapinfo mid/mif and TAB formats.

OGR is a part of the GDAL library.

GDAL/OGR are used in numerous GIS software projects and, lucky for us, there are bindings for python. In fact, you may want to check out the Python GDAL/OGR Cookbook.

This article describes a process you can follow to install GDAL/OGR on Ubuntu.

Before You Begin: Python 3.6
If you are installing the GDAL/OGR packages into a virtual environment based on Python 3.6, you may need to install the python3.6-dev package.

```bash
sudo apt-get install python3.6-dev
```

For more information about creating virtual environments on Ubuntu 16.04 LTS, see A Note About Python 3.6 and Ubuntu 16.04 LTS.

Install GDAL/OGR
Much of this section is taken from a really helpful blog post by Sara Safavi. Follow these steps to get GDAL/OGR installed.

To get the latest GDAL/OGR version, add the PPA to your sources, then install the gdal-bin package (this should automatically grab any necessary dependencies, including at least the relevant libgdal version).

```bash
sudo add-apt-repository ppa:ubuntugis/ppa
```

Once you add the repository, go ahead and update your source packages.

```bash
sudo apt-get update
```

Now you should be able to install the GDAL/OGR package.

```bash
sudo apt-get install gdal-bin
```
To verify the installation, you can run ogrinfo --version.

ogrinfo --version
You will need the GDAL version to install the correct python bindings.

Install GDAL for Python
Before installing the GDAL Python libraries, you’ll need to install the GDAL development libraries.

```bash
sudo apt-get install libgdal-dev
```
You’ll also need to export a couple of environment variables for the compiler.

export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
Now you can use pip to install the Python GDAL bindings.

pip install GDAL==<GDAL VERSION FROM OGRINFO>
Putting It All Together
  
  
If you want to run the whole process at once, we’ve collected all the commands above in the script below.

#!/usr/bin/env bash

sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
sudo apt-get update
sudo apt-get install gdal-bin
sudo apt-get install libgdal-dev
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
pip install GDAL
