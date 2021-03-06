
import 'package:ecommerce_delivery/model/orderedReceivedModel.dart';
import 'package:ecommerce_delivery/notifiers/themeNotifier.dart';
import 'package:ecommerce_delivery/widgets/circle.dart';
import 'package:ecommerce_delivery/widgets/customAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CancelOrderList extends StatefulWidget {

  @override
  _CancelOrderListState createState() => _CancelOrderListState();
}

class _CancelOrderListState extends State<CancelOrderList> {
  late  double width,height,width2,height2,gridWidth;

  List<NewOrderReceivedModel> litems = [
    NewOrderReceivedModel(name: "Ramesh",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"Customer Not pickup Phone" ,),
    NewOrderReceivedModel(name: "Ramesh",id:"3434355" ,items:"28" ,amt:"2,4000" ,address:"Customer Not pickup Phone" ,)

  ];
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<ThemeNotifier>(
        builder: (context,th,child)=> Stack(
          children: [
            Container(
              width: width,
              height: height,
              color:  Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(title: 'Cancel Order List'),
                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.only(left:20),
                        child: Text('Swipe left to cancel',style: TextStyle(fontFamily: 'RR',fontSize: 14,color: Colors.grey,),)
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: litems.length,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              Container(
                                width: width,
                                height: 105,
                                margin: EdgeInsets.only(left: 10.0,right: 10.0,),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color:th.borderColor),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                child:Text('${litems[i].name}',style: TextStyle(fontFamily: 'RM',fontSize: 16,color: th.text1,),)
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  child:Text('Order id :',style: TextStyle(fontFamily: 'RR',fontSize: 15,color: th.text1,),),
                                                ),
                                                Text('${litems[i].id}',style: TextStyle(fontFamily: 'RR',fontSize: 15,color: th.text1,),)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  child:Text('28 Items  ',style: TextStyle(fontFamily: 'RR',fontSize: 13,color: th.text1.withOpacity(0.5),),),
                                                ),
                                                Text('${litems[i].amt}',style: TextStyle(fontFamily: 'RM',fontSize: 15,color: th.primaryColor1,),)
                                              ],
                                            ),

                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                            width:100,
                                            height:30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(color: Color(0XFFF93338),),
                                              color:Color(0XFFFFE5E6),
                                            ),
                                            alignment:Alignment.center,
                                            child:Text('Cancel',style: TextStyle(fontFamily: 'RM',fontSize: 14,color: Color(0XFFF93338),),)
                                        ),

                                        SizedBox(width: 10,)
                                      ],
                                    ),
                                    Container(
                                        width: width,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(top: 5),
                                        child:Text('${litems[i].address}',
                                          style: TextStyle(fontFamily: 'RR',fontSize: 13,color: th.text1.withOpacity(0.5),),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:EdgeInsets.only(right: 10,bottom: 10),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.end,
                                  crossAxisAlignment:CrossAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //   child:Text('4.5 KM ',style: TextStyle(fontFamily: 'RR',fontSize: 12,color: th.text1.withOpacity(0.5),),),
                                    // ),
                                    // SizedBox(width: 10,),
                                    Text('5 min ago',style: TextStyle(fontFamily: 'RR',fontSize: 12,color:th.text1.withOpacity(0.5),),)
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ]
              ),
            ),

          ],
        )
      ),
    );
  }
}
