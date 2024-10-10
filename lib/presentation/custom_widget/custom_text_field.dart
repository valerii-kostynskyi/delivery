import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final bool isObscureText;
  final VoidCallback? onSuffixIconTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final ScrollController? scrollController;

  const CustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.prefixIcon,
    this.focusNode,
    this.textInputAction,
    this.inputFormatters,
    this.onSubmitted,
    this.scrollController,
    this.isObscureText = false,
    this.onSuffixIconTap,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              labelText!,
              style: theme.textTheme.bodySmall,
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: theme.canvasColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.08),
                offset: const Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
          child: TextField(
            scrollController: scrollController,
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            maxLines: isObscureText ? 1 : null,
            textInputAction: textInputAction,
            onChanged: onChanged,
            controller: controller,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            obscureText: isObscureText,
            decoration: InputDecoration(
              isDense: true,
              counterText: '',
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: onSuffixIconTap,
                      child: Icon(suffixIcon),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
