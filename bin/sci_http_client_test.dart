import 'dart:convert';

import 'package:sci_http_client/http_io_client.dart';

void main() async {
  var client = HttpIOClient();
  var streamResponse = await client.getStream("https://tercen.com");
  var content = await utf8.decodeStream(streamResponse.stream.cast());
  print(content);
}
