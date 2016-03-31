`flintjs` is a small JavaScript build framework, designed for building JS libraries. It's powered by Apache Ant.

## Features ##

The framework provides the following for JavaScript projects:

  * Source file concatenation, including support for dependencies using the `//#REQUIRE` [pre-processing directive](Preprocessing.md).
  * Automatic minification, powered by [YUI Compressor](http://developer.yahoo.com/yui/compressor/).
  * Documentation generation, powered by [JsDoc Toolkit](http://code.google.com/p/jsdoc-toolkit/).
  * A test harness, powered by [JsUnit](http://www.jsunit.net/). [JSCoverage](http://siliconforks.com/jscoverage/) support is built-in but the `jscoverage` binary must be downloaded separately.
  * Immediate access to [JSLint](http://www.jslint.com/) for all source files.

Projects that use, or are based on, `flintjs` include the [Android Asset Studio](http://code.google.com/p/android-ui-utils/source/browse/asset-studio/), [geojs](http://code.google.com/p/geojs), and the [Earth API Utility Library](http://code.google.com/p/earth-api-utility-library)

## Prerequisites ##

  * Python 2.5
  * Apache Ant 1.7

## Getting Started ##

  1. [Download flintjs](http://code.google.com/p/flintjs/downloads/list) or checkout the source from this repository.
  1. Add the `bin` directory to your environment's `PATH`. You can also invoke the `flintjs` binary without modifying your `PATH`.
  1. Run the following command to create a skeleton JavaScript project:
```
flintjs -n myproject -p myproject -d "My example JavaScript library project."
```
  1. Finally, compile the project by running `ant` from within your new project's directory.

Several other build targets are available for the test harness and test coverage, documentation, etc. To see all available targets run `ant -p` from within your new project's directory.