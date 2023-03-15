
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

  List<SlideInfo> slides = [
    SlideInfo('Busca la comida', 'this is the best caption on the wordl', 'assets/Images/1.png'),
    SlideInfo('Te extraño mucho babay', 'el extrañar es algo normal cuando amas demasiado a alguien', 'assets/Images/2.png'),
    SlideInfo('Where are you baby', 'el extrañar es algo normal cuando amas demasiado a alguien', 'assets/Images/3.png')
  ];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  // late final pageviewController = PageController();
    final PageController pageviewController = PageController();
    bool isEnd = false;
   
   @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
     final page = pageviewController.page ?? 0;
     if(!isEnd && page >= (slides.length - 1.5)){
      setState(() {
        
      isEnd = true;
      });

     }

      // print('${pageviewController.page}');

    });
  }
  @override
  void dispose() {
    
    pageviewController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      body: Stack(
        children: [    
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children:  slides.map((e) => _Slide(
              title: e.title, 
              caption: e.caption, 
              imageUrl: e.imageUrl,
              )
              ).toList()
          ),
          Positioned(
       
            top: 50,
            right: 20,
            child: TextButton(onPressed: (){
              context.pop();
          }, child: const Text('Salir',style: TextStyle(fontSize: 18),))),

          (isEnd)?Positioned(
            bottom: 70,
            right: 30,
            child: FadeInRight(child: FilledButton(onPressed: ()=> context.pop(), child: const Text('Comenzar')))):SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({ 
  required this.title, 
  required this.caption, 
  required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style: titleStyle,),
            Image(image: AssetImage(imageUrl)),
            Text(caption,style: captionStyle,)
          ],
        ),
      ),

    );
  }
}