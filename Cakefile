# Cakefile for testing the project headlessly. Conveniently, this can be the
# npm test script.
exec = require("child_process").exec

test = (runner) ->
  exec runner, (err, stdout, stderr) ->
    console.error "Error: #{err}" if err?
    console.error(stderr) if stderr
    console.log(stdout) if stdout

task "test", "run all test suites", (options) ->
  invoke 'test:headless'
  invoke 'test:browser'

task "test:headless", "run the NodeJS test suite", ->
  test "./node_modules/.bin/mocha --compilers coffee:coffee-script"

task "test:browser", "run the PhantomJS test suite", ->
  test "./node_modules/.bin/mocha-phantomjs test/test.html"
