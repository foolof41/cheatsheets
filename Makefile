PORT ?= 3000
bundle := env BUNDLE_GEMFILE=./_/Gemfile bundle

start: bundle
	${bundle} exec jekyll serve --safe --drafts --watch --port ${PORT}

build: bundle
	${bundle} exec jekyll build --safe

bundle:
	${bundle}
