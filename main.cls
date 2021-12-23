
// BOUCLE FOR DATE
DateTime today = DateTime.now();
Integer year = 2015;

for(Integer i = 0 ; i < 10 ; i++){
if (today > Date.newInstance(year, 01 , 18)){
    System.debug('Date : ' + Date.newInstance(year, 01 , 18));
    year++;
}}




// LISTE NOMBRE

List<Integer> listof = new List<Integer>();
Integer num = 1;
for(Integer i = 0 ; i < 15 ; i++){
listof.add(num);
num++;
 }
System.debug('Liste des nombres' + listof);



// REQUETTE Salesforce Object Query Language SOQL

// Add account and related contact
Account acct = new Account(
    Name='SFDC Computing',
    Phone='(415)555-1212',
    NumberOfEmployees=50,
    BillingCity='San Francisco');
insert acct;

// Once the account is inserted, the sObject will be 
// populated with an ID.
// Get this ID.
ID acctID = acct.ID;
// Add a contact to this account.
Contact con = new Contact(
    FirstName='Carol',
    LastName='Ruiz',
    Phone='(415)555-1212',
    Department='Wingo',
    AccountId=acctID);
insert con;
// Add account with no contact
Account acct2 = new Account(
    Name='The SFDC Query Man',
    Phone='(310)555-1213',
    NumberOfEmployees=50,
    BillingCity='Los Angeles',
    Description='Expert in wing technologies.');
insert acct2; 
// END






// DOUBLE REQUETTE

Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account 
                               WHERE Name = 'SFDC Computing'];
// Get child records
Contact[] cts = acctsWithContacts[0].Contacts;
System.debug('Name of first associated contact: ' 
             + cts[0].FirstName + ', ' + cts[0].LastName);







// Trailhead

public class StringArrayTest {
    
    public  void generateStringArray(){
        List<String> test = new List<String>();
        test.add('Test');
        test.add('Test');
        test.add('Test');
        test.add('Test');
        for(Integer i = 0; i < test.size(); i++){
            System.debug(test[i] + ' ' + i);
        }


    }

}












public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer n)
    {
        List<String> myArray = new List<String>();
        for(Integer i=0;i<n;i++)
        {
           myArray.add('Test '+i);
           System.debug(myArray[i]);
        }
        return myArray;
    }
}




public class AccountHandler {
    
    public static Account insertNewAccount(String name) {
        
        Account acct = new Account();
        acct.Name = name;
        try{
            insert acct;
        }catch (Exception e) {
            return null;
        }
        return acct;
    }
}




public with sharing class ContactSearch {

    public static List<Contact> searchForContacts(String lastname, String postalcode){
        List<Contact> contactss = [SELECT ID, Name FROM contact WHERE LastName=lastname AND MailingPostalCode=postalcode];
        return contactss;

    }
    
}



public with sharing class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String lastname){
        List<List<sObject>> arrayy = [FIND :lastname IN ALL FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, Lastname)];
        return arrayy;
    }
    
}


// FIN APEX BASICS 







public class creator {
    public static Contact Account insertAccount(String name, String tel, Integer employee, String firstname, String lastname, String telcontact){
        Account newAccount = new Account();
        newAccount.Name = name;
        newAccount.Phone = tel;
        newAccount.NumberOfEmployees = employee;
		ID accountID = newAccount.ID;

        Contact newContact = new Contact(
        FirstName=firstname,
        LastName=lastname,
        Phone = telcontact,
        AccountId = accountID
        );
        try {
            insert newAccount;
            insert newContact;
        } catch (Exception e) {
            return null;
        }
        return newAccount;
        return newContact
    }


    public class creator {
	ID accountID;
    public  Account insertAccount(String name, String tel, Integer employee){
        Account newAccount = new Account();
        newAccount.Name = name;
        newAccount.Phone = tel;
        newAccount.NumberOfEmployees = employee;
		accountID = newAccount.ID;
        try {
            insert newAccount;
        } catch (Exception e) {
            return null;
        }
        return newAccount;
    }
    
    public Contact insertRelatedContact(String firstname, String lastname, String telcontact){

        Contact newContact = new Contact(
            FirstName=firstname,
            LastName=lastname,
            Phone = telcontact,
            AccountId = accountID
        );

            try {
                insert newContact;
            } catch (Exception e) {
                return null;
            }

            return newContact;

    }
    
}
