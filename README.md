Browser Crasher
===============

Crash current browsers with test cases from browser test suites. This project consists of the following components:

* crasher.html: run through test URLs
* getcrashers.sh: copy files containing the word 'crash' in their name from provided path and build testpages.js
* runhttpserver.sh: Run web server on port 8000 (uses Python SimpleHTTPServer)

Usage
=====

1. Get WebKit source: git clone https://github.com/WebKit/webkit.git
2. Run ./getcrashers.sh webkit/LayoutTests
3. Run ./runhttpserver.sh
4. Open http://localhost:8000/crasher.html in the browser of your choice.
5. Tweak delay (50ms is usually ok for local deployments) and click on 'Go!'

Trivial? I run this sometimes against mainstream browsers (Firefox, Chrome), usually there are crashes :)
