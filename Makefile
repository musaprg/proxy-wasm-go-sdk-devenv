DCRUN := docker-compose --compatibility run --rm sandbox

build.examples:
	@$(DCRUN) $(MAKE) build.examples
.PHONY: build.examples

test.e2e: build.examples
	@$(DCRUN) $(MAKE) test.e2e
.PHONY: test.e2e

test.e2e.single: build.examples
	@$(DCRUN) $(MAKE) test.e2e.single name=${name}

run:
	@$(DCRUN) $(MAKE) ${ARG}
.PHONY: run

