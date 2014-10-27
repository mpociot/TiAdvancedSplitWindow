var tiadvancedsplitwindow = require('de.marcelpociot.splitwindow');

var detail = Ti.UI.createWindow({backgroundColor: 'white'});
var label1 = Ti.UI.createLabel({text: 'Detail View'});
detail.add(label1);
var detailNav = Ti.UI.iOS.createNavigationWindow({window: detail});


var master = Ti.UI.createWindow({backgroundColor: 'gray'});
var label2 = Ti.UI.createLabel({text: 'Master View'});
master.add(label2);
var masterNav = Ti.UI.iOS.createNavigationWindow({window: master});

var detailWin = Ti.UI.iPad.createSplitWindow({
	detailView: detailNav,
	masterView: masterNav
});

var splitWin = Ti.UI.iPad.createSplitWindow({
    detailView: detailWin,
    masterView: Ti.UI.createWindow({
		backgroundColor: "red"
	}),
	splitPosition: 50
});

splitWin.addEventListener('visible',function(e){
    if (e.view == 'detail'){
        e.button.title = "Master";
        detail.leftNavButton = e.button;
    } else if (e.view == 'master'){
        detail.leftNavButton = null;
    }
});

splitWin.open();
