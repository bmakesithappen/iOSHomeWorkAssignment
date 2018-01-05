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
code cannot be copy-and-pasted from any other project or source

## Resources that were helpful


[iOS Development with Swift Tutorial - 17 - Multiple Views or Screens](https://www.youtube.com/watch?v=B9yV4YeEmNA)

[iOS Development with Swift Tutorial - 18 - Adding Brains to the View](https://www.youtube.com/watch?v=EdRSoh1Y9Hw)

[iOS Development with Swift Tutorial - 19 - StoryBoards and Scenes](https://www.youtube.com/watch?v=Mhko_0ixnqo)

[Codable in Swift 4.0](https://medium.com/@sarunw/codable-in-swift-4-0-1a12e38599d8)

[Saw list of HTTP codes set as ranges](https://github.com/rhodgkins/SwiftHTTPStatusCodes/blob/master/Sources/HTTPStatusCodes%2BExtensions.swift)

[Loop through Dictionary](https://iswift.org/cookbook/loop-through-dictionary)

[Cookbook Using NSURLSession](https://www.raywenderlich.com/67081/cookbook-using-nsurlsession)
<<<<<<< HEAD
[How to pull internet data in iOS Apps](https://swiftludus.org/how-to-pull-internet-data-in-ios-apps )
=======

[How to pull internet data in iOS Apps](https://swiftludus.org/how-to-pull-internet-data-in-ios-apps/)

>>>>>>> 4c88310ee05d04fcd4e3daacf2036b92d0b95b93
[UITableView Tutorial for beginners](http://www.thomashanning.com/uitableview-tutorial-for-beginners/)

TableViews Thinkful Lesson














