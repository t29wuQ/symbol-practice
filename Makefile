init:
	npm install
	npx symbol-bootstrap config -p bootstrap --password test
	npx symbol-bootstrap compose --password test
	npx symbol-bootstrap decrypt --password test --source target/addresses.yml --destination target/raw_address.yml

run-symbol:
	npx symbol-bootstrap run

run:
	npm run dev

clean:
	npx symbol-bootstrap clean
	sudo rm -rf ./target

.PHONY: init run-symbol run clean
