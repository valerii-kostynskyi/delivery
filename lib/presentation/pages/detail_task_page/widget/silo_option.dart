import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:delivery/presentation/utility/extension/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SiloOption extends StatelessWidget {
  final int selectedSiloId;
  final ValueChanged<int> onSelect;
  final DetailTaskSiloModel detailSiloTask;

  const SiloOption({
    super.key,
    required this.selectedSiloId,
    required this.onSelect,
    required this.detailSiloTask,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final int value = detailSiloTask.id;
    final bool isSelected = value == selectedSiloId;

    return GestureDetector(
      onTap: () => onSelect(value),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.onSurface : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Radio<int>(
              value: value,
              groupValue: selectedSiloId,
              activeColor: theme.focusColor,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  onSelect(newValue);
                }
              },
            ),
            Expanded(
              child: Text(
                detailSiloTask.name,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 16,
              height: 16,
              child: SvgPicture.asset(
                'assets/icons/silo.svg',
              ),
            ),
            const SizedBox(width: 4),
            Text(
              formatWeight(detailSiloTask.storageAmount),
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.primaryColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
