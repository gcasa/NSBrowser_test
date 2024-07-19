//
//  AppDelegate.m
//  NSBrowser_test
//
//  Created by Gregory John Casamento on 7/19/24.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSBrowser *browser;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// Actions

- (IBAction) reload: (id)sender
{
    [self.browser reloadColumn: 0];
}

// NSBrowser delegate

- (NSInteger) browser:(NSBrowser *)browser numberOfChildrenOfItem:(id)item
{
    if (item == nil)
    {
        return 1;
    }
    else if ([item isEqualToString: @"NSObject"])
    {
        return 2;
    }

    return 0;
}

- (id)browser:(NSBrowser *)browser
        child:(NSInteger)index
       ofItem:(id)item
{
    if (item == nil)
    {
        return @"NSObject";
    }
    else if ([item isEqualToString: @"NSObject"])
    {
        if (index == 0)
        {
            return @"NSArray";
        }
        else if (index == 1)
        {
            return @"NSDictionary";
        }
    }
    
    return nil;
}

- (BOOL)browser:(NSBrowser *)browser
     isLeafItem:(id)item
{
    if ([item isEqualToString: @"NSObject"])
    {
        return NO;
    }
    
    return YES;
}

- (BOOL)browser:(NSBrowser *)browser
 shouldEditItem:(id)item
{
    return NO;
}

- (id)browser:(NSBrowser *)browser
objectValueForItem:(id)item
{
    return item;
}

- (void)browser:(NSBrowser *)browser
 setObjectValue:(id)object
        forItem:(id)item
{
    
}

- (id)rootItemForBrowser:(NSBrowser *)browser
{
    return nil;
}

- (NSViewController *)browser:(NSBrowser *)browser
previewViewControllerForLeafItem:(id)item
{
    return nil;
}

- (NSViewController *)browser:(NSBrowser *)browser
  headerViewControllerForItem:(id)item
{
    return nil;
}

@end
