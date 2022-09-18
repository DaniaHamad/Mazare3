import 'package:flutter/material.dart';

class HomeFarmerView extends StatelessWidget {
  const HomeFarmerView({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                  text: 'Let\'s host\nyour ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'farm!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.teal)),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Finish your Listing",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300,
                          margin: const EdgeInsets.only(right: 8, top: 20),
                          decoration: BoxDecoration(
                            color: Colors.teal[200],
                          ),
                        );
                      })),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "My Farms ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 250,
                          margin: const EdgeInsets.only(right: 8, top: 20),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                        );
                      })),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Monthley Earning ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Transform.translate(
                offset: const Offset(-15, 0),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 250,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(249, 249, 249, 249),
                border: Border.all(color: const Color(0xffF2F2F2), width: 3),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.house,
                          color: Colors.teal,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      width: 44,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sms,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.book,
                          color: Colors.grey,
                        )),
                  ],
                ),
              )),
          Positioned(
            bottom: 20,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
