import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../module/module.dart';
import 'main_bottom_sheet_controller.dart';

class MainBottomSheet extends GetView<MainBottomSheetController> {
  const MainBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('[MainBottomSheet] build: ${controller.state}');
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: UI.borderRadiusTop,
      ),
      child: controller.rx(
        (state) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Paddings.height8,
            Row(
              children: [
                Paddings.width16,
                const Opacity(
                  opacity: 0,
                  child: IgnorePointer(
                    child: CloseButton(),
                  ),
                ),
                Expanded(
                  child: Text(
                    '[${state.keyword}] ${state.title}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: state.color,
                          fontWeight: FontWeight.w500,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const CloseButton(),
                Paddings.width16,
              ],
            ),
            Paddings.height8,
            Padding(
              padding: Paddings.paddingHorizontal16,
              child: Text(
                '일시: ${state.dateTime.dateAndTime}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black87,
                    ),
              ),
            ),
            Paddings.height8,
            Padding(
              padding: Paddings.paddingHorizontal16,
              child: Text(
                '장소: ${state.place}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black87,
                    ),
              ),
            ),
            Paddings.height8,
            AspectRatio(
              aspectRatio: 1,
              child: PageView.builder(
                onPageChanged: controller.onChangedPage,
                physics: const ClampingScrollPhysics(),
                itemCount: state.images.length,
                itemBuilder: (context, i) => CachedNetworkImage(
                  imageUrl: state.images[i].elvis,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Paddings.height8,
            Padding(
              padding: Paddings.paddingHorizontal16,
              child: controller.index.rx(
                (rx) => Wrap(
                  alignment: WrapAlignment.center,
                  spacing: Paddings.paddingValue12,
                  children: [
                    ...state.images.indexed.map(
                      (x) => CircleAvatar(
                        radius: 5,
                        backgroundColor: rx.value == x.$1 ? state.color : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Paddings.height8,
            FilledButtonTheme(
              data: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                  backgroundColor: state.color,
                ).merge(Theme.of(context).filledButtonTheme.style),
              ),
              child: FilledButton(
                onPressed: controller.onPressedButton,
                child: const Text('바로가기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
