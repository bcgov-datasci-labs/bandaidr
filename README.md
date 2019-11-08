<!-- Add a project state badge
See https://github.com/BCDevExchange/Our-Project-Docs/blob/master/discussion/projectstates.md
If you have bcgovr installed and you use RStudio, click the 'Insert BCDevex Badge' Addin. -->

bandaidr
========

Description of package *Initiated: Nov. 8, 2019 at the BC gov
R-hackathon in Prince George*

### Features

1.  Read in Satellite data

-   needs a function to get the data

<<<<<<< HEAD
1.  Name and Store the names of the bands (e.g. RGB, nIR, swir(?))

-   add names
-   satellites supported
-   look-up table of the bands

1.  Provide information about the bands. This could be vignette-popups
    with a short description and links to further information.

![Sentinel Bands
(10m)](https://sentinel.esa.int/image/image_gallery?uuid=c5fa6c3e-2978-4fb8-ac95-3be9c5171be2&groupId=247904&t=1345630320883)

### Resources for Group

*resources and items to consider*

-   Various Satelites programs and the various the products that are
    available – *need to clarify the scope of sat. programs supported*.

#### LandSat Products

-   LANDSAT\_ETM\_C1
-   LANDSAT\_MSS\_C1
-   LANDSAT\_TM\_C1
-   LANDSAT\_8\_C1

#### Naming Convensions

-   [Sentinel Naming
    Convensions](https://sentinel.esa.int/web/sentinel/user-guides/sentinel-2-msi/naming-convention)
-   [Landsat Naming
    Convensions](https://www.usgs.gov/faqs/what-naming-convention-landsat-collections-level-1-scenes?qt-news_science_products=0#qt-news_science_products)

### Accounts needed

-   [USGS Landsat Registration](https://ers.cr.usgs.gov/register/)
    -   this covers MODIS and Landsat data
-   [Sentinel](https://scihub.copernicus.eu/dhus/)
=======
1.  Name and Store the names of the bands (e.g. RGB, nIR, swril)

-   add names
-   satellites supported
-   look-up table of the bands (Alex has one)
>>>>>>> 244b2b1f7ed8b43e7943c2b1552f520fe829e55c

### Installation

*NOT yet*

### Usage

<<<<<<< HEAD
=======
``` r
library(bomrang)
bom <- get_satellite_imagery("IDE00420.201911080500.tif")

band_label(bom)
```

>>>>>>> 244b2b1f7ed8b43e7943c2b1552f520fe829e55c
#### Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

### Project Status

<<<<<<< HEAD
Initiated

=======
>>>>>>> 244b2b1f7ed8b43e7943c2b1552f520fe829e55c
### Getting Help or Reporting an Issue

To report bugs/issues/feature requests, please file an
[issue](https://github.com/bcgov/bandaidr/issues/).

### How to Contribute

If you would like to contribute to the package, please see our
[CONTRIBUTING](CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.

### License

    Copyright 2019 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and limitations under the License.

------------------------------------------------------------------------

*This project was created using the
[bcgovr](https://github.com/bcgov/bcgovr) package.*
