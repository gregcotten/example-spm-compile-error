# example-spm-compile-error

Tested on Windows 10 + Swift 5.7.1

I made a fork of https://github.com/compnerd/swift-com and removed the `.dynamic` requirement of the vended library. My intent was to make a *larger* dynamic library with that code packaged in already so I didn't have to deal with multiple .dlls.

## The Real Issue
There are just too many swift files in the SwiftCOM repo for the swift compiler to handle.

The first hint I got was when I used the flag `--use-integrated-swift-driver` and saw some error about the path being too long. I made another branch of SwiftCOM (just change branch name from `example-spm-compile-error` to `develop`)


## To Reproduce the Bug

Run `swift build -c release`

Expected result: .dll is built
Actual result: Compiler error

```
<unknown>:0: error: supplementary output file map 'C:\\Users\\gregc\\AppData\\Local\\Temp\\TemporaryDirectory.aUcYOo\\supplementaryOutputs-1' is missing an entry for 'C:\\Users\\gregc\\Documents\\GitHub\\example-spm-compile-error\\.build\\checkouts\\swift-com\\Sources\\SwiftCOM\\COMBase.swift' (this likely indicates a compiler issue; please submit a bug report (https://swift.org/contributing/#reporting-bugs) and include the project)
```