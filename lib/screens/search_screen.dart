import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/components/build_artical_item.dart';
import 'package:news/cubit/cubit_app.dart';
import 'package:news/cubit/states_app.dart';
import 'package:news/models/business_model.dart';


class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
            listener: (context,state){},
           builder: (context,state){
               var list = NewsCubit.get(context);
              return  Scaffold(
                appBar: AppBar(),
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0,),
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'search',
                        ),
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        onChanged: (value){
                          NewsCubit.get(context).getSearch(value);
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'search must not be empty';
                          }
                        },
                      ),
                    ),
                     //BuildArticleItem(),
                  ],
                ),
              );
           },
    );
  }
}
