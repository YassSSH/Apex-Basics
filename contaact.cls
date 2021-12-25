public with sharing class contaact {
    
public static Contact insertRelatedContact(String firstname, String lastname, String telcontact){

        Contact newContact = new Contact(
            FirstName=firstname,
            LastName=lastname,
            Phone = telcontact,
            AccountID = creator.accountID
        );

            try {
                insert newContact;
            } catch (Exception e) {
                System.debug('Une erreur blalblalbla' + e.getMessage());
            }

            return newContact;

    }
    
}