public class CaseHandlerClass {
    public static void closeCases(List<Case> cases) {
        for (Case cased : cases) {
            if (cased.Status == 'Resolved') {
                cased.Status = 'Closed';
            }
            Update cased;
        }
    }
}