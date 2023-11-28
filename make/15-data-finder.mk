# This file was generated by @liquid-labs/sdlc-projects-workflow-node-build. Refer
# to https://npmjs.com/package/@liquid-labs/sdlc-projects-workflow-node-build for
# further details

SDLC_DATA_SELECTOR=\( -path "*/test/data/*"  -o -path "*/test/data-*/*" -o -path "*/test-data/*" \)

# all test data (cli and lib)
SDLC_TEST_DATA_SRC:=$(shell find $(SRC) -type f $(SDLC_DATA_SELECTOR))
SDLC_TEST_DATA_BUILT:=$(patsubst $(SRC)/%, $(TEST_STAGING)/%, $(SDLC_TEST_DATA_SRC))
