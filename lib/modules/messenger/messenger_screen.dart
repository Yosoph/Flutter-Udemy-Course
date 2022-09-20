import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-2.fna.fbcdn.net/v/t39.30808-6/271547258_653723962740670_3704360693347100018_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGnYRI-nVlDR5kXzqmi5RQEvdrKeDQW59-92sp4NBbn39_Oe2rCGMsCkAeEPhffHII4AcNyPU_t5Abj-66N8mGt&_nc_ohc=EhMC3uqgFiYAX-53Uqe&_nc_ht=scontent.fcai19-2.fna&oh=00_AT-OkJglRRDqYPlT3DEckBRc6sG2bvjbrvOkpAjx5mYGNQ&oe=632A4C1C'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white24,
              radius: 25.0,
              child: Icon(
                Icons.camera_alt,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white24,
              radius: 25.0,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white24,
                ),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 15.0,
                    ),
                    itemCount: 10,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15.0,
                  ),
                  itemCount: 20),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-2.fna.fbcdn.net/v/t39.30808-6/271547258_653723962740670_3704360693347100018_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGnYRI-nVlDR5kXzqmi5RQEvdrKeDQW59-92sp4NBbn39_Oe2rCGMsCkAeEPhffHII4AcNyPU_t5Abj-66N8mGt&_nc_ohc=EhMC3uqgFiYAX-53Uqe&_nc_ht=scontent.fcai19-2.fna&oh=00_AT-OkJglRRDqYPlT3DEckBRc6sG2bvjbrvOkpAjx5mYGNQ&oe=632A4C1C'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yosoph Ahmed',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hey, i\'m using messenger, i wish you a good day',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '5:54 AM',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-2.fna.fbcdn.net/v/t39.30808-6/271547258_653723962740670_3704360693347100018_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGnYRI-nVlDR5kXzqmi5RQEvdrKeDQW59-92sp4NBbn39_Oe2rCGMsCkAeEPhffHII4AcNyPU_t5Abj-66N8mGt&_nc_ohc=EhMC3uqgFiYAX-53Uqe&_nc_ht=scontent.fcai19-2.fna&oh=00_AT-OkJglRRDqYPlT3DEckBRc6sG2bvjbrvOkpAjx5mYGNQ&oe=632A4C1C'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          'Yosoph Ahmed Mohamed Mohamed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
