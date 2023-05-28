import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'oberation_state.dart';
 class OberationCubit extends Cubit<OberationInitial> {
  String save="";
  
  String res="";
  
 
  OberationCubit() : super(OberationInitial(firstnum: 0, obr: '', res:"", secoundnum: 0));
  int firstnum=0;
  
  String obr="";
  
  int secoundnum=0;
  void test1(String num)=>emit(OberationInitial(res: state.res=oberations(num)));

String oberations(String num,){
if (num =="+"|| num=="/" ||num=="-"|| num=="X"){
 obr =num;
 firstnum=int.parse(res);
 res="";
}
else if(num=="c"){
 firstnum=0;
    secoundnum=0;
    res="";
}
else if(num =="="){
  secoundnum= int.parse(res);
  if(obr =="+"){
    res= (firstnum+secoundnum).toString();
    firstnum=0;
    secoundnum=0;

  }
  if(obr =="-"){
    res=(firstnum-secoundnum).toString();
    firstnum=0;
    secoundnum=0;

  }
  if(obr =="/"){
    res= (firstnum/secoundnum).toString();
    firstnum=0;
    secoundnum=0;
  
  }
   if(obr =="X"){
   res=(firstnum*secoundnum).toString();
    firstnum=0;
    secoundnum=0;
  }
}
else {
res=int.parse(res+num).toString();
}
//var st =[firstnum.toString(),obr,secoundnum.toString()];
return res;
} 
}
