import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/experience.dart';

class ExperienceDetailScreen extends StatelessWidget {
  const ExperienceDetailScreen({required this.experience, super.key});

  final Experience experience;

  String _formatDate(DateTime d) {
    final local = d.toLocal();
    return '${local.day.toString().padLeft(2, '0')}-'
        '${local.month.toString().padLeft(2, '0')}-${local.year}';
  }

  @override
  Widget build(BuildContext context) {
    final period = experience.endedAt == null
        ? '${_formatDate(experience.startedAt)} - Present'
        : '${_formatDate(experience.startedAt)} - ${_formatDate(experience.endedAt!)}';

    return Scaffold(
      appBar: AppBar(title: Text(experience.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (experience.thumbnail.isNotEmpty) ...[
              Center(
                child: Image.network(
                  experience.thumbnail,
                  height: 160,
                  fit: BoxFit.contain,
                  errorBuilder: (_, _, _) =>
                      const Icon(Icons.broken_image, size: 64),
                ),
              ),
              const SizedBox(height: 16),
            ],
            Text(
              experience.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              experience.categoryDisplay.isNotEmpty
                  ? experience.categoryDisplay
                  : experience.category,
            ),
            const SizedBox(height: 4),
            Text(period),
            const SizedBox(height: 16),
            Text(experience.description),
          ],
        ),
      ),
    );
  }
}
