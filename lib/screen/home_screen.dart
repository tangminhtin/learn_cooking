import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn_cooking/data.dart';
import 'package:learn_cooking/widgets/bottom_navbar.dart';
import 'package:learn_cooking/widgets/home/new_food_item.dart';
import 'package:learn_cooking/widgets/home/search_bar.dart';
import 'package:learn_cooking/widgets/home/slider_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SearchBar(),
              CarouselSlider.builder(
                itemCount: meals.length,
                itemBuilder: (context, index, realIndex) => SliderItem(
                  key: ValueKey(meals[index].id),
                  title: meals[index].title,
                  image: meals[index].coverImage,
                  complexity: meals[index].complexity,
                  prepareTime: meals[index].prepare,
                  processingTime: meals[index].processing,
                ),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: meals.length,
                  itemBuilder: (context, index) => NewFoodItem(
                    key: ValueKey(meals[index].id),
                    title: meals[index].title,
                    image: meals[index].coverImage,
                    complexity: meals[index].complexity,
                    prepareTime: meals[index].prepare,
                    processingTime: meals[index].processing,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
