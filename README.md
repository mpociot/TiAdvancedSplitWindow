TiAdvancedSplitWindow
======


## Description

Appcelerator titanium module to make use of the MGSplitView functions, not used by the Titanium SDK

## Accessing the TiStackedViewController Module

To access this module from JavaScript,  do the following:

	require('de.marcelpociot.splitwindow');

The TiStackedViewController variable is a reference to the Module object.
As this module extends the functionality of the `Ti.UI.iPad.createSplitWindow` there is no need to keep a reference of the module. Simply require it.	

## Reference

The  `Ti.UI.iPad.createSplitWindow` object gets extended by the following properties:

##### vertical

Type: `Boolean`
Default: `true`

Wether to use a vertical divider (default) or a horizontal divider.

<img src="https://github.com/mpociot/TiAdvancedSplitWindow/raw/master/images/horizontal_split.png" />



##### splitPosition

Type: `Float`
Default: `320`

The position (master view width) where to split the two views.

##### allowsDraggingDivider

Type: `Boolean`
Default: `false`

Wether or not you want to be able to drag the view divider.

<img src="https://github.com/mpociot/TiAdvancedSplitWindow/raw/master/images/dragging.gif" />

	


## Author

Marcel Pociot

Twitter: @marcelpociot
