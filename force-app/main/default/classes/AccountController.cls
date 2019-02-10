public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> findAll(){
        return [SELECT Name, Location__Longitude__s, Location__Latitude__s 
                FROM Account 
                WHERE Location__Longitude__s != NULL LIMIT 50];
    }
}
