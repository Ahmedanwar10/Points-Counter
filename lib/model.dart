import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';


class Model extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterIncrementState>(builder: (contextn,state)
    {
      return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team 1",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                    BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "A", buttonNumber: 1);
                    },
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                  BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "A", buttonNumber: 2);
                    },
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                    BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "A", buttonNumber:3);
                    },
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).
                    delete(team: "A", buttonNumbe:0);
                    },
                    child: const Text(
                      "Delete",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team 2",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                    BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "B", buttonNumber: 1);
                    },
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                     BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "B", buttonNumber: 2);
                    },
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                    BlocProvider.of<CounterCubit>(context).
                    TeamAIncrement(team: "B", buttonNumber: 3);
                    },
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).
                    delete(team: "B", buttonNumbe: 0); // Subtract point for Team 1
                    },
                    child: const Text(
                      "Delete",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),

                ],
              ),

            ],
          ),
          
        ],
      ),
    );
    }
    , listener: (context,state){
    if(state is CounterAIncrementState){
    }else{
    }
    }
      );
  }
}
