# 9.1 - How the Web Works

## Release 0: View HTTP Requests - FIND THE THING 2
### What are some common HTTP status codes?

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

## Release 0: View HTTP Requests - FIND THE THING 3
### What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource

Note that the query string (name/value pairs) is sent in the URL of a GET request:
/test/demo_form.asp?name1=value1&name2=value2

Some other notes on GET requests:

GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data
GET requests have length restrictions
GET requests should be used only to retrieve data

POST - Submits data to be processed to a specified resource

Note that the query string (name/value pairs) is sent in the HTTP message body of a POST request:
POST /test/demo_form.asp HTTP/1.1
Host: w3schools.com
name1=value1&name2=value2

Some other notes on POST requests:

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length

Compare GET vs. POST
http://www.w3schools.com/TAGS/ref_httpmethods.asp

## Release 0: View HTTP Requests - FIND THE THING 4
### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.

source: https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies

Cookies are mainly used for these three purposes:

Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)