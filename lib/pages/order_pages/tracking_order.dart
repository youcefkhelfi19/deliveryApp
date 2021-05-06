import 'package:demo/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackingOrder extends StatefulWidget {
  @override
  _TrackingOrderState createState() => _TrackingOrderState();
}

class _TrackingOrderState extends State<TrackingOrder> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Tack Order',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Delivery Time',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    time.toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Rider :',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Youcef Khelfi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                ],
              ),
            ),
           Container(
             padding: EdgeInsets.symmetric(vertical: 40.0),
             child: Column(
               children: [
                 Container(
                     color: Colors.orange,
                     child: TimelineTile(
                       alignment: TimelineAlign.manual,
                       indicatorStyle: IndicatorStyle(height: 1.0),
                       lineXY: 0.3,
                       endChild: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         constraints: const BoxConstraints(
                           minHeight: 70,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.restaurant,
                               color: Colors.white,
                             ),
                             SizedBox(width: 10.0,),
                             Text('Order Confirmed',
                               style: TextStyle(color: Colors.white,fontSize: 22),
                             ),

                           ],
                         ),
                         color: Colors.orange,
                       ),
                       startChild: Container(
                         color: Colors.orange,
                       ),
                     )
                 ),
                 Container(
                     color: Colors.orange,
                     child: TimelineTile(
                       alignment: TimelineAlign.manual,
                       indicatorStyle: IndicatorStyle(height: 1.0),
                       lineXY: 0.3,
                       endChild: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         constraints: const BoxConstraints(
                           minHeight: 70,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.restaurant_menu,
                               color: Colors.white,
                             ),
                             SizedBox(width: 10.0,),
                             Text('Order processing',
                               style: TextStyle(color: Colors.white,fontSize: 22),
                             ),

                           ],
                         ),
                         color: Colors.orange,
                       ),
                       startChild: Container(
                         color: Colors.orange,
                       ),
                     )
                 ),
                 Container(
                     color: Colors.orange,
                     child: TimelineTile(
                       alignment: TimelineAlign.manual,
                       indicatorStyle: IndicatorStyle(height: 1.0),
                       lineXY: 0.3,
                       endChild: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         constraints: const BoxConstraints(
                           minHeight: 70,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.set_meal_outlined,
                               color: Colors.white,
                             ),
                             SizedBox(width: 10.0,),
                             Text('Order Ready',
                               style: TextStyle(color: Colors.white,fontSize: 22),
                             ),

                           ],
                         ),
                         color: Colors.orange,
                       ),
                       startChild: Container(
                         color: Colors.orange,
                       ),
                     )
                 ),
                 Container(
                     color: Colors.orange,
                     child: TimelineTile(
                       alignment: TimelineAlign.manual,
                       indicatorStyle: IndicatorStyle(height: 1.0),
                       lineXY: 0.3,
                       endChild: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         constraints: const BoxConstraints(
                           minHeight: 70,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.pedal_bike_rounded,
                               color: Colors.white,
                             ),
                             SizedBox(width: 10.0,),
                             Text('Start Delivering',
                               style: TextStyle(color: Colors.white,fontSize: 22),
                             ),

                           ],
                         ),
                         color: Colors.orange,
                       ),
                       startChild: Container(
                         color: Colors.orange,
                       ),
                     )
                 ),
                 Container(
                     color: Colors.orange,
                     child: TimelineTile(
                       alignment: TimelineAlign.manual,
                       indicatorStyle: IndicatorStyle(height: 1.0),
                       lineXY: 0.3,
                       endChild: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         constraints: const BoxConstraints(
                           minHeight: 70,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.house_outlined,
                               color: Colors.white,
                             ),
                             SizedBox(width: 10.0,),
                             Text('Delivery is Done',
                               style: TextStyle(color: Colors.white,fontSize: 22),
                             ),

                           ],
                         ),
                         color: Colors.orange,
                       ),
                       startChild: Container(
                         color: Colors.orange,
                       ),
                     )
                 ),
               ],
             ),
           ),
            //SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                ),
                height: 50,
                minWidth: MediaQuery.of(context).size.width*0.9,
                color: Colors.deepOrange,
                child: Text('Cancel',
                  style: style4,
                ),
                onPressed: (){
              customBottomSheet();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void customBottomSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        )
      ),
        context: context,
        builder: (context){
          return Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(20.0),
             ),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.width*0.5,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Image.asset('images/check.png')),
                Text('Thank you for your order',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                SizedBox(
                  height: MediaQuery.of(context).size.width*0.1,
                ),
                Text('Press the Button To track your Order',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,

                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width*0.06,
                ),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width*0.9,
                    color: Colors.deepOrange,
                    child: Text('Track Order',
                      style: style4,
                    ),
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackingOrder()),);
                    },
                  ),
                ),
                TextButton(
                    onPressed: (){

                    },
                    child:Text(
                      'Order something else',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,

                      ),
                    ),
                )
              ],
            ),
          );
        });
  }
}
