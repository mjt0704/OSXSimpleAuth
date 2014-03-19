//
//  main.m
//  OSXSimpleAuth
//
//  Created by Maojie Tang on 14-3-19.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        // Create authorization reference
        AuthorizationRef authorizationRef;
        OSStatus status;
        status = AuthorizationCreate(NULL, kAuthorizationEmptyEnvironment, kAuthorizationFlagDefaults, &authorizationRef);
        
        // Run the tool using the authorization reference
        char *tool = "/Users/maojie/Documents/XcodeProjects/ShowEUID/DerivedData/ShowEUID/Build/Products/Debug/ShowEUID.app/Contents/MacOS/ShowEUID";
        char *args[] = { NULL };
        FILE *pipe = NULL;
        status = AuthorizationExecuteWithPrivileges(authorizationRef, tool, kAuthorizationFlagDefaults, args, &pipe);
    }
    return 0;
}

