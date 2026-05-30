import 'package:flutter/material.dart';
import 'app_colors.dart';

// =============================================
// PRE-DEFINED TEXT STYLES
// Ready-to-use text styles for consistent typography
// All sizes are base values — use with responsive scaling as needed
// Just drop these into your TextStyle property and override size/color if needed
// =============================================
class AppTextStyles {
  AppTextStyles._();

  // ---- Headings ----

  /// Large screen titles, page headers
  /// Usage: AppBar title, screen headings
  static const TextStyle heading1 = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
    height: 1.3,
  );

  /// Section headers, card titles
  /// Usage: Section labels, dialog titles
  static const TextStyle heading2 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.3,
    height: 1.3,
  );

  /// Sub-headers, list tile titles
  /// Usage: List item headings, form labels
  static const TextStyle heading3 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  // ---- Body Text ----

  /// Primary body text, paragraphs
  /// Usage: Descriptions, main content
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  /// Secondary body text, slightly smaller
  /// Usage: Secondary information, subtitles
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.4,
  );

  /// Small body text, captions
  /// Usage: Timestamps, metadata, helper text
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.3,
  );

  // ---- Button Text ----

  /// Large button text
  /// Usage: ElevatedButton, main CTAs
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnPrimary,
    letterSpacing: 0.5,
  );

  /// Medium button text
  /// Usage: OutlinedButton, secondary actions
  static const TextStyle buttonMedium = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    letterSpacing: 0.3,
  );

  /// Small button or chip text
  /// Usage: Chips, small action buttons
  static const TextStyle buttonSmall = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    letterSpacing: 0.2,
  );

  // ---- Labels ----

  /// Input field labels
  /// Usage: TextField label, input decoration
  static const TextStyle inputLabel = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    height: 1.2,
  );

  /// Input field hint text
  /// Usage: TextField hint, placeholder
  static const TextStyle inputHint = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
    height: 1.2,
  );

  /// Input field value text
  /// Usage: TextField input text
  static const TextStyle inputValue = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  // ---- Status Text ----

  /// Success status messages
  /// Usage: Success alerts, confirmed labels
  static const TextStyle statusSuccess = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.successDark,
  );

  /// Error status messages
  /// Usage: Error alerts, failure labels
  static const TextStyle statusError = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.errorDark,
  );

  /// Warning status messages
  /// Usage: Pending labels, warning alerts
  static const TextStyle statusWarning = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.warning,
  );

  // ---- Special Use ----

  /// Large amount/number display
  /// Usage: Price display, balance
  static const TextStyle amount = TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -1.0,
    height: 1.1,
  );

  /// Overline / uppercase labels
  /// Usage: Category tags, small uppercase text
  static const TextStyle overline = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    letterSpacing: 1.5,
  );
}