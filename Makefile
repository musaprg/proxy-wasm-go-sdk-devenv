DCRUN := docker-compose run --rm sandbox

build.examples:
	@$(DCRUN) $(MAKE) build.examples
.PHONY: build.examples

test.e2e: build.examples
	@$(DCRUN) $(MAKE) test.e2e
.PHONY: test.e2e

run:
	@$(DCRUN) $(MAKE) ${ARG}
.PHONY: run

