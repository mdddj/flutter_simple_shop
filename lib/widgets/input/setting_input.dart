part of '../index.dart';

class SettingInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? initHintText;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChanged;

  const SettingInput({super.key,
    this.controller,
    this.initHintText,
    this.onSubmit,
    this.onChanged});

  InputBorder get _border =>
      const UnderlineInputBorder(borderSide: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmit,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: initHintText,
          border: _border,
          enabledBorder: _border,
          focusedBorder: _border),
    );
  }
}
