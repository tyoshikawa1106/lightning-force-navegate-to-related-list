@isTest
private class NavigateToRelatedListDemoControllerTest {
    
    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    
    static testMethod void getAccountsTest1() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            List<Account> results = NavigateToRelatedListDemoController.getAccounts();
            
            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
    
    static testMethod void getAccountsTest2() {
        
        System.runAs(testAdminUser) {
            
            Account account = new Account(Name = 'Sample Account');
            insert account;

            Test.startTest();
            
            List<Account> results = NavigateToRelatedListDemoController.getAccounts();
            
            Test.stopTest();

            System.assertEquals(results.size(), 1);
        }
    }
}