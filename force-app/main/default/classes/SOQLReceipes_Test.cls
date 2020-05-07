@IsTest
private  class SOQLReceipes_Test {  
    @IsTest static void testGet10Accounts() {
        List<Schema.Account> accountList = new List<Schema.Account>();
        for(Integer i =0; i < 10s; i++){
            Schema.Account accountRec = new Schema.Account(
             Name ='The test account' + i
            );
          accountList.add(accountRec);
        }
       insert accountList;
       Test.startTest();     
       List<Schema.Account> testAcctLst1 = SOQLReceipes.get10Accounts();
       Test.stopTest();       
       System.assertEquals(10, testAcctLst1.size(), 'Expected to get 10');       
    }
}
