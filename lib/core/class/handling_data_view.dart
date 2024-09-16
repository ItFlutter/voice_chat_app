import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:voice_chat_app/core/class/status_request.dart';
import 'package:voice_chat_app/core/constant/app_image_asset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final Future<void> Function() onRefresh;
  const HandlingDataView(
      {super.key,
      required this.statusRequest,
      required this.widget,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? CustomRefreshHandlindDataView(
            onRefresh: onRefresh,
            statusRequest: statusRequest,
            imageAsset: AppImageAsset.loading)
        : statusRequest == StatusRequest.offlineFailure
            ? CustomRefreshHandlindDataView(
                onRefresh: onRefresh,
                statusRequest: statusRequest,
                imageAsset: AppImageAsset.offline)
            : statusRequest == StatusRequest.serverFailure
                ? CustomRefreshHandlindDataView(
                    onRefresh: onRefresh,
                    statusRequest: statusRequest,
                    imageAsset: AppImageAsset.server)
                : statusRequest == StatusRequest.failure
                    ? CustomRefreshHandlindDataView(
                        onRefresh: onRefresh,
                        statusRequest: statusRequest,
                        imageAsset: AppImageAsset.noData)
                    : widget;
  }
}

class HandlingDataViewRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final Future<void> Function() onRefresh;
  const HandlingDataViewRequest(
      {super.key,
      required this.statusRequest,
      required this.widget,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? CustomRefreshHandlindDataView(
            onRefresh: onRefresh,
            statusRequest: statusRequest,
            imageAsset: AppImageAsset.loading)
        : statusRequest == StatusRequest.offlineFailure
            ? CustomRefreshHandlindDataView(
                onRefresh: onRefresh,
                statusRequest: statusRequest,
                imageAsset: AppImageAsset.offline)
            : statusRequest == StatusRequest.serverFailure
                ? CustomRefreshHandlindDataView(
                    onRefresh: onRefresh,
                    statusRequest: statusRequest,
                    imageAsset: AppImageAsset.server)
                : widget;
  }
}

class CustomRefreshHandlindDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final String imageAsset;
  final Future<void> Function() onRefresh;
  const CustomRefreshHandlindDataView({
    super.key,
    required this.statusRequest,
    required this.imageAsset,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Center(child: Lottie.asset(imageAsset, width: 250.w, height: 250.h))
        ],
      ),
    );
  }
}
