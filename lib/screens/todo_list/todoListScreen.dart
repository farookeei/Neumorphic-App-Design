import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        child: SizedBox(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "TODO LIST",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20),
            TodoListItem(
              itemTitle: "STARTED",
              onPressed: () {},
              tileColor: lightblue,
              time: "10:00 AM",
            ),
            CustomDivider(
              endspace: 0,
              startspace: 0,
            ),
            TodoListItem(
              itemTitle: "ON GOING",
              onPressed: () {},
              tileColor: lightblue,
              time: "10:00 AM",
            ),
            CustomDivider(
              endspace: 0,
              startspace: 0,
            ),
            TodoListItem(
              itemTitle: "COMPLETED",
              onPressed: () {},
              tileColor: lightblue,
              time: "10:00 AM",
            ),
            CustomDivider(
              endspace: 0,
              startspace: 0,
            ),
          ],
        ),
      )),
    );
  }
}

class TodoListItem extends StatefulWidget {
  final String itemTitle;
  final String time;
  final Function onPressed;
  final Color tileColor;

  TodoListItem({
    this.itemTitle,
    this.onPressed,
    this.time,
    this.tileColor,
  });

  @override
  _TodoListItemState createState() => _TodoListItemState();
}

class _TodoListItemState extends State<TodoListItem> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Neumorphic(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          depth: isTapped ? -5 : 0, //-15
          intensity: 0.5,
          color: isTapped ? widget.tileColor : Theme.of(context).primaryColor,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(Radius.circular(0))),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      depth: 4, //-15
                      intensity: 0,
                      color: Theme.of(context).primaryColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(25))),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      child: Icon(
                        !isTapped ? Icons.play_arrow : Icons.check,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    widget.itemTitle,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Container(
                child: Text(
                  widget.time,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
