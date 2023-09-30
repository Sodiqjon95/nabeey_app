import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../services/bloc_service.dart';

class Article3 extends StatefulWidget {
  const Article3({super.key});

  @override
  State<Article3> createState() => _Article3State();
}

class _Article3State extends State<Article3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: (){
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.navigateToArticlePage);
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: ListView(
            children: [
              Container(
                height: 228,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/article2.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Payg'ambarlikdan oldingi davr",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Feather.calendar,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "30.09.2023",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Icon(
                    Feather.eye,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("106",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                "Пайғамбарлик аломатларидан Пайғамбарлик аломатларидан аввалгиси муборак кўкракларининг ёрилишидир. Ёшлик пайтида эмизган оналари Ҳалима онаникида юрганларида биринчи марта кўкрак ёрилиши воқеаси  содир бўлган эди. Аниқ маълумотларга қараганда, ўшанда Расулуллоҳ (соллаллоҳу алайҳи ва  саллам) тўрт ёшда эдилар. Расулуллоҳ (соллаллоҳу алайҳи ва саллам)нинг муборак кўкраклари  иккинчи марта ёрилишида у зот ўн ёшда эдилар.  Учинчи марта муборак кўкракларининг ёрилиши Жаброил (алайҳиссалом) пайғамбарликни  олиб келган пайтда юз берди. Тўртинчи марта муборак кўкракларининг ёрилиши саҳиҳ ҳадисларга  қараганда, Исро кечасида воқе бўлди.  Билингки, кўкрак ёрилиши ва қалбнинг чиқариб олиниши Аллоҳнинг қудрати доирасидаги  ишлар бўлгани сабабли бошқа маънога бурмаслик керак.  2) Пайғамбарлик муҳри Пайғамбарлик аломатларидан бири пайғамбарлик муҳри (Муҳри нубувват)дир. Унинг сифати  ҳақида ривоятлар хилма-хил. Машҳурроқ ривоятга қараганда, у каптарнинг тухумидек келади.  Чап куракларининг қимирлаб турадиган жойида  Мухтасар сийрат 15 бўртиб чиқиб турган. Ундан нур ва хушбўй ҳидлар таралиб турар эди.  3) Рост туш Рост туш кўришлари ҳам нубувват аломатларидандир. Бирон- бир туш кўрсалар, ўнгларида  ҳам содир бўлар эди. Ёруғлик ва нурни кўрар  эдилар, бир овоз эшитар эдилар. Юрган йўлларида баъзи тошлар ва дарахтлар у зотга салом берар,  баъзан тепаларида булут соя солиб турар эди.  Тана тузилишлари  Расулуллоҳ (соллаллоҳу алайҳи ва саллам)  ўта узун ҳам, калта ҳам эмас эдилар. Оппоқ ҳам,  қора ҳам эмас эдилар. Сочлари ўта жингалак  ҳам, сип-силлиқ ҳам эмас эди. Вафот этганларида бошларида йигирма тола ҳам оқ соч йўқ эди.  Жисмлари гўзал, икки кураклари ораси кенг эди.  Сочлари елкаларигача, баъзан қулоқлари юмшоғигача, баъзида қулоқларининг ярмигача тушиб  турар эди. Соқоллари қалин, бармоқлари қаттиқ,  бош ва бўғимлари катта, бироз юмалоқ юзли,  кўзлари қора, киприклари узун, кўзларининг  бошланиш жойлари (бурун томони) қизил, кўкракларидан киндикларигача майин туклари бор  эди. Юрсалар, қияликдан тушаётгандек шахдам  юрардилар. Юзлари худди ўн тўрт кунлик ойдек  чарақлаб турарди. Овозлари ёқимли, чаккалари  текис, оғизлари сал каттароқ, қорин ва кўкраклари баробар, елкалари, билаклари, кўкракларининг  юқори қисми бироз тукли эди. Қўллари узунроқ,  кафтлари кенг, кўзлари катта, товонлари кам эт­ Муҳаммад ибн Аббос Ҳасаний 16 ли, икки кураклари орасида чодирнинг тугмасидек  ёки каптар тухумидек пайғамбарлик муҳри бор  эди. Юрсалар, худди ер у киши учун қисқаргандек  бўларди. У зотга етишиш учун чарчаб қолишарди.  Ўзлари эса бемалол юрардилар. Сочларини тўғри тушириб юрардилар. Кейин ўртасидан фарқ  очдилар. Соч-соқолларини тараб турардилар.  Ҳар кеча уйқудан олдин ҳар кўзларига уч мартадан яхши сурмадан сурардилар. У кишига энг  севимли кийим кўйлак оқ рангли, пахта кийим  эди. Расулуллоҳ (соллаллоҳу алайҳи ва саллам)  кўйлакларининг енги билаккача эди. Баъзан қизғиш чакмон, иштон ва ридо киярдилар. Баъзан  икки қизғиш кийим киярдилар. Баъзан тор енгли  чопон (жубба) киярдилар. Баъзан чакмонга ўхшаш кийим (қибо) киярдилар. Баъзан қора салла  кийиб, учини кураклари ўртасидан тушириб қўярдилар. Баъзан қора жун кийим киярдилар. Муҳр  учун кумуш узук тақардилар. Маҳси, шиппак  киярдилар.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}