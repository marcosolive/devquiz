import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize  {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: double.maxFinite,
            decoration: BoxDecoration(
      gradient: AppGradients.linear
      ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  text: 'Olá, ',
                  style: AppTextStyles.title,
                  children: [
                    TextSpan(
                      text: 'Marcos',
                      style: AppTextStyles.titleBold
                    )
                  ]
                )),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: NetworkImage('https://previews.123rf.com/images/lembergvector/lembergvector1512/lembergvector151200067/49923679-man-software-engineer-concept-with-design-optimization-responsive-and-developer-solutions.jpg'))
                  ),
                )
              ],
            ),
          ),
          Align(alignment: Alignment(0.0,1.0),
          child: ScoreCardWidget())
        ],
      ),
    )
  );
  
}