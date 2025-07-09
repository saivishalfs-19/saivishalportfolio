trigger CaseResilved on Case (before Update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        CaseHandlerClass.closeCases(Trigger.old);
    }
}