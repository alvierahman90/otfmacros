#/usr/bin/env sh
./pymacro -s tests/test_input tests/test_actual_output
git diff tests/test_actual_output tests/test_expected_output

