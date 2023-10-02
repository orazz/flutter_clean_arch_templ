import 'package:flutter_clean_arch_templ/config/constants/constants.dart';
import 'package:flutter/material.dart';

class LoadingFailedWidget extends StatelessWidget {
  final String errorMessage;
  final IconData icon;
  final VoidCallback onRetry;
  const LoadingFailedWidget(
      {Key? key,
      this.errorMessage = "Loading Failed",
      this.icon = Icons.error_outline_rounded,
      required this.onRetry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 60.0,
            color: Colors.black.withOpacity(0.4),
          ),
          Text(errorMessage,
              style: TextStyle(
                  fontSize: 18.0, color: Colors.black.withOpacity(0.5))),
          const SizedBox(
            height: DEFAULT_BORDER_RADIUS,
          ),
          TextButton(
              onPressed: onRetry,
              child: const Text(
                'Retry',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ))
        ],
      ),
    );
  }
}