Ext.onReady(function() {

    Ext.define('myModel', {
        extend: 'Ext.data.Model',
        fields: ['company','price','change','pctChange','lastChange',"street", "area", "region"]
    });

    var store = Ext.create('Ext.data.Store', {
        model: 'myModel',
        proxy: {
            type: 'ajax',
            //             url: '/dashboard/resources/data/data.json',
            url: '/dashboard/table-data?limit=1000',
            reader: {
                type: 'json',
                root: 'aaData',
                totalProperty: 'totalCount'
            }
        },
        autoLoad: true
    });

    var grid = Ext.create('Ext.grid.Panel', {
        store: store,
        columns: [
            {
                text     : 'Company',
                dataIndex: 'company'
            },
            {
                text     : 'Price',
                dataIndex: 'price'
            },
            {
                text     : 'Change',
                dataIndex: 'change'
            },
            {
                text     : '% Change',
                dataIndex: 'pctChange'
            },
            {
                text     : 'Last Updated',
                dataIndex: 'lastChange'
            },
            {
                text     : 'Street',
                dataIndex: 'street'
            },
            {
                text     : 'Area',
                dataIndex: 'area'
            },
            {
                text     : 'Region',
                dataIndex: 'region'
            }
        ],
        height: 800,
        width: 900,
        title: 'Dynamic grid with ajax proxy',
        renderTo: 'grid4'/*,
         bbar: Ext.create('Ext.PagingToolbar', {
         store: store
         })*/
    });
});
