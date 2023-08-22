import 'package:flutter/material.dart';
import 'package:flutterbook/constants/colors/colors.dart';
import 'package:flutterbook/data/stories_data.dart';
import 'package:flutterbook/models/storie_model.dart';
import 'package:flutterbook/utils/behavior/custom_behavior.dart';
import 'package:flutterbook/utils/providers/theme_provider.dart';
import 'package:flutterbook/widgets/card_stories/card_stories.dart';
import 'package:flutterbook/widgets/card_stories/person_storie_card.dart';
import 'package:provider/provider.dart';

class StorieTab extends StatefulWidget {
  @override
  _StorieTabState createState() => _StorieTabState();
}

class _StorieTabState extends State<StorieTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController; // Adicionado PageController

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(); // Inicializando PageController
  }

  @override
  Widget build(BuildContext context) {
    List<StorieModel> datas = StoriesData.getStories();
    return Builder(builder: (context) {
      final appProvider = Provider.of<AppProvider>(context);
      return DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: double.maxFinite,
            height: 350,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.camera_alt,
                          color: appProvider.isDarkMode
                              ? AppColors.lightest_grey
                              : AppColors.azul500,
                        ),
                        child: Text(
                          "Stories",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.video_library,
                            color: appProvider.isDarkMode
                                ? AppColors.lightest_grey
                                : AppColors.azul500),
                        child: Text(
                          "Reels",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TabBarView(
                        children: [
                          // Widget para a tab "Stories"
                          ScrollConfiguration(
                            behavior: MyCustomScrollBehavior(),
                            child: ListView.builder(
                              controller: _pageController,
                              itemCount: 1 + datas.length,
                              scrollDirection: Axis.horizontal,
                              itemExtent: 150,
                              itemBuilder: (context, i) {
                                if (i == 0) {
                                  return PersonStorieCard();
                                }
                                return StorieCard(storieModel: datas[i - 1]);
                              },
                            ),
                          ),
                          // Widget para a tab "Reels"
                          Center(
                            child: Text('Conteúdo da Tab Reels'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose(); // Dispose do PageController
    super.dispose();
  }
}
