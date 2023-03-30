sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bookshop.cap.bookshop',
            componentId: 'NationsObjectPage',
            entitySet: 'Nations'
        },
        CustomPageDefinitions
    );
});