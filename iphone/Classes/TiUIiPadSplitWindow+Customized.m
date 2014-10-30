/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUIiPadSplitWindow+Customized.h"
#import "TiUtils.h"

@implementation TiUIiPadSplitWindow (Customized)

UIViewController * TiAdvancedSplitWindowControllerForViewProxy(TiViewProxy * proxy);

UIViewController * TiAdvancedSplitWindowControllerForViewProxy(TiViewProxy * proxy)
{
    [[proxy view] setAutoresizingMask:UIViewAutoresizingNone];
    
    //make the proper resize !
    TiThreadPerformOnMainThread(^{
        [proxy windowWillOpen];
        [proxy reposition];
        [proxy windowDidOpen];
    },YES);
    return [[[TiViewController alloc] initWithViewProxy:proxy] autorelease];
}

-(void)setSplitPosition_:(id)arg
{
    NSLog(@"[INFO] Setting split position");
    MGSplitViewController * splitController = (MGSplitViewController *)[self controller];
    [splitController setSplitPosition:[TiUtils floatValue:arg]];
}

-(void)setVertical_:(id)arg
{
    MGSplitViewController * splitController = (MGSplitViewController *)[self controller];
    splitController.vertical = [TiUtils boolValue:arg def:YES];
}


-(void)setAllowsDraggingDivider_:(id)value
{
    bool allowDrag = [TiUtils boolValue:value];
    MGSplitViewController* splitController = (MGSplitViewController*)[self controller];
    if( allowDrag )
    {
        [splitController setDividerStyle:MGSplitViewDividerStylePaneSplitter];
    } else {
        [splitController setDividerStyle:MGSplitViewDividerStyleThin];
    }
}


-(void)setMasterWindow_:(id)arg
{
    MGSplitViewController * splitController = (MGSplitViewController *)[self controller];
    TiViewProxy* masterProxy = arg;
    [splitController setMasterViewController:TiAdvancedSplitWindowControllerForViewProxy(masterProxy)];
}

-(void)setDetailWindow_:(id)arg
{
    MGSplitViewController * splitController = (MGSplitViewController *)[self controller];
    TiViewProxy* detailProxy = arg;
    [splitController setDetailViewController:TiAdvancedSplitWindowControllerForViewProxy(detailProxy)];
}


- (float)splitViewController:(MGSplitViewController *)svc constrainSplitPosition:(float)proposedPosition splitViewSize:(CGSize)viewSize
{
    return proposedPosition;
}

@end
