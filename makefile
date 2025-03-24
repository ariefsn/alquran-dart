run.test:
	flutter test -r expanded

run.coverage:
	flutter test --coverage

run.dry:
	flutter pub publish --dry-run

publish:
	flutter pub publish

fix.dry:
	dart fix --dry-run

fix.apply:
	dart fix --apply