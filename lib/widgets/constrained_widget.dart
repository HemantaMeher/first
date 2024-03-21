import 'package:flutter/material.dart';

class ConstrainedBoxScreen extends StatefulWidget {
  const ConstrainedBoxScreen({super.key});

  @override
  State<ConstrainedBoxScreen> createState() => _ConstrainedBoxScreenState();
}

class _ConstrainedBoxScreenState extends State<ConstrainedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Constrained Box'),),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 100, maxWidth: 100),
                child: const Text('hello fijeiff ufw f sk  as adjah dasdn saud asdua idjasdu asdas da fjmewfj fujf i8u f saua sud a8ujahd8ahdjah8du adh8ahd aidu a8  fhnf ushfajfh FH FhjhdjkH Dpdjh DHJhd djhd8Djkh'),
              ),
        
              const SizedBox(height: 20,),
        
              ConstrainedBox(
                constraints: const BoxConstraints.expand(height: 200,width: 200),
                child: const Text('hello fijeiff ufw f sk  as adjah dasdn saud asdua idjasdu asdas da fjmewfj fujf i8u f saua sud a8ujahd8ahdjah8du adh8ahd aidu a8  fhnf ushfajfh FH FhjhdjkH Dpdjh DHJhd djhd8Djkhhello fijeiff ufw f sk  as adjah dasdn saud asdua idjasdu asdas da fjmewfj fujf i8u f saua sud a8ujahd8ahdjah8du adh8ahd aidu a8  fhnf ushfajfh FH FhjhdjkH Dpdjh DHJhd djhd8Djkhhello fijeiff ufw f sk  as adjah dasdn saud asdua idjasdu asdas da fjmewfj fujf i8u f saua sud a8ujahd8ahdjah8du adh8ahd aidu a8  fhnf ushfajfh FH FhjhdjkH Dpdjh DHJhd djhd8Djkh '),
              ),
        
              SizedBox(height: 20,),
        
              Container(
                constraints: const BoxConstraints(maxHeight: 150, maxWidth: 200),
                color: Colors.blue.shade200,
                child: const Text('hello fijeiff ufw f sk  as adjah dasdn saud asdua idjasdu asdas da fjmewfj fujf i8u f saua sud a8ujahd8ahdjah8du adh8ahd aidu a8  fhnf ushfajfh FH FhjhdjkH Dpdjh DHJhd djhd8Djkh'),
              ),
              const SizedBox(height: 20,),
        
              Container(
                constraints: const BoxConstraints(maxHeight: 300, maxWidth: 300,minHeight: 50,minWidth: 150),
                color: Colors.pink.shade200,
                child: const Text('data'),
              ),
              const SizedBox(height: 20,)
        
        
            ],
          ),
        ),
      ),
    );
  }
}