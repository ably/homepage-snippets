all: clean dist/chat.js dist/gps.js dist/iot.js dist/live-updates.js dist/multi-user.js

dist/chat.js:
	@echo generating dist/chat.js
	@mkdir -p dist
	@ruby -r erb -e "print ERB.new(File.read('src/chat.js.erb')).result(binding)" > dist/chat.js

dist/gps.js:
	@echo generating dist/gps.js
	@mkdir -p dist
	@ruby -r erb -e "print ERB.new(File.read('src/gps.js.erb')).result(binding)" > dist/gps.js

dist/iot.js:
	@echo generating dist/iot.js
	@mkdir -p dist
	@ruby -r erb -e "print ERB.new(File.read('src/iot.js.erb')).result(binding)" > dist/iot.js

dist/live-updates.js:
	@echo generating dist/live-updates.js
	@mkdir -p dist
	@ruby -r erb -e "print ERB.new(File.read('src/live-updates.js.erb')).result(binding)" > dist/live-updates.js

dist/multi-user.js:
	@echo generating dist/multi-user.js
	@mkdir -p dist
	@ruby -r erb -e "print ERB.new(File.read('src/multi-user.js.erb')).result(binding)" > dist/multi-user.js

clean:
	@echo cleaning dist directory
	@rm -rf dist

.PHONY: all clean
