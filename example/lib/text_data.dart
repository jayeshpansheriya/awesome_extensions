import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

/// 🎨 **Awesome Text Extensions Example**
///
/// Demonstrates the awesome text extensions with both:
/// 1. TextStyle extensions (for use with Theme)
/// 2. Text widget extensions (for direct styling)
class TextExt extends StatelessWidget {
  const TextExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awesome Text Extensions')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ═══════════════════════════════════════════════════════════════
            // TextStyle Extensions - Use with Theme
            // ═══════════════════════════════════════════════════════════════
            _buildSectionTitle('TextStyle Extensions (with Theme)'),
            const SizedBox(height: 12),

            Text('Display Large Bold', style: context.displayLarge?.bold),
            const SizedBox(height: 8),

            Text(
              'Headline Large Semi-Bold',
              style: context.headlineLarge?.semiBold,
            ),
            const SizedBox(height: 8),

            Text('Title Large Regular', style: context.titleLarge?.regular),
            const SizedBox(height: 8),

            Text('Body Large Medium', style: context.bodyLarge?.medium),
            const SizedBox(height: 8),

            Text('Body Small Thin', style: context.textTheme.bodySmall?.thin),
            const SizedBox(height: 8),

            Text(
              'Custom Style',
              style: context.bodyLarge?.bold.withColor(Colors.blue).size(20),
            ),

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 24),

            // ═══════════════════════════════════════════════════════════════
            // Text Widget Extensions - Direct Styling (Awesome Style)
            // ═══════════════════════════════════════════════════════════════
            _buildSectionTitle('Text Widget Extensions (Awesome Style)'),
            const SizedBox(height: 12),

            // Example 1: Basic styling
            const Text('Hello World').bold.fontSize(25).italic,
            const SizedBox(height: 8),

            // Example 2: From String
            'Awesome Extensions'
                .text()
                .fontSize(28)
                .bold
                .textColor(Colors.deepPurple),
            const SizedBox(height: 8),

            // Example 3: Multiple styles
            'Beautiful Typography'
                .text()
                .fontSize(24)
                .fontWeight(FontWeight.w600)
                .textColor(Colors.teal)
                .letterSpacing(1.5)
                .height(1.5),
            const SizedBox(height: 8),

            // Example 4: With underline
            'Important Notice'
                .text()
                .fontSize(18)
                .textColor(Colors.red)
                .withUnderLine,
            const SizedBox(height: 8),

            // Example 5: With shadow
            'Glowing Text'
                .text()
                .fontSize(22)
                .bold
                .textColor(Colors.white)
                .textShadow(
                  color: Colors.blue.withOpacity(0.5),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
            const SizedBox(height: 8),

            // Example 6: Line-through
            'Old Price: \$99.99'
                .text()
                .fontSize(16)
                .lineThrough
                .textColor(Colors.grey),
            const SizedBox(height: 8),

            // Example 7: Max lines with ellipsis
            'This is a very long text that will be truncated with ellipsis when it exceeds two lines'
                .text()
                .fontSize(14)
                .maxLines(2)
                .overflow(TextOverflow.ellipsis),

            const SizedBox(height: 24),

            // Performance note
            _buildPerformanceNote(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildPerformanceNote() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info_outline, color: Colors.blue[700], size: 20),
              const SizedBox(width: 8),
              Text(
                '💡 Awesome Text API',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Use getters for simple styles (.bold, .italic) and methods for '
            'parameterized styles (.fontSize(24)). Works on both String (via .text()) '
            'and existing Text widgets.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue[900],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
