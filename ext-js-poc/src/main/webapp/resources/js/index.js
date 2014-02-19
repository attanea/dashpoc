Ext.onReady(function(){
    var loadMask = new Ext.LoadMask(Ext.get('app-carousel'), {msg: "Please wait..."});
    loadMask.show();
    Ext.get('app-carousel').load({
        url : '/dashboard/carousel/',
        scripts : true,
        success: function(response){
            loadMask.hide();
        }
    });

    /* Ext.Ajax.request({
     url: '/dashboard/carousel/',
     params: {
     id: 1
     },
     success: function(response){
     var text = response.responseText;
     // process server response here
     }
     });*/
});