import 'package:flutter/material.dart';


class WeekdayButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Set background color to lavender shade
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Sun'), // Sunday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Mon'), // Monday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Tue'), // Tuesday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Wed'), // Wednesday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Thrs'), // Thursday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Fri'), // Friday
          WeekdayButton(icon: Icons.emoji_emotions, label: 'Sat'), // Saturday
        ],
      ),
    );
  }
}

class WeekdayButton extends StatefulWidget {
  final IconData icon;
  final String label;

  WeekdayButton({required this.icon, required this.label});

  @override
  _WeekdayButtonState createState() => _WeekdayButtonState();
}

class _WeekdayButtonState extends State<WeekdayButton> {
  IconData? selectedEmoji;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(selectedEmoji ?? widget.icon),
          iconSize: 30, // Set the size of the icon
          color: Colors.white, // Set button color
          onPressed: () {
            _showEmojiOptions(context);
          },
        ),
        Text(widget.label),
      ],
    );
  }

  void _showEmojiOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildEmojiOption(context, Icons.sentiment_satisfied, '😊'), // Smiley
              _buildEmojiOption(context, Icons.sentiment_neutral, '😐'), // Moderate
              _buildEmojiOption(context, Icons.sentiment_very_dissatisfied, '😢'), // Crying
            ],
          ),
        );
      },
    ).then((selectedEmoji) {
      if (selectedEmoji != null) {
        setState(() {
          this.selectedEmoji = selectedEmoji;
        });
      }
    });
  }

  Widget _buildEmojiOption(BuildContext context, IconData icon, String emoji) {
    return ListTile(
      leading: Icon(icon),
      title: Text(emoji),
      onTap: () {
        Navigator.pop(context, icon);
      },
    );
  }
}
