({
    doInit: function (component, event, helper) {

        var action = component.get("c.getUsers");
        action.setCallback(this, function (response) {
            var state = response.getState();
            console.log('state: ' + state);
            if (state === "SUCCESS") {
                component.set("v.response", response.getReturnValue());
                // console.log('result :' + JSON.stringify(response.getReturnValue()));
                // var result = component.get("v.response");
                //var apiResponse = component.get("v.response")["result"];
                var apiResponse = response.getReturnValue()["result"];
                console.log('apiResponse :' + JSON.stringify(apiResponse));
                component.set('v.userList', apiResponse);



            } else if (state === "ERROR") {
                var err = response.getError();
                console.log('Error: ' + JSON.stringify(err));
            }
        });

        $A.enqueueAction(action);
    }
})