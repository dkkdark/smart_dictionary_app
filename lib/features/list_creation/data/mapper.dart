import 'package:smart_dictionary/features/list_creation/data/model/icon/icon_response.dart';

extension IconsModelExtension on IconResponse {
  List<String> mapToUrls({String color = "white"}) {
    return icons
        .map((prefixAndIcon) {
          var parts = prefixAndIcon.split(":");
          if (parts.length == 2)
            return "https://api.iconify.design/${parts[0]}/${parts[1]}.svg?color=$color";
          else
            return null;
        })
        .nonNulls
        .toList();
  }
}
