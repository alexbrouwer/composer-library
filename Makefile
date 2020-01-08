export MAKER_PATH ?= vendor/par/maker
ifneq ("$(wildcard $(MAKER_PATH)/Makefile)","")
	-include $(MAKER_PATH)/Makefile
else
	DEFAULT_TARGET = build
endif

.PHONY: init build test clean

## Init project
init: $(DEFAULT_TARGET)
	@exit 0;

## Clean project
clean:
	@rm -rf vendor .phpunit.result.cache clover.xml

## Build project
build: code/deps/install

## Test project
test: code/deps/validate code/check code/analyse

## Install dependencies
code/deps/install:
	@composer install --no-interaction

## Validate dependencies
code/deps/validate:
	@composer validate

## Check code
code/check:
	@composer -- check

## Analyse code
code/analyse:
	@composer -- analyse

## Fix code
code/fix:
	@composer -- cs-fix
