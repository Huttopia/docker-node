step=-----------------------

# HELP MENU
all: help
help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1.  make build    - Build image"
	@echo "   2.  make enter    - Enter in bash to container"
	@echo ""

# Manage
build:
	@echo "$(step) Building $(step)"
	@docker build --tag=huttopia/nodejs-bower-gulp-eslint:latest .

bash:
	@docker run --rm -it --name huttopia-nodejs-bower-gulp-eslint huttopia/nodejs-bower-gulp-eslint:latest bash
