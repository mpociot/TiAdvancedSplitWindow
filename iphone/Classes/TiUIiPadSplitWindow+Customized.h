/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiViewProxy.h"
#import "TiUIiPadSplitWindow.h"
#import "MGSplitViewController.h"

@interface TiUIiPadSplitWindow (Customized) <MGSplitViewControllerDelegate> {

}

-(void)setSplitPosition_:(id)arg;
-(void)setVertical_:(id)arg;
-(void)setAllowsDraggingDivider_:(id)arg;
-(void)setMasterWindow_:(id)arg;
-(void)setDetailWindow_:(id)arg;

@end
