import 'package:flutter/material.dart';

// =============================================
// APP COLOR PALETTE
// Centralized color definitions for the entire app
// Use these constants instead of hardcoding Color() values
// Makes it easy to swap themes or adjust shades globally
// =============================================
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // ---- Primary Blue Shades ----
  /// Main brand color — app bars, primary buttons, active icons
  static const Color primary = Color(0xFF1565C0);        // Deep blue
  static const Color primaryLight = Color(0xFF42A5F5);   // Lighter blue for highlights
  static const Color primaryDark = Color(0xFF0D47A1);    // Darker blue for pressed states
  static const Color primaryVeryLight = Color(0xFFBBDEFB); // Very light blue for backgrounds, chips

  // ---- Accent Blue ----
  /// Used for floating action buttons, secondary highlights
  static const Color accent = Color(0xFF2196F3);
  static const Color accentLight = Color(0xFF64B5F6);

  // ---- White / Background ----
  /// Main scaffold background, card surfaces
  static const Color white = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF5F5F5); // Slight gray-white for depth
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFAFAFA);        // Elevated surfaces

  // ---- Green Shades (Success / Positive) ----
  /// Success messages, confirmed transactions, active status
  static const Color success = Color(0xFF4CAF50);        // Standard green
  static const Color successLight = Color(0xFFC8E6C9);   // Light green backgrounds
  static const Color successDark = Color(0xFF388E3C);    // Darker green for text

  // ---- Red Shades (Error / Negative) ----
  /// Error messages, failed transactions, delete actions
  static const Color error = Color(0xFFF44336);          // Standard red
  static const Color errorLight = Color(0xFFFFCDD2);     // Light red backgrounds
  static const Color errorDark = Color(0xFFD32F2F);      // Darker red for text

  // ---- Warning (Optional but useful) ----
  /// Warnings, pending states
  static const Color warning = Color(0xFFFFA726);        // Orange
  static const Color warningLight = Color(0xFFFFE0B2);

  // ---- Text Colors ----
  /// Hierarchy of text colors from most prominent to subtle
  static const Color textPrimary = Color(0xFF212121);    // Headings, important text
  static const Color textSecondary = Color(0xFF757575);  // Subheadings, captions
  static const Color textHint = Color(0xFFBDBDBD);       // Placeholders, disabled text
  static const Color textOnPrimary = Color(0xFFFFFFFF);  // Text on primary-colored backgrounds

  // ---- Divider & Border ----
  /// Subtle separators and outlines
  static const Color divider = Color(0xFFE0E0E0);
  static const Color border = Color(0xFFBDBDBD);

  // ---- Disabled State ----
  /// Disabled buttons, inactive elements
  static const Color disabled = Color(0xFF9E9E9E);
  static const Color disabledBackground = Color(0xFFEEEEEE);

  // ---- Overlay / Shadow ----
  /// Modal barriers, shadow hints
  static const Color overlay = Color(0x80000000);        // 50% black
  static const Color shadow = Color(0x1A000000);         // Subtle shadow
}