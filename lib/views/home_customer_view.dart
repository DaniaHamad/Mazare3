import 'package:flutter/material.dart';

class HomeCustomerView extends StatelessWidget {
  const HomeCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side: const BorderSide(width: 2, color: Colors.teal)),
            child: const Icon(
              Icons.notifications_none,
              color: Colors.teal,
              size: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
            child: SizedBox(
              width: 35,
              height: 35,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(249, 249, 249, 249),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: const BorderSide(width: 2, color: Colors.teal)),
                child: const Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: 'Let\'s find\nyour ',
                      
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Colors.grey, fontSize: 26.0),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'farm!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.teal)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TextField(
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.teal,
                        ),
                        hintText: "Search destination",
                        hintStyle: TextStyle(fontSize: 20.0, color: Color(0xffDEDEDE)),
                        filled: true,
                        fillColor: Color.fromARGB(249, 249, 249, 249),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: const BorderSide(
                            width: 2,
                            color: Color.fromARGB(249, 249, 249, 249)),
                        backgroundColor:
                            const Color.fromARGB(249, 249, 249, 249),
                      ),
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.teal,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(elevation: 0,), child: const Text("All"),),
                ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: const Color(0xffF9F9F9)
                  
                  ),
                   child: const Text("Popular",style: TextStyle(color: Colors.teal),),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(elevation: 0,primary: const Color(0xffF9F9F9)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.teal,
                    ),
                    label: const Text(
                      "Sort by price",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: const Color.fromARGB(249, 249, 249, 249),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.teal,
                        ),
                        label: const Text(
                          'View All',
                          style: TextStyle(
                            letterSpacing: .5,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height:200 ,
              color: const Color.fromARGB(249, 249, 249, 249),
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom:20.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.only(left: 8, right: 8, top: 20),
                        padding:
                            EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    );
                  })
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recommended",
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.teal,
                      ),
                      label: const Text(
                        'View All',
                        style: TextStyle(
                          letterSpacing: .5,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:100 ,
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom:20.0),
                      child: Container(
                        width: 100,
                        height: 50,
                        margin: EdgeInsets.only(left: 8, right: 8, top: 20),
                        padding:
                            EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                      ),
                    );
                  })
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
      bottomSheet: Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(249, 249, 249, 249),
            border: Border.all(color: const Color(0xffF2F2F2),width: 3),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.house,
                      color: Colors.teal,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.teal,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.book,
                      color: Colors.teal,
                    )),
              ],
            ),
          )),
    );
  }
}
