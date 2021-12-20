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
