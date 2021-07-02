import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'У вашей машины лопнула шина на извилистой дороге в глуши. Сотового телефона у вас нет. Вы решаете ехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает вам пассажирскую дверь и спрашивает: "Вас подвезти?"',
        choice1: 'Супер! Спасибо за помощь!',
        choice2: 'Спрошу его, не убийца ли он часом?'),
    Story(
        storyTitle: 'Он медленно кивает мне в ответ',
        choice1: 'По крайней мере или он честен или шутит, залезу внутрь.',
        choice2: 'Подождите-ка, кажется я сам знаю как сменить шину'),
    Story(
        storyTitle:
            'Когда вы садитесь за руль, незнакомец начинает говорить о своих отношениях с матерью. С каждой минутой он злится все больше и больше. Он просит вас достать кассету из бардачка. Внутри вы находите окровавленный нож, два отрубленных пальца и кассету Элтона Джона.',
        choice1: '"О, я люблю Элтона Джона!" И передаю ему касссету',
        choice2: 'Или он, или я! Беру нож и наношу ему удар первым!'),
    Story(
        storyTitle:
            'Незнакомец пожимает плечами и удаляется вдаль с очень странной ухмылкой на лице.',
        choice1: 'Перезапуск',
        choice2: ''),
    Story(
        storyTitle:
            'Врезавшись в ограждение и устремляясь к зазубренным скалам, вы размышляете о сомнительной мудрости ударить кого-то ножом, пока он ведет машину, в которой вы находитесь',
        choice1: 'Перезапуск',
        choice2: ''),
    Story(
        storyTitle:
            'Вы кооперируетесь с убийцей, напевая стихи "Can you feel the love tonight". Он высаживает вас в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы какие-нибудь хорошие места для захоронения тел. Вы отвечаете: "Попробуйте пирс".',
        choice1: 'Перезапуск',
        choice2: '')
  ];
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber >= 3) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber <= 2) {
      return true;
    } else {
      return false;
    }
  }
}

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
