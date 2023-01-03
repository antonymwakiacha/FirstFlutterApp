import 'package:flutter/material.dart';

class PlantsUI extends StatelessWidget {
  const PlantsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon:Icon(
              Icons.chevron_left,
              color:Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon:Icon(
              Icons.more_horiz,
              color:Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("images/plant1.jpg"),
            fit:BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.green.withOpacity(0.5),
                  BlendMode.darken)
          ),
        ),
        child: Column(),
      )
    );
  }
}
