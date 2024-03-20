import 'package:odev3/models/question.dart';

const questions = [
  Question(
      question:
          "Aşağıdakileriden hangisi flutter da state'i update eden fonksiyondur?",
      answers: ['setState', 'constructor', 'readState'],
      correctAns: 'setState'),
  Question(
      question: "Flutter hangi dili kullanır?",
      answers: ['JavaScript', 'Dart', 'C#', 'Java'],
      correctAns: 'Dart'),
  Question(
      question: "Stateful Widget ve Stateless Widget arasındaki fark nedir?",
      answers: [
        'Stateful Widget, durumu tutmayan bir widget türüdür.',
        'Stateless Widget, durumu güncelleyebilen bir widget türüdür.',
        'Stateful Widget, durumu tutabilen ve güncelleyebilen bir widget türüdür.',
        'Stateless Widget, her render işlemi sırasında yeniden oluşturulur.',
        '5. Seçenek'
      ],
      correctAns:
          'Stateful Widget, durumu tutabilen ve güncelleyebilen bir widget türüdür.'),
  Question(
      question:
          "Flutter’da bir uygulamanın test edilmesi için hangi test yöntemleri vardır?",
      answers: [
        'Birim Testleri (Unit Test)',
        'Entegrasyon Testleri (Integration Test)',
        'Widget Testleri',
        'Tümü',
        '5. Seçenek',
        '6. Seçenek'
      ],
      correctAns: 'Tümü'),
  Question(
      question: "Flutter’da hangi veri yönetimi yöntemlerini kullanabiliriz?",
      answers: ['Redux', 'Provider', 'MobX', 'Tümü'],
      correctAns: 'Tümü'),
  Question(
      question: "Inherited Widget, Flutter’da ne işe yarar?",
      answers: [
        'Durumu güncellemek için kullanılır.',
        'Widget ağacındaki herhangi bir widget’a erişim sağlar.',
        'Widget’ları yeniden oluşturur.',
        'Görsel olarak zengin uygulamalar oluşturur.'
      ],
      correctAns: 'Widget ağacındaki herhangi bir widget’a erişim sağlar.'),
  Question(
      question:
          "Flutter’da hangi widget, kullanıcının dokunma veya tıklama gibi etkileşimlerine yanıt verir?",
      answers: ['Container', 'Text', 'GestureDetector', 'Row'],
      correctAns: 'GestureDetector'),
  Question(
      question:
          "Flutter’da bir uygulamanın farklı ekran boyutlarına uygun olmasını sağlamak için hangi widget kullanılır?",
      answers: ['Scaffold', 'MediaQuery', 'AspectRatio', 'ListView'],
      correctAns: 'MediaQuery'),
  Question(
      question:
          "Flutter’da bir uygulamada gezinme çubuğu (navigation bar) oluşturmak için hangi widget kullanılır?",
      answers: ['AppBar', 'BottomNavigationBar', 'TabBar', 'Drawer'],
      correctAns: 'BottomNavigationBar'),
];
