/// [IconType] is state of animation for [AnimateIcons]
enum IconType { animatedOnTap, animatedOnHover, continueAnimation, onlyIcon }

/// [AnimateIcons] is bunch of icons
enum AnimateIcons {
  bell,
  heart,
  download,
  settings,
  trashBin,
  playStop,
  unlock,
  zoom,
  tune,
  wifiSearch,
  upload,
  activity,
  clock,
  cloud,
  document,
  edit,
  hourglass,
  eye,
  iPhoneSpinner,
  share,
  refresh,
  menuArrow,
  numericalSorting,
  compass,
  leftRight,
  circlesMenu2,
  alphabeticalSorting,
  add,
  fullscreen,
  editCancel,
  circlesMenu3,
  skipForwards,
  checkmarkOk,
  editOk,
  birthdayCake,
  blockMic,
  pause,
  favoriteFolder,
  skipBackwards,
  map,
  spinningArrows,
  internet,
  mute,
  missedCall,
  mapPointer,
  submitProgress,
  noComments
}

/// [AnimatedIconsExtension] is for return respcted filepath depend on [AnimateIcons]
extension AnimatedIconsExtension on AnimateIcons {
  String getAnimatedLottieIcon() {
    switch (this) {
      case AnimateIcons.bell:
        return 'assets/bell.json';
      case AnimateIcons.heart:
        return 'assets/heart.json';
      case AnimateIcons.download:
        return 'assets/download.json';
      case AnimateIcons.settings:
        return 'assets/settings.json';
      case AnimateIcons.trashBin:
        return 'assets/trash_bin.json';
      case AnimateIcons.playStop:
        return 'assets/play_stop.json';
      case AnimateIcons.unlock:
        return 'assets/unlock.json';
      case AnimateIcons.zoom:
        return 'assets/zoom.json';
      case AnimateIcons.tune:
        return 'assets/tune.json';
      case AnimateIcons.wifiSearch:
        return 'assets/wifi_search.json';
      case AnimateIcons.upload:
        return 'assets/upload.json';
      case AnimateIcons.activity:
        return 'assets/activity.json';
      case AnimateIcons.clock:
        return 'assets/clock.json';
      case AnimateIcons.cloud:
        return 'assets/cloud.json';
      case AnimateIcons.document:
        return 'assets/document.json';
      case AnimateIcons.edit:
        return 'assets/edit.json';
      case AnimateIcons.hourglass:
        return 'assets/hourglass.json';
      case AnimateIcons.eye:
        return 'assets/eye.json';
      case AnimateIcons.iPhoneSpinner:
        return 'assets/iphone_spinner.json';
      case AnimateIcons.share:
        return 'assets/share.json';
      case AnimateIcons.refresh:
        return 'assets/refresh.json';
      case AnimateIcons.menuArrow:
        return 'assets/menu_arrow.json';
      case AnimateIcons.numericalSorting:
        return 'assets/numerical_sorting.json';
      case AnimateIcons.compass:
        return 'assets/compass.json';
      case AnimateIcons.leftRight:
        return 'assets/left_right.json';
      case AnimateIcons.circlesMenu2:
        return 'assets/circles_menu_2.json';
      case AnimateIcons.alphabeticalSorting:
        return 'assets/alphabetical_sorting.json';
      case AnimateIcons.add:
        return 'assets/add.json';
      case AnimateIcons.fullscreen:
        return 'assets/fullscreen.json';
      case AnimateIcons.editCancel:
        return 'assets/edit_cancel.json';
      case AnimateIcons.circlesMenu3:
        return 'assets/circles_menu_3.json';
      case AnimateIcons.skipForwards:
        return 'assets/skip_forwards.json';
      case AnimateIcons.checkmarkOk:
        return 'assets/checkmark_ok.json';
      case AnimateIcons.editOk:
        return 'assets/edit_ok.json';
      case AnimateIcons.birthdayCake:
        return 'assets/birthday_cake.json';
      case AnimateIcons.blockMic:
        return 'assets/block_mic.json';
      case AnimateIcons.pause:
        return 'assets/pause.json';
      case AnimateIcons.favoriteFolder:
        return 'assets/favorite_folder.json';
      case AnimateIcons.skipBackwards:
        return 'assets/skip_backwards.json';
      case AnimateIcons.map:
        return 'assets/map.json';
      case AnimateIcons.spinningArrows:
        return 'assets/spinning_arrows.json';
      case AnimateIcons.internet:
        return 'assets/internet.json';
      case AnimateIcons.mute:
        return 'assets/mute.json';
      case AnimateIcons.missedCall:
        return 'assets/missed_call.json';
      case AnimateIcons.mapPointer:
        return 'assets/map_pointer.json';
      case AnimateIcons.submitProgress:
        return 'assets/submit_progress.json';
      case AnimateIcons.noComments:
        return 'assets/no_comments.json';
      default:
        return 'assets/heart.json';
    }
  }
}
