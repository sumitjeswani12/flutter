import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Articles';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Google"),
            subtitle:Text("Click to view full Article"),
            onTap: (){debugPrint("Clicked");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Article("Google","Google was founded in September 1998 by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University in California. Together they own about 14 percent of its shares and control 56 percent of the stockholder voting power through supervoting stock. They incorporated Google as a California privately held company on September 4, 1998, in California. Google was then reincorporated in Delaware on October 22, 2002.[13] An initial public offering (IPO) took place on August 19, 2004, and Google moved to its headquarters in Mountain View, California, nicknamed the Googleplex. In August 2015, Google announced plans to reorganize its various interests as a conglomerate called Alphabet Inc. Google is Alphabet's leading subsidiary and will continue to be the umbrella company for Alphabet's Internet interests. Sundar Pichai was appointed CEO of Google, replacing Larry Page who became the CEO of Alphabet.")),
            );
            
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Facebook"),
            subtitle:Text("Click to view full Article"),
            onTap: (){print("Press");
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Article("Facebook","Welcome this is Article, which is all about facebook")),
             );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Article 3"),
            subtitle:Text("Click to view full Article"),
            onTap: (){print("Press");
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Article("Article 3","Welcome this is Artivle 3")),
             );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Article 4"),
            subtitle:Text("Click to view full Article"),
            onTap: (){print("Press");
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Article("Article 3","Welcome this is Article 4")),
             );
            },
          ),
        ],
      ),
      
    );
  }
}

class Article extends StatelessWidget {
  var headline;
  var text;
  Article(this.headline, this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headline),
      ),
      body: ListView(
        children: <Widget>[
          Text(text),
          

        ],
      ),
    );
  }
}