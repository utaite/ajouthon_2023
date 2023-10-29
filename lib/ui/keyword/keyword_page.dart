import 'package:flutter/material.dart';

import '../../module/module.dart';
import 'keyword_page_controller.dart';

class KeywordPage extends GetView<KeywordPageController> {
  KeywordPage({
    super.key,
  });

  late final TextEditingController _textEditingController = TextEditingController()
    ..addListener(() {
      controller.onChangedText(_textEditingController.value.text);
    });

  @override
  Widget build(BuildContext context) {
    debugPrint('[MainPage] build: ${controller.state}');
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        body: SafeArea(
          child: controller.rx(
            (state) => CustomScrollView(
              slivers: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 30),
                    description(context),
                    const SizedBox(height: 20),
                    inputKeyword(context),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.checklist),
                        SizedBox(width: 10),
                        Text('나의 키워드'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 5,
                        children: [
                          ...state.keywords.map(
                            (keyword) => InputChip(
                              onSelected: (_) => controller.onDeleteButton(keyword),
                              labelPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                              label: Text(
                                keyword,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              selected: true,
                              checkmarkColor: Colors.white,
                              selectedColor: Colors.pink[300],
                              elevation: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.reviews_outlined),
                        SizedBox(width: 10),
                        Text('추천 키워드'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 5,
                        children: [
                          ...state.recommendKeywords.indexed.map(
                            (record) => InputChip(
                              selected: state.keywords.contains(record.$2),
                              onSelected: (_) => controller.onSelectedButton(record.$2),
                              backgroundColor: Colors.grey,
                              shadowColor: Colors.grey[60],
                              labelPadding: const EdgeInsets.fromLTRB(9, 3, 9, 3),
                              label: Text(
                                record.$2,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              checkmarkColor: Colors.white,
                              selectedColor: Colors.pink[300],
                              elevation: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    UI.spacer,
                    const SizedBox(height: 30),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('다음'),
                    ),
                    const SizedBox(height: 30),
                  ],
                ).sliverFill,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget description(BuildContext context) => Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              '어떤 주제를 좋아하세요?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              '나에게 딱 맞는 모임과 행사를 추천해드려요.',
            ),
            const SizedBox(height: 3),
            const Text('관심 주제를 탭하여 설정하세요.'),
          ],
        ),
      );

  Widget inputKeyword(BuildContext context) => SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: _textEditingController,
                // onChanged: controller.onChangedText,
                decoration: const InputDecoration(hintText: '키워드 입력'),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.onPressedButton();
                _textEditingController.clear();
              },
              icon: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
          ],
        ),
      );
}
