import 'package:flutter/material.dart';
import 'package:clean_arch_templ/config/constants/constants.dart';
import 'package:clean_arch_templ/features/home/presentation/widgets/laoding_widget.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListWidget extends StatelessWidget {
  const LoadingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: false,
      child: ListView.separated(
        itemCount: 60,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(DEFAULT_BORDER_RADIUS),
        separatorBuilder: (context, index) => const SizedBox(
          height: DEFAULT_BORDER_RADIUS,
        ),
        itemBuilder: (context, index) => const _LoadingItemWidiget(),
      ),
    );
  }
}

class _LoadingItemWidiget extends StatelessWidget {
  const _LoadingItemWidiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DEFAULT_BORDER_RADIUS),
      height: DEFAULT_ITEM_HEIGHT,
      child: Row(
        children: [
          const LoadingWidget(
            width: DEFAULT_ITEM_HEIGHT,
            height: DEFAULT_ITEM_HEIGHT,
          ),
          const SizedBox(
            width: DEFAULT_BORDER_RADIUS,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LoadingWidget(
                  height: 16.0,
                  width: 100.0,
                ),
                const LoadingWidget(
                  height: 16.0,
                  width: 200.0,
                ),
                const LoadingWidget(
                  height: 16.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}