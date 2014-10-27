/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiUIiPadSplitWindow+Customized.h"
#import "TiUtils.h"
#import "MGSplitViewController.h"

@implementation TiUIiPadSplitWindow (Customized)

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

-(void)setDragging_:(id)arg
{
    MGSplitViewController * splitController = (MGSplitViewController *)[self controller];
    splitController.allowsDraggingDivider = [TiUtils boolValue:arg def:NO];
}

@end
