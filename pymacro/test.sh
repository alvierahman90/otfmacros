#/usr/bin/env sh
./pymacro -q tests/test_input tests/test_actual_output
git diff tests/test_actual_output tests/test_expected_output

