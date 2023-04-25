import 'package:flutter/material.dart';
import '../../models/users/user-model/user-model.dart';
// build item
// build list
// add item to the list

//Step 02
// 2- build Class, in order to build the list we have to create a class ( better be outside)



class UsersScreen extends StatelessWidget {
//Step 03
// 3- build List,
List<UserModel> users = [
  //User 01
  UserModel(
     id: 1,
    name:' Riyad Al Kayyal',
    phone: ' +963 997 232 409',
  ),
  //User 02
  UserModel(
    id: 2,
    name:' Noor Kasem',
    phone: ' +963 991 552 344',
  ),
  //User 03
  UserModel(
    id: 3,
    name:' Sky Depller',
    phone: ' +201 2255 525 221',
  ),
  //User 04
  UserModel(
    id: 4,
    name:'Tarek Abo Dakaa',
    phone: ' +963 585 321 974',
  ),
  //User 05
  UserModel(
    id: 5,
    name:'Billie Eilish',
    phone: ' +963 825 998 876',
  ),
  //User 06
  UserModel(
    id: 6,
    name:'Hanan Debieh',
    phone: ' +963 933 711 583',
  ),
  //User 07
  UserModel(
    id: 7,
    name:'Hossam Al Takleh',
    phone: ' +963 671 854 332',
  ),
  //User 08
  UserModel(
    id: 8,
    name:'Mouaz A.Kalthoum',
    phone: ' +963 825 998 876',
  ),
]; // List<UserModel>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
       appBar: AppBar(
         backgroundColor: Colors.deepPurple,
        title: const Text(
       ' Users',
       style: TextStyle(
       fontWeight: FontWeight.bold,
         fontSize: 30,
         color: Colors.white,
       ),
      ),
     ),
      body: ListView.separated(
        //Step 04
        // 4- In order to extrapolate the index out of the UserModel while building the item
        // use users ( the list name) and put it into the parameter of the BuildUserItem('HERE"),
        // Type list's name[index], in our example users[index] .
          itemBuilder: (BuildContext context, int index ) => BuilUserItem(users[index]),
          separatorBuilder: (BuildContext context, int index ) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ) ,
          itemCount: users.length ,),
    );
  }
  // Step 01
  // 1- build item ( 'here we built an item for the user named ( BuildUserItem)', ),
//______________________________________________________________________________________________
// Step 05
// 5- Receive the user index as a user Model and put a name to it.
  // in our example, Let's use " user" as a name.
  Widget BuilUserItem( UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 26.0,
          backgroundColor: Colors.deepPurple[300],
          child: Text(
            // Step 06- 01
            // 6- Type in the data type in order to extrapolate using the dollar sign $ and the curly brackets.
            '${ user.id}',
            style: const  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 20.0 ,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            // username
            Text(
              // Step 06- 02
              // 6- Type in the data type in order to extrapolate using the dollar sign $ and the curly brackets.
              user.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Colors.black,
              ),
            ),
            //phone number
            Text(
              // Step 06- 03
              // 6- Type in the data type in order to extrapolate using the dollar sign $ and the curly brackets.
              user.phone,
              style: TextStyle(
                color: Colors.deepPurple[400],
              ),


            ),

          ],
        ),
      ],
    ),
  );


} // class UserScreen
