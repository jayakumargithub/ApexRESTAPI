({
    doInit: function (component, event, helper) {
        helper.fetchOpportunities(null, component);
    },

    searchOpportunities: function (component, event, helper) {
        var searchValue = component.find("searchField").get("v.value");
        console.log(searchValue);
        helper.fetchOpportunities(searchValue, component);
    }
})