import 'package:flutter/material.dart';
import '../Models/Questions.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class QuestionController extends GetxController
      with GetSingleTickerProviderStateMixin  {
      List<Question> _questions = sample_data
          .map(
                (question) => Question(
                id: question['id'],
                question: question['question'],
                options: question['options'],
                answer: question['answer_index']),
      )
          .toList();
      List<Question> get questions => this._questions;

      bool _isAnswered = false;
      bool get isAnswered => this._isAnswered;

      late int _correctAns;
      int get correctAns => this._correctAns;

      late int _selectedAns;
      int get selectedAns => this._selectedAns;

      RxInt _questionNumber = 1.obs;
      RxInt get questionNumber => this._questionNumber;

      int _numOfCorrectAns = 0;
      int get numOfCorrectAns => this._numOfCorrectAns;

      void checkAns(Question question, int selectedIndex) {
            _isAnswered = true;
            _correctAns = question.answer;
            _selectedAns = selectedIndex;

            if(_correctAns == _selectedAns) _numOfCorrectAns++;
      }

}


