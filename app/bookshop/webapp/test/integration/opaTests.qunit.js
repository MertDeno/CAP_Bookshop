sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bookshop/cap/bookshop/test/integration/FirstJourney',
		'bookshop/cap/bookshop/test/integration/pages/NationsList',
		'bookshop/cap/bookshop/test/integration/pages/NationsObjectPage',
		'bookshop/cap/bookshop/test/integration/pages/AuthorsObjectPage'
    ],
    function(JourneyRunner, opaJourney, NationsList, NationsObjectPage, AuthorsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bookshop/cap/bookshop') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNationsList: NationsList,
					onTheNationsObjectPage: NationsObjectPage,
					onTheAuthorsObjectPage: AuthorsObjectPage
                }
            },
            opaJourney.run
        );
    }
);