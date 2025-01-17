import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterIncrementState>{
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;
  int Delete = 0;
// ignore: non_constant_identifier_names
void TeamAIncrement({required String team,required int buttonNumber}){
 if(team=='A'){
   teamAPoints+= buttonNumber;
  emit(CounterAIncrementState());
 }else{
  teamBPoints+= buttonNumber;
  emit(CounterBIncrementState());}
  
}

    
  void delete({required String team,required int buttonNumbe}) {
    
      if (team == 1 && teamAPoints > 0) {
        teamAPoints=-buttonNumbe;
        emit(CounterAIncrementState());
      } else if (team == 2 && teamBPoints > 0) {
        teamBPoints--;
         emit(CounterBIncrementState());
      }
    }
  }

  
