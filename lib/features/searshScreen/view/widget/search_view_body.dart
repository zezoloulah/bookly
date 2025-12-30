import 'package:bookly/features/home/presentation/view/widgets/costom_list_seller.dart';
import 'package:bookly/features/searshScreen/view_model/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController SearchController = TextEditingController();
    final h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: h * 0.09),
            TextFormField(
              onChanged: (value) {
                context.read<SearchCubit>().getData(value);
              },
              controller: SearchController,
              decoration: InputDecoration(
                hint: Text("Search"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
      
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return Container(
                    height: h * 0.9,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is SearchSuccess) {
                  return state.data.items.isEmpty
                      ? Container(child: Text("List is Empty"))
                      : CustomListSeller(data: state.data,hight: 0.8,);
                }
                if (state is SearchFailure) {
                  return Center(child: Text(state.errMassage));
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
