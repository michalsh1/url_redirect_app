
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final Uri _url = Uri.parse('https://www.gov.il/he/departments/government-press-office/govil-landing-page');

void main() => runApp(MaterialApp(
    home: UrlRedirect()
));

class UrlRedirect extends StatefulWidget {
  const UrlRedirect({Key? key}) : super(key: key);

  @override
  State<UrlRedirect> createState() => _UrlRedirectState();
}

class _UrlRedirectState extends State<UrlRedirect> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)=> _launchUrl());
  }
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
