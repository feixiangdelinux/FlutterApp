import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('刘忠正↑本人自拍',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.1),
                        BlendMode.hardLight),
                    image: NetworkImage(
                        'http://b.hiphotos.baidu.com/image/h%3D300/sign=77d1cd475d43fbf2da2ca023807fca1e/9825bc315c6034a8ef5250cec5134954082376c9.jpg'))),
            accountEmail: Text(
              '邮箱: liuzhongzheng==250.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://img.haote.com/upload/news/20151016/201510161004105185.jpg'),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pop(context),
            title: Text('刘忠正很寂寞',
                textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          ),
          ListTile(
            onTap: () => Navigator.pop(context),
            title: Text('刘忠正真的很寂寞',
                textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
          ),
          ListTile(
            onTap: () => Navigator.pop(context),
            title: Text('刘忠正正在寂寞',
                textAlign: TextAlign.right, style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
          )
        ],
      ),
    );
  }
}
