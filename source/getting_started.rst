.. _getting-started:

********************************************************************************
Getting Started
********************************************************************************

This chapter gives a very quick overview of installing |qg|, some sample
data from the web page and running a first and simple session
visualizing raster and vector layers.

Installation
================================================================================

Installation of |qg| is very simple.
Standard installer packages are available for MS Windows and Mac OS
X. For many flavors of GNU/Linux binary packages (rpm and deb) or
software repositories to add to your installation manager are
provided. Get the latest information on binary packages at the
website at http://download.qgis.org.

Installation from source
--------------------------------------------------------------------------------

If you need to build from source, please
refer to the coding and compiling guide available at
http://www.qgis.org/en/documentation/manuals.html. The installation
instructions are also distributed with the source code.

Installation on external media
--------------------------------------------------------------------------------

QGIS allows to define a -configpath
option that overrides the default path (e.g. :cmd-txt:`/.qgis` under Linux)
for user configuration and forces QSettings to use this directory,
too. This allows users to e.g. carry a QGIS installation on a flash
drive together with all plugins and settings.

Sample Data
================================================================================

The user guide contains examples based on the |qg| sample dataset.

|win| The Windows installer has an option to download the |qg| sample dataset.
If checked, the data will be downloaded to your
:cmd-txt:`My Documents` folder and placed in a folder called 
:cmd-txt:`GIS Database`. You may use Windows Explorer to move this folder to 
any convenient location. If you did not select the checkbox to install the 
sample dataset during the initial installation, you can either

*  use GIS data that you already have;
*  download the sample data from the qgis website at
   http://download.qgis.org; or
*  uninstall and reinstall with the data download option checked,
   only if the above solutions are unsuccessful.


|nix| |osx|  For GNU/Linux and Mac OSX there are not yet dataset
installation packages available as rpm, deb or dmg. To use the
sample dataset download the file :cmd-txt:`qgis_sample_data` as ZIP or
TAR archive from http://download.osgeo.org/qgis/data/ and unzip or
untar the archive on your system. The Alaska dataset includes all
GIS data that are used as examples and screenshots in the user
guide, and also includes a small GRASS database. The projection for
the qgis sample dataset is Alaska Albers Equal Area with unit feet.
The EPSG code is 2964.

::

    PROJCS["Albers Equal Area",
        GEOGCS["NAD27",
            DATUM["North_American_Datum_1927",
                SPHEROID["Clarke 1866",6378206.4,294.978698213898,
                    AUTHORITY["EPSG","7008"]],
                TOWGS84[-3,142,183,0,0,0,0],
                AUTHORITY["EPSG","6267"]],
            PRIMEM["Greenwich",0,
                AUTHORITY["EPSG","8901"]],
            UNIT["degree",0.0174532925199433,
                AUTHORITY["EPSG","9108"]],
            AUTHORITY["EPSG","4267"]],
        PROJECTION["Albers_Conic_Equal_Area"],
        PARAMETER["standard_parallel_1",55],
        PARAMETER["standard_parallel_2",65],
        PARAMETER["latitude_of_center",50],
        PARAMETER["longitude_of_center",-154],
        PARAMETER["false_easting",0],
        PARAMETER["false_northing",0],
        UNIT["us_survey_feet",0.3048006096012192]]

If you intend to use as graphical frontend for GRASS, you can find
a selection of sample locations (e.g. Spearfish or South Dakota) at
the official GRASS GIS website
http://grass.osgeo.org/download/data.php.

.. _getting-started-sample-session:

Sample Session
================================================================================

Now that you have installed and a sample dataset available, we
would like to demonstrate a short and simple sample session. We
will visualize a raster and a vector layer. We will use the
landcover raster layer
|qg| :cmd-txt:`_sample_data/raster/landcover.img` and the lakes vector
layer :cmd-txt:`_sample_data/gml/lakes.gml`.

Start |qg|

*  |nix| Start |qg| by typing: |qg| at a command prompt, or
   if using precompiled binary, using the Applications menu.
*  |win| Start |qg| using the Start menu or desktop shortcut, 
   or double click on a |qg| project file.
*  |osx| Double click the icon in your Applications folder.


..  figure:: images/getting_started_screenies/simple_session.png
    :width: 100%
    
    A Simple |qg| Session |nix|

Load raster and vector layers from the sample dataset

#. Click on the |mActionAddRasterLayer| :tool-name:`Load Raster` icon.
#. Browse to the folder :cmd-txt:`qgis_sample_data/raster/`, select the
   ERDAS Img file :cmd-txt:`landcover.img` and click 
   :button-name:`Open`.
#. If the file is not listed, check if the Filetype combobox at the
   bottom of the dialog is set on the right type, in this case "Erdas
   Imagine Images (\*.img, \*.IMG)"
#. Now click on the |mActionAddOgrLayer| :tool-name:`Load Vector` icon.
#. :radio-name:`File` should be selected as Source Type in the new
   :dialog-name:`Add Vector Layer` dialog. Now click 
   :button-name:`Browse` to select the vector
   layer.
#. Browse to the folder :cmd-txt:`qgis_sample_data/gml/`, select "GML"
   from the filetype combobox, then select the GML file :cmd-txt:`lakes.gml`
   and click :button-name:`Open`, then in Add Vector dialog click 
   :button-name:`OK`.
#. Zoom in a bit to your favorite area with some lakes.
#. Double click the :cmd-txt:`lakes` layer in the map legend to open the
   :dialog-name:`Properties` dialog.
#. Click on the :tab-name:`Style` tab and select a blue as fill color.
#. Click on the :tab-name:`Labels` tab and check the :check-name:`Display 
   labels` checkbox to
   enable labeling. Choose NAMES field as field containing label.
#. To improve readability of labels, you can add a white buffer around
   them, by clicking "Buffer" in the list on the left, checking
   :check-name:`Buffer labels?` and choosing 3 as buffer size.
#. Click :button-name:`Apply`, check if the result looks good and 
   finally click :button-name:`OK`.

You can see how easy it is to visualize raster and vector layers
in . Let's move on to the sections that follow to learn more about
the available functionality, features and settings and how to use
them.

.. |mActionAddRasterLayer| image:: images/images/mActionAddRasterLayer.png
.. |mActionAddOgrLayer| image:: images/images/mActionAddOgrLayer.png

