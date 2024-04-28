.PHONY: all denied pre-bootstrap pub-get build-init build-resource run-dev run-staging run-prod run-test build-apk build-aab build-ipa clean format clean upgrade help

all: lint format run-dev

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done


# Starting this source by: denied pre-bootstrap pub-get build-init build-resource
denied:
	@cd scripts && chmod +x pre-bootstrap.sh

pre-bootstrap:
	@echo "╠ Running script pre-bootstrap.sh..."
	@cd scripts && ./pre-bootstrap.sh
	@echo "╠ Installing FVM"
	@fvm install 3.19.0
	@fvm use 3.19.0 --force
	@fvm flutter --version

pub-get: clean
	@echo "╠ Flutter pub get..."
	@fvm flutter pub get

build-init: pub-get ## Init with launcher icon & splash
	@echo "╠ Creating launcher icon"
	@fvm dart run flutter_launcher_icons
	@echo "╠ Creating splash screen"
	@fvm dart run flutter_native_splash:create

build-resource: ## Generate assets & strings
	@echo "╠ Generating assets"
	@fvm dart run build_runner build  --delete-conflicting-outputs
	@echo "╠ Generating strings"
	@fvm dart run intl_utils:generate
# End starting source

run-dev: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@fvm flutter run

run-staging: ## Runs the mobile application in staging
	@echo "╠ Running the app in staging"
	@fvm flutter run --flavor staging --debug

run-prod: ## Runs the mobile application in production
	@echo "╠ Running the app in prod"
	@fvm flutter run --flavor prod --debug

build-apk: clean run-test #Build the application in apk
	@echo "╠ Building the app in apk"
	@fvm flutter build apk --release --flavor prod --no-shrink --build-name ${buildName} --build-number ${buildNumber}

build-aab: clean run-test #Build the application in aab
	@echo "╠ Building the app in aab"
	@fvm flutter build appbundle --release --flavor prod --no-shrink --build-name ${buildName} --build-number ${buildNumber}

build-ipa: clean run-test #Build the application in ipa
	@echo "╠ Building the app in ipa"
	@fvm flutter build ipa --release --flavor prod --export-options-plist='ios/ExportOptions.plist' --build-name ${buildName} --build-number ${buildNumber}

# Supporting commands
run-test: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@fvm flutter clean

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@fvm flutter pub upgrade
