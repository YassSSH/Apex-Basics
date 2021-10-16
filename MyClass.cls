public with sharing class MyClass {
    public void printOutput(String stringtoDisplay){
        System.debug('Texte Affiché : ' + stringtoDisplay);
    }
}







// EXEC CONSOLE

MyClass class1 = new MyClass();
class1.printOutput('Texte qui s\'affiche');