# pymacro

A python implementation of the macros spec

## usage
```
usage: pymacro [-h] [-m MACROS] [-s] input output

positional arguments:
  input                 The file to be processed
  output                The location of the output

optional arguments:
  -h, --help            show this help message and exit
  -m MACROS, --macros MACROS
                        Extra files where macros are stored
  -q, --quiet           Do not print processed file

```

## testing

Run `test.sh`.
A `diff` is run on the actual output against what should have come out according
to the spec.
