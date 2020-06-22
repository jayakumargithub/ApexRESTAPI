({
    fetchOpportunities: function (searchKey, component) {
        component.set("v.columnsToDisplay", [{
                label: "Opportunity Name",
                fieldName: "Name",
                type: "text"
            },
            {
                label: "Annual Revenue",
                fieldName: "AnnualRevenue",
                type: "currency"
            },
            {
                label: "Close Date",
                fieldName: "CloseDate",
                type: "date",
                typeAttributes: {
                    currencyCode: 'GPB'
                }
            },

        ]);

        var action = component.get("c.fetchOpportunities");

        action.setParams({
            "searchKey": searchKey
        });

        action.setCallback(this, function (response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.listOpportunity", response.getReturnValue());
            } else {
                ("An error occurred while fetching the data");
            }
        });
        $A.enqueueAction(action);

    }
})