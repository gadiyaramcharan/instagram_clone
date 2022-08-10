import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  bool like = false;
  int likecount = 0;
  bool doubletapped = false;

  bool save = false;

  void savechange() {
    save = !save;
    update();
  }

  void doubletappedupdate() {
    if (doubletapped) return;
    if (like) return;
    like = true;
    likecount++;
    doubletapped = true;
    update();
  }

  void likechange() {
    like = !like;
    like == false ? likecount-- : likecount++;
    if (like == false) {
      doubletapped = false;
    }

    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
