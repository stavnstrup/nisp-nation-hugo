# nisp-nation


[![Linux Build Status](https://travis-ci.org/stavnstrup/nisp-nation.svg?branch=master)](https://travis-ci.org/stavnstrup/nisp-nation)

Hugo based generation of the NISP website

The XSLT stylesheet is used to transform the NISP database, fetched by travis at http://github.com/stavnstrup/nisp-tools in the directory src/standards/.

Subsequently the XSLT stylesheet *db2data.xsl* in the *_xslt* directory is applied to the database resulting in YAML representations of all objects in the database. The objects are stored in files in Hugo content sections, which is subsequently processed by Hugo. The complete process is documented in the Travis configuration file.
