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
            height: 8.0,
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