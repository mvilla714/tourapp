import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourapp/pages/widgets/welcome_widget.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CarouselSlider(
        items: [
          WelcomeWidge(
            title: "Viaja con nostros",
            description:
                "Recuerde el alma dormida Avive el seso y despierte Contemplando Cómo se pasa la vida, Cómo se viene la muerte, Tan callando, Cuán presto se va el placer, Cómo, después de acordado Da dolor, Cómo, a nuestro parecer, Cualquier tiempo pasado Fue mejor.",
            color: Colors.indigoAccent,
            pathAssets: "assets/icons/avion.png",
          ),
          WelcomeWidge(
            title: "Agregar Items",
            description:
                "Recuerde el alma dormida Avive el seso y despierte Contemplando Cómo se pasa la vida, Cómo se viene la muerte, Tan callando, Cuán presto se va el placer, Cómo, después de acordado Da dolor, Cómo, a nuestro parecer, Cualquier tiempo pasado Fue mejor.",
            color: Colors.indigoAccent,
            pathAssets: "assets/icons/agregar.png",
          ),
          WelcomeWidge(
            title: "Viaja son imprimir",
            description:
                "Recuerde el alma dormida Avive el seso y despierte Contemplando Cómo se pasa la vida, Cómo se viene la muerte, Tan callando, Cuán presto se va el placer, Cómo, después de acordado Da dolor, Cómo, a nuestro parecer, Cualquier tiempo pasado Fue mejor.",
            color: Colors.indigoAccent,
            pathAssets: "assets/icons/print.png",
          ),
        ],
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          enableInfiniteScroll: false,
          autoPlayCurve: Curves.linear,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(milliseconds: 200),
        ),
      )

          /*WelcomeWidge(
          title: "Viaja con nostros",
          description:
              "Recuerde el alma dormida Avive el seso y despierte Contemplando Cómo se pasa la vida, Cómo se viene la muerte, Tan callando, Cuán presto se va el placer, Cómo, después de acordado Da dolor, Cómo, a nuestro parecer, Cualquier tiempo pasado Fue mejor.",
          color: Colors.indigoAccent,
          pathAssets: "assets/icons/avion.png",
        ),*/
          ),
    );
  }
}
