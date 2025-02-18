import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 208, 51, 101)),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: Text(
              "lbovaekzkflzn" * 2,
              style: ProjectStyles.textStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 100,
            child: Text("data center call center love flutter"),
          ),
          Container(
            /*  width: 200,
            height: 200, */
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 50,
              maxHeight: 200,
            ),
            padding: EdgeInsets.all(30),
            // padding ve margin aynı tipte değer alıyot
            // kullanımı burda aklında olsun
            margin: EdgeInsets.only(top: 10),
            /*             decoration: BoxDecoration(
              // shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 5),
              borderRadius: BorderRadius.circular(20),
              // color: Colors.blueAccent,
              gradient: LinearGradient(
                colors: [Colors.cyan, const Color.fromARGB(255, 181, 12, 12)],
              ),
            ), */
            decoration: ProjectUtilty.boxDecoration,
            // işte bu kadar kolay
            child: Text("alpha " * 20),
          ),
        ], // belli boyutlara sahipo bi kutu aluştur
      ),
    );
  }
}

class ProjectUtilty {
  static BoxDecoration boxDecoration = BoxDecoration(
    // shape: BoxShape.circle,
    border: Border.all(color: Colors.white, width: 5),
    borderRadius: BorderRadius.circular(20),
    // color: Colors.blueAccent,
    gradient: LinearGradient(
      colors: [Colors.cyan, const Color.fromARGB(255, 181, 12, 12)],
    ),
  );
  // alttaki ne işe yarıyor pek anlamadım ama bu açık
}

// dekorasyonlar mesela kartlarda sabit olur
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
    : super(
        // shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
        borderRadius: BorderRadius.circular(20),
        // color: Colors.blueAccent,
        gradient: LinearGradient(
          colors: [Colors.cyan, const Color.fromARGB(255, 181, 12, 12)],
        ),
      );
  // şimdi bunu direk olarak kullabilirim varsayılan
  // decoration olarak kolayca
}
