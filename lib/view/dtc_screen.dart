import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class DTCScreen extends StatelessWidget {
  const DTCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        CircleAvatar(
            foregroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        )
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MultiSelectDropDown<int>(
              onOptionSelected: (List<ValueItem> selectedOptions) {},
              options: const [
                ValueItem(label: 'Phnum Penh', value: 1),
                ValueItem(label: 'Takev', value: 2),
                ValueItem(label: 'Modolkiri', value: 4),
              ],
              hint: 'Brand',
              selectionType: SelectionType.single,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Product',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 0.22),
                clipBehavior: Clip.antiAlias,
                children: List.generate(10, (index) {
                  return GestureDetector(
                    child: const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Code :'),
                              Text('Mistakes :'),
                              Text('Brand :')
                            ]),
                      ),
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
