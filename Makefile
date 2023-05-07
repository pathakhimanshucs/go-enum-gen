################################################################################
# LINT
################################################################################

.PHONY: lint
lint:
	docker run -t --rm -v $(CURDIR):/app -w /app golangci/golangci-lint:v1.52.2 golangci-lint run ./... -v --timeout=1m