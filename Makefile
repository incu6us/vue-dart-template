DEP_DIR := .deps
VUE_DEP_DIR := ${DEP_DIR}/vuedart

MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR := $(patsubst %/,%,$(dir $(MAKEFILE_PATH)))


.PHONY: get-deps
get-deps: cleanup
	@echo "Getting the dependencies..."
	@git clone https://github.com/refi64/vuedart ${VUE_DEP_DIR}
	@cd ${VUE_DEP_DIR} && git switch -c 9e0af29a3436b982c1f6e56c339eafe8bcce6444
	@pub get

.PHONY: cleanup
cleanup:
	@test -d ${DEP_DIR} && rm -rf ${DEP_DIR}
