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