import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? labelText;

  const PhoneTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.labelText,
  });

  @override
  PhoneTextFieldState createState() => PhoneTextFieldState();
}

class PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.labelText!,
              style: theme.textTheme.bodySmall,
            ),
          ),
        Focus(
          onFocusChange: (hasFocus) {
            setState(() {
              if (hasFocus && widget.controller.text.isEmpty) {
                widget.controller.text = '+38 ';
                widget.controller.selection = TextSelection.collapsed(
                  offset: widget.controller.text.length,
                );
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: const Offset(0, 1),
                  blurRadius: 2,
                ),
              ],
            ),
            child: TextField(
              controller: widget.controller,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                MaskedInputFormatter('+00 (000) 000-00-00'),
              ],
              decoration: const InputDecoration(
                hintText: '+38 (---) --- -- --',
                border: OutlineInputBorder(),
              ),
              onChanged: widget.onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
