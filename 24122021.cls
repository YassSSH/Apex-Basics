public with sharing class tr {

    public String MyString;
    private static final default_string;

    static {
        default_string = 'My default string';
    }


    public tr(){
        this(default_string);
    }

    public tr(String value){
        this.MyString = value;
    }


    public void dispaystringg(){
        System.debug(MyString);
    }
    
}