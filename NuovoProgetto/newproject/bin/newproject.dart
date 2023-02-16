import 'package:newproject/QuoteService.dart';
import 'package:newproject/newproject.dart' as newproject;
 

void main(List<String> arguments) async {
  final k = QuoteService();    // richiamiamo la funzione QuoteService per collegarci all'altro file 
  final a = await             // creiamo una variabile con "AWAIT": ti prende la future e le converte nel valore della future
  k.doSomething();
  // int res = await doSomething();

  // int res1 = await doSomething();
  // int res2 = await doSomething();
  // int res3 = await doSomething();
  // int res4 = await doSomething();

  //void main(List<String> arguments) {
  // final f = nuovoprogetto.QuoteService(count: 5);
  //final l = f.calc();
  
  
  //print(l);

}
