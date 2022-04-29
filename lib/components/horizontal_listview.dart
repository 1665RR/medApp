import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:med_app/components/category_model.dart';

class ApiService{
  Future<List<Category>?> getCategory() async {
    try {
      var url = Uri.parse('https://mediclix-ecommerce-new.azurewebsites.net' + '/api/v1/category?loadSubCategories=true');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Category> _model = categoryModelFromJson(response.body).cast<Category>();
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

// class HorizontalList extends StatelessWidget {
//   const HorizontalList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Category(
//             image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
//             image_caption: 'Allergies',
//           ),
//           Category(
//             image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
//             image_caption: 'Allergies',
//           ),
//           Category(
//             image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
//             image_caption: 'Allergies',
//           ),
//           Category(
//             image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
//             image_caption: 'Allergies',
//           ),
//         ],
//       ),
//     );
//   }
// }




  class Category extends StatefulWidget {
    const Category({Key? key}) : super(key: key);

    @override
    State<Category> createState() => _CategoryState();
  }

  class _CategoryState extends State<Category> {
    late List<CategoryModel>? _categoryModel = [];
    @override
    void initState() {
      super.initState();
      _getData();
    }
    void _getData() async {
      _categoryModel = (await ApiService().getCategory())!.cast<CategoryModel>();
      Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
    }

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            height: 50.0,
            child: ListView.builder(
              itemCount: _categoryModel!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  width: 150.0,
                    child: Text(_categoryModel![index].label),
                );
              },
            ),
          ),
        ),
      );
    }


  }

