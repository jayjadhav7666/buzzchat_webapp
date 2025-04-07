import 'package:url_launcher/url_launcher.dart';

class LinksServices {
  void launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'jayprakashjadhav7666@gmail.com',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  void launchInstagram() async {
    final Uri instaUri = Uri.parse(
      'https://instagram.com/jayprakashjadhav7666',
    );
    if (await canLaunchUrl(instaUri)) {
      await launchUrl(instaUri, mode: LaunchMode.externalApplication);
    }
  }

  void launchLinkedIn() async {
    final Uri linkedinUri = Uri.parse(
      'https://www.linkedin.com/in/jayprakash-jadhav-693ba3250',
    );
    if (await canLaunchUrl(linkedinUri)) {
      await launchUrl(linkedinUri, mode: LaunchMode.externalApplication);
    }
  }
}
