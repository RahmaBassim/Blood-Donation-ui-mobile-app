import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Grid.dart';
import '../model/ListTypes.dart';
import '../model/Search.dart';



class GridHome extends StatelessWidget {
  const GridHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("Images/2.png")
            )
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 20,),
              search(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTypes(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Grid(
                    PruductName: "TSH",
                  ),
                  Grid(
                    PruductName: "FT3",
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Grid(
                    PruductName: "FT4",
                  ),
                  Grid(
                    PruductName: "T3",
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Grid(
                    PruductName: "T4",
                  ),
                  Grid(
                    PruductName: "TSH",
                  ),
                ],
              ),
            ],
          ) ,
        )
      ),
    );
  }
}
