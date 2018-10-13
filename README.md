67-442: Simple Delegate Example
===

This project is a very basic project to simply illustrate how the delegate pattern works in iOS development.  In this case, we see the five steps of the delegate process as follows:

1. The AddViewController sets up a simple protocol (or contract) that it requires any delegate to follow, in this case, the protocol is `DataEnteredDelegate`.
2. The ViewController adopts the protocol and implements the one method in the `DataEnteredDelegate` protocol, namely the `userDidEnterInformation` method.  As implemented by the ViewController, this information is sent off to the displayData outlet to be displayed.
3. The AddViewController establishes an optional `delegate` variable that any delegate can use to connect to the AddViewController.
4. In preparing for the segue, the ViewController tells the AddViewController that its the delegate by setting itself as the AddViewController's delegate variable.
5. After data is entered, the AddViewController calls on its delegate to run the `userDidEnterInformation` method.

There are notes in the code to explain this and even some print statements added so students can see the communication between the classes more clearly.