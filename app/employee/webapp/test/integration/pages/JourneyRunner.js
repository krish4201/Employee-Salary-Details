sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"demo/emp/employee/test/integration/pages/empSalarySetList",
	"demo/emp/employee/test/integration/pages/empSalarySetObjectPage"
], function (JourneyRunner, empSalarySetList, empSalarySetObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('demo/emp/employee') + '/test/flp.html#app-preview',
        pages: {
			onTheempSalarySetList: empSalarySetList,
			onTheempSalarySetObjectPage: empSalarySetObjectPage
        },
        async: true
    });

    return runner;
});

