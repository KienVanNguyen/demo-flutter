import 'package:custom_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

enum SlidableAction { archive, share, more, delete }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;

  const SlidableWidget({
    required this.child,
    required this.onDismissed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
    actionPane: SlidableDrawerActionPane(),
    child: child,

    /// left side
    actions: <Widget>[
      IconSlideAction(
        caption: 'Tải xuống',
        color: Colors.grey,
        icon: Icons.archive,
        onTap: () => onDismissed(SlidableAction.archive),
      ),
      IconSlideAction(
        caption: 'Chia sẻ',
        color: Colors.greenAccent,
        icon: Icons.share,
        onTap: () => onDismissed(SlidableAction.share),
      ),
    ],

    /// right side
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'Chỉnh sửa',
        color: Colors.lightBlueAccent,
        icon: Icons.edit,
        onTap: () => onDismissed(SlidableAction.more),
      ),

      IconSlideAction(
        caption: 'Xóa',
        color: Colors.redAccent,
        icon: Icons.delete,
        onTap: () =>{
          showDialog(
          context: context,
          builder: (context) {
          return CupertinoAlertDialog(
          title: Text('Xóa sản phẩm khỏi giỏ hàng', style: TextStyle(
              color: Colors.red
          ),),
          content: Text('Thao tác này sẽ xóa sản phẩm hiện tại'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); //close Dialog
              },
              child: Text('Hủy', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.redAccent
              ),),
            ),

          TextButton(
          onPressed: () {
            Navigator.pop(context);
            //action code for "Yes" button
            showDialog(
                context: context,
                builder: (context) => CustomDialog(
                  content: Text(
                  'Đã xóa sản phẩm',
                  style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18.0,
                  ),
                  ),
                  title: Text('Sản phẩm đã xóa khỏi giỏ hàng'),
                  firstColor:  Color(0xFF3CCF57),
                  secondColor: Colors.white,
                  headerIcon: Icon(
                  Icons.check_circle_outline,
                  size: 120.0,
                  color: Colors.white,
                  ),
                ),
                );
          },
          child: Text('Xác nhận', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.blue
            ),)
          ),

          ],
          );
          }),
       },
      ),
    ],
  );
}
