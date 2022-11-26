# example-spm-compile-error

# Details
I made a [fork](https://github.com/gregcotten/swift-com/tree/example-spm-compile-error) of  [SwiftCOM](https://github.com/compnerd/swift-com) and removed the `.dynamic` requirement of the vended library. My intent was to make a *larger* single dynamic library with that code packaged in so I didn't have to deal with multiple .dlls.

## The Real Issue
There are just too many swift files in the target dependency for the compiler to handle, I think. I made another branch of SwiftCOM (just change branch name from `example-spm-compile-error` to `develop`) with less files in the target that can build in release mode just fine! The first hint I got was when I used the flag `--use-integrated-swift-driver` and saw some error about the path being too long. 

## To Reproduce the Bug
Tested on Windows 10 + Swift 5.7.1

Clone the example repo and run `swift build -c release`

### Expected Result
The build finishes without errors

### Actual Result
Error:
`<unknown>:0: error: supplementary output file map 'C:\\Users\\gregc\\AppData\\Local\\Temp\\TemporaryDirectory.aUcYOo\\supplementaryOutputs-1' is missing an entry for 'C:\\Users\\gregc\\Documents\\GitHub\\example-spm-compile-error\\.build\\checkouts\\swift-com\\Sources\\SwiftCOM\\COMBase.swift' (this likely indicates a compiler issue; please submit a bug report (https://swift.org/contributing/#reporting-bugs) and include the project)`
