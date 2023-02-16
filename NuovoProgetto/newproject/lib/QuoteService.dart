import 'package:newproject/newproject.dart' as newproject;

import 'do_something_mixin.dart';
import 'package:http/http.dart' as http;  // importiamo una libreria http perchè ci dobbiamo collegare a internet
//7DtomsdpJc1vPv3WHZtE ---> token di accesso che prendiamo da https://the-one-api.dev/account
// DA DIGITARE DA TERMINALE --> dart pub add http

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

class QuoteService {
  Future<String> doSomething() async { 
    String u = "https://the-one-api.dev/v2/quote";   // insieriamo una variabile che contega il link a cui ci dobbiamo collegare 
    final k = await http.get(Uri.parse(u),  //visto che noi possimao un link URL lo dobbiamo convertire in URI perchè venga accetto  
                                            //e quindi creiamo una variabile con "AWAIT": ti prende la future e le converte 
                                            //nel valore della future --> es : "FUTURE = STRING  --> AWAIT = STRING" 
    // una volta collegati al sito vedremo che non possiamo ricevere le info perchè ha i permessi bloccati, di consegunza 
    //dobbimao dargli la parola chiave presa in precedenza 
      headers: {                                
        HttpHeaders.authorizationHeader:'Bearer 7DtomsdpJc1vPv3WHZtE'  
      }
    );
    //prendendolo da internet lo scarica come file json e dobbiamo codificarlo in stringhe 
    final data = jsonDecode(k.body) as Map <String,dynamic>;    // cosi noi otteniamo la stampa di tutti i dati del sito senza filtri 
    //ORA FILTRIAMO -->  chiediamo di stampare solo la prima citazione 
    final q =     
    data["docs"][0]["dialog"];
    
    
   
        print(q); // stampiamo 
      return q;  // eserve a farlo stampare nel main ovvero nel file principale ("nuovoprogetto.dart")
   
  }
}