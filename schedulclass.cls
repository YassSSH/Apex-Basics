global with sharing class SchedulClass implements Schedulable {

   global void execute(SchedulableContext sc) {

      System.debug('SCHEDULE TEST');
      
   }
   
}

// CONSOLE CMDS

SchedulClass item12 = new SchedulClass();
String timeexe = 'SECONDES MINUTES HEURES JOUR MOIS ANNEE'
// peut etre rempli par ? ou *
