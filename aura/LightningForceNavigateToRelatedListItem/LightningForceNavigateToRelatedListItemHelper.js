({
    gotoRelatedList : function (component, event, helper) {
        var relatedListEvent = $A.get("e.force:navigateToRelatedList");
        relatedListEvent.setParams({
            "relatedListId": "Contacts",
            "parentRecordId": component.get("v.item.Id")
        });
        relatedListEvent.fire();
    }
})