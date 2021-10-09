
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