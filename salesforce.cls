public with sharing class toutout {

   public Integer Number;
   private static final Integer default_number;

   static {
       default_number = 0;
   }

   public toutout(){
       this(default_number);
   }

   public toutout(Integer value){
       this.default_number = value;
   }

   public void display(){
       System.debug(Number);
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




public class creator {

    public static Account insertAccount(String name, String tel, Integer employee){
        Account newAccount = new Account();
        newAccount.Name = name;
        newAccount.Phone = tel;
        newAccount.NumberOfEmployees = employee;

        try {
            insert newAccount;
        } catch (Exception e) {
            return null;
        }

        return newAccount;
    }

    public static Contact 
    
}









public with sharing class titi {

    public String stringg;
    private static final String default_string;

    static{
        default_string = 'The actual value is Null';
    }
    

    public titi(){
        this(default_string);
    }

    public titi(String ActualValue){
        this.stringg = ActualValue;
    }

    public void dispaystring{
        System.debug(stringg);
    }
}





public with sharing class arrr {

    public static List<Integer> arr(Integer n){
        List<Integer> myarray = new List<Integer>();
        for(Integer i = 0 ; i < n ; i++){
            myarray.add('Test ' + i);
            System.debug(myarray[i]);
        }

        return myarray;
    }
    
}





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


public with sharing class MyClass {
    
}