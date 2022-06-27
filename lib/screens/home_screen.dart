import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/constants/constants.dart';
import 'package:flutter_netflix_responsive_ui/widgets/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _scrollOffSet = 0.0;
  ScrollController _scrollController;

  @override
  void initState(){
    _scrollController = ScrollController()..addListener(() {
      setState((){
        _scrollOffSet = _scrollController.offset;
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondBackground,
        child: Icon(Icons.cast),
        onPressed: ()=> print('Clicked!'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(scrollOffSet: _scrollOffSet,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(

            ),
          )
        ],

      ),
    );
  }
}
