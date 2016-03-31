# Introduction #

This document describes the pre-processing step in `flintjs`.


# Special files #

If a source directory contains files named `_header.js` or `_footer.js`, these files will be prepended or appended to the rest of the directory's source files, respectively. These files will also be skipped during the instrumentation phase when using [JSCoverage](http://siliconforks.com/jscoverage/).


# Pre-processing directives #

## `//#REQUIRE "path/to/file"` ##

Indicates that the current file depends on another file and should be concatenated after the required file. This directive does not actually insert the required file's contents.

## `//#INSERTFILE "path/to/file"` ##

Inserts the given file in place of the directive. Similar to `#include` in C/C++.

## `//#ECHO foo` ##

Echos the given text in place of the directive. Most useful in `_header.js` or `_footer.js` to avoid lint errors.

## `//#BEGIN_TEST` ##

Begins a test block. Test blocks are removed from the source during concatenation. When generating the test suite using `ant tests`, all test blocks are concatenated separately. The default test harness looks for functions whose names start with `test_` inside of these test blocks.

An example usage of this directive, as it would appear inside a JavaScript source file, is shown below:

```
Foo.prototype.bar = function(x) {
  return x + 1;
};
//#BEGIN_TEST
function test_Foo_bar() {
  var foo = new Foo();
  assertEquals(2, foo.bar(1));
}
//#END_TEST
```

## `//#END_TEST` ##

Closes a test block.