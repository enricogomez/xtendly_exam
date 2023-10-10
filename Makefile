## Setup Commands ----------------------------------------

pubs: ## Gets pubs
	flutter pub get

build_runner: ## Generates assets
	dart run build_runner build --delete-conflicting-outputs

format: ## Formats the codebase
	dart format .

## Rebuilds the project
rebuild: pubs build_runner format
