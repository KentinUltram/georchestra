Ext.define('Analytics.view.FilteredExtractorUsers', {
    extend: 'Analytics.view.BaseGridPanel',
    alias: 'widget.filteredextractoruserslist',
    store: 'FilteredExtractorUsers',

    initComponent: function() {
        this.columns = Ext.apply(this.columns || {}, {
            items: [{
                dataIndex: 'username',
                text: 'Nom'
            }, {
                dataIndex: 'count',
                text: 'Nombre de requêtes'
            }]
        });
        
        this.callParent();
    }
});