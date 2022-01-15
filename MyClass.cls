public with sharing class MyClass {

    public void printOutput(String stringtoDisplay){
        System.debug('Texte Affiché : ' + stringtoDisplay);
    }

    public void printfor(int intfor){
        for(Integer i = 0 ; i < 10 ; i++){
            intfor++;
            System.debug('Numéro : ' + intfor);
        }
    }
}







// EXEC CONSOLE

MyClass class1 = new MyClass();
class1.printOutput('Texte qui s\'affiche');

MyClass class1 = new MyClass();
class1.intfor(10);



//Static class

public with sharing class MyClass {
    
   public Integer Num;
   private static final Integer default_num;

   static {
      default_num = 0;
   }

   public MyClass(){
      this(default_num);
   }

   public MyClass(Integer value){
      this.Num = value;
   }

   public void print(){
      System.debug(Num);
   }
}


// CTRL + E 
Myclass num = new MyClass();
num.print();
// OR
Myclass num = new MyClass(4654);
num.print();







public with sharing class MyClass {
   
   public static List<String> listName(integer n){
      List<String> monarr = new List<String>();
      for(Integer i ; i < n ; i++){
         monarr.add('List' + i);
         System.debug(monarr[i]);
      }
      return monarr;
   } 
}







public class creator {
    public static  Account insertAccount(String name, String tel, Integer employee){
        Account newAccount = new Account();
        newAccount.Name = name;
        newAccount.Phone = tel;
        newAccount.NumberOfEmployees = employee;
		accountID = newAccount.ID;
        try {
            insert newAccount;
        } catch (Exception e) {
            System.debug('Une erreur blalblalbla' + e.getMessage());
        }
        return newAccount; 
    }   
    public static ID accountID;
}
