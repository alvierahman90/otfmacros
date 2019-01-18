#/usr/bin/env sh
./pymacro -sm tests/test_macros_plural -m tests/test_macros_biology tests/test_input tests/test_actual_output
diff tests/test_actual_output tests/test_expected_output

