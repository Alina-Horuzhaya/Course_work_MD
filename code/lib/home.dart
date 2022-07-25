import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_plant_shop_ui/detail.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  List<Product> _product = [
    Product(
      image: '1.png',
      title: 'Амариллис',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое. Подойдут окна юго-западной или юго-восточной ориентации.'
          ' ВЛАЖНОСТЬ: не требовательное растение.'
          ' ТЕМПЕРАТУРА: летом 18-23°C. В период покоя 10-13°C.'
          ' ПОЛИВ: постоянно увеличивается по мере роста и развития. ВОДА НЕ ДОЛЖНА ПОПАДАТЬ НА ЛУКОВИЦУ',
    ),
      Product(
      image: '2.jpg',
      title: 'Мирт',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое растение.'
          ' ВЛАЖНОСТЬ: любит регулярное опрыскивание тёплой водой.'
          ' ТЕМПЕРАТУРА: летом - температура окружающей среды. Зимой не выше 10°C.'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: с марта по август удобряют раз в месяц комплексным минеральным удобрением.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    ),
    Product(
      image: '3.jpg',
      title: 'Орхидея-паук (Брассия)',
      desc:
          'ОСВЕЩЕНИЕ: яркий рассеянный свет с западной или восточной стороны.'
          ' ВЛАЖНОСТЬ: чем выше влажность, тем лучше самочувствие орхидеи (помодет увлажнитель воздуха и частое опрыскивание).'
          ' ТЕМПЕРАТУРА: идеальная температура 23-25°C, так же разрешена комнатная.'
          ' ПОЛИВ: метод погружения горшка в сосуд с водой на 20-30 минут (НЕЛЬЗЯ ДОПУСКАТЬ СМОРЩИВАНИЯ ПСЕВДОБУЛЬБ)',
    ),
    Product(
      image: '4.jpg',
      title: 'Бальзамин',
      desc:
          'ОСВЕЩЕНИЕ: неприхотлив, но для постоянно и обильного цветения нужен яркий свет хотя бы несколько часов.'
          ' ВЛАЖНОСТЬ: влаголюбивое растение, летом полив обильный (НЕ ДОПУСКАТЬ ПЕРЕСЫХАНИЯ ЗЕМЛЯНОГО КОМА).'
          ' ТЕМПЕРАТУРА: обычная комнатная температура (зимой не ниже 12-14°C).'
          ' ПОЛИВ: поливать мягкой водой, поддерживая влажность почвы.'
          ' УДОБРЕНИЕ: подкармливать с весны до осени каждые 2 недели минеральным удобрением для цветущих растений.',
    ),
    Product(
      image: '5.jpg',
      title: 'Сенполия (фиалка)',
      desc:
          'ОСВЕЩЕНИЕ: много света, но никаких солнечных лучей (восточные или западные окна).'
          ' ВЛАЖНОСТЬ: любит повышенную влажность (ОПРЫСКИВАТЬ ЛИСТЬЯ НЕЛЬЗЯ).'
          ' ТЕМПЕРАТУРА: для взрослой фиалки 20-24°C, для молодых растений 23-25°C .'
          ' ПОЛИВ: отстоянная в открытой посуде водопроводная вода (вода не должна попадать на листья и в центр розетки).'
          ' УДОБРЕНИЕ: примерно через 1.5 месяца после пересадки.'
          ' ОБРЕЗКА: должна быть регулярной и планомерной.',
    ),
    Product(
      image: '6.png',
      title: 'Пеларгония (Герань)',
      desc:
          'ОСВЕЩЕНИЕ: для цветения нужен солнечный свет.'
          ' ВЛАЖНОСТЬ: желательно опрыскивать утром или вечером!'
          ' ТЕМПЕРАТУРА: выдерживает кратковременное похолодание до +1°C.'
          ' ПОЛИВ: летом - обильный, зимой лучше поливать умеренно.'
          ' ПОДКОРМКА: раз в 2 недели жидким минеральным удобрением.'
          ' ОБРЕЗКА: ранней весной до начала вегетационного периода.',
    ),
        Product(
      image: '7.png',
      title: 'Роза комнатная',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое растение (южная, юго-восточная, юго-западная стороны).'
          ' ВЛАЖНОСТЬ: влажный воздух и теплый душ раз в неделю.'
          ' ТЕМПЕРАТУРА: летом - умеренная, зимой прохладная.'
          ' ПОЛИВ: зависит от степени цветения - постепенное увеличение, осенью полив прекращается.'
          ' ПОДКОРМКА: раз в неделю во время роста и цветения удобрением для растущих растений.'
          ' ОБРЕЗКА: обрезка побегов осенью, примерно на 1/3 оставляя на каждой ветке по 5 живых почек.',
    ),
        Product(
      image: '8.jpg',
      title: 'Лизиантус (Эустома)',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивая, подходят ярко освещенные помещения.'
          ' ВЛАЖНОСТЬ: умеренная влажность, хорошо растет на открытом воздухе.'
          ' ТЕМПЕРАТУРА:в летний период 20-25°C, зимой 12-15°C.'
          ' ПОЛИВ: по мере подсыхания врехнего слоя, излишки воды из поддона слить, не допускать переувлажнение почвы.'
          ' ПОДКОРМКА: в период активного роста и цветения подкармливают комплексными минеральными удобрениями для цветущих растений 2 раза в месяц.'
          ' ОБРЕЗКА: отцветшие стебли срезают, оставляя не менее 2х пар листьев..',
    ),
        Product(
      image: '9.jpg',
      title: 'Очиток (Седум)',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое растение, хорошо растет на западном и южных окнах.'
          ' ВЛАЖНОСТЬ: не имеет значения, опрыскивание полезно для удаления пыли на листьях.'
          ' ТЕМПЕРАТУРА: не имеет существенного значения, выдерживают до 5°C, зимой больше подходит прохладное место с температурой 8-12°C.'
          ' ПОЛИВ: поливать умеренно, увлажнять по мере подсыхания почвы, пересушивание не вредит.'
          ' ПОДКОРМКА: весной и летом в период активного роста, достаточно 1 раза в месяц, используют удобрение для кактусов и суккулентов.',
    ),
        Product(
      image: '10.png',
      title: 'Алоэ',
      desc:
          'ОСВЕЩЕНИЕ: светолюбивое, предпочитает южные окна, но не пропадает и в тени -в темных комнатах алоэ вытягивается, становится бледным.'
          ' ВЛАЖНОСТЬ: существенной роли не играет, полезно иногда устраивать теплый душ для очистки листьев.'
          ' ТЕМПЕРАТУРА: летом температура должна быть умеренной, зимой прохладной, выдерживает температуру до 6°C.'
          ' ПОЛИВ: летом - умеренный, зимой очень редко водой комнатной температуры или на несколько градусов теплее.'
          ' ПОДКОРМКА: достаточно 1 раз в месяц весной и летом слабым раствором минерального удобрения для кактусов и суккулентов.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 14, right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Это я - твой помощник',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(
                IconData(0xe0ef, fontFamily: 'MaterialIcons'),
                size: 40,
                color: Color.fromARGB(255, 31, 106, 85),
              )
            ],
          ),
          Text(
            'по уходу за цветами и растениями',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 20, 109, 91)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Row(
              children: [_searchBox()],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 4,
              itemCount: _product.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          product: _product[index],
                        ),
                      ),
                    );
                  },
                  child: _productItem(
                    title: _product[index].title,
                    image: _product[index].image,
                    isFavorited: Random().nextBool(),
                  ),
                );
              },
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Поиск',
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 169, 225, 200),
          contentPadding: EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }


  Widget _productItem({String title, image, bool isFavorited}) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/$image',
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '$title',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Product {
  String title;
  String image;
  String desc;

  Product({this.title, this.image, this.desc});
}
