# iOS Homework Assignment


## Tab 1: a table view

loads and displays the entries in the “now” key from [https://now.httpbin.org/](https://now.httpbin.org/)
Displays the last time it was loaded. The most recent date should persist between launches of the app
e.g.,:
{
"now": {
"epoch": 1513706003.3686037,
"iso8601": "2017-12-19T17:53:23.368604Z",
"rfc2822": "Tue, 19 Dec 2017 17:53:23 GMT",
"rfc3339": "2017-12-19T17:53:23.36Z",
"slang_date": "today",
"slang_time": "now"
},
"urls": [
"/",
"/docs",
"/when/:human-timestamp",
"/parse/:machine-timestamp"
]
}


each table view row should display the keys and values (e.g., epoch and 1513706003.3686037, respectively)
It’s up to you on how you want to display the last time this was reloaded.


## Tab 2: custom view

allow the user to select an HTTP status code (UI of your choice)
Depending on the status code selected, load and display the appropriate image from [https://http.cat/]( https://http.cat/)
additionally, display the appropriate HTTP status description.
for example, if the user selects 302, then the following description and image should be shown:
Found
https://http.cat/302


Requirements:
code cannot be copy-and-pasted from any other project or source\









