Detect Strong Reference Cycles with Xcode8

What's is SRC (Strong Reference Cycles)
check Apple docmentation in [link](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID52)

## How to detect SRC in Xcode8 using Memory Debugging?

There is two steps to detect this

1. check deinit() of the suspicious object (the object must dealloc from memory but deinit() not called)
2. use memory debugger to confirm the suspicious object in memory or not


##Check blow image to 
![](https://github.com/dimohamdy/SRC_Xcode8/blob/master/Assets/SRC.gif)

# Memory Debugging
 Memory Debugger dives deep into your object graph.
![Object Graph](https://raw.githubusercontent.com/dimohamdy/SRC_Xcode8/master/Assets/Screen%20Shot%202016-07-22%20at%201.12.05%20PM.png) 

##Warning

Memory Debugging enable only when your code in swift3, i try to enable it with swift2.3 not working

## Author

Ahmed Hamdy, [@dimohamdy](https://twitter.com/dimohamdy)
