#/usr/bin/env sh
cat tests/test_input | ./pymacro > tests/test_actual_output
git diff tests/test_actual_output tests/test_expected_output
