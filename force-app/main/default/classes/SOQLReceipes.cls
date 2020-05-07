public with sharing class SOQLReceipes {
    public static List<Schema.Account> get10Accounts() {
      
      List<Schema.Account> testAcctLst1 = [SELECT id,name 
             FROM Account 
             LIMIT 10];
      return  testAcctLst1;

    }
}
