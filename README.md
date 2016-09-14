# UniqueIdentifierLibrary
===========


## Summary

This control provides the Unique key identifier.


## Use

-> This control provide the same identifier even user reinstall the application.

-> Initally it store the UUID in the keychain and get the value of UUID from key chain next time.



## Implementation

**Get the Unique identifier**

getUniqueIdentifier()

**Set the Unique Identifier**

setUniqueIdentifier()


## Configuration

-> KeychainItemWrapper.m files is not compatible with arc. So you have to disable arc for this class by adding -fno-objc-arc in build phases.

-> In bridging header import keychain file 

// #import "KeychainItemWrapper.h"  



If you use it and like it, let me know: 
[@sarishti](sarishti09@gmail.com)

