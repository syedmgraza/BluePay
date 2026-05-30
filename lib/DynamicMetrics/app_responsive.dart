import 'package:flutter/material.dart';

// =============================================
// STATIC DIMENSION CONSTANTS
// Use these for consistent spacing, radius, icon sizes across the app
// No context needed — ideal for ThemeData, fixed styling
// =============================================
class AppDimens {
  AppDimens._(); // Private constructor to prevent instantiation

  // ---- Padding ----
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;

  // ---- Margin ----
  static const double marginXS = 4.0;
  static const double marginS = 8.0;
  static const double marginM = 16.0;
  static const double marginL = 24.0;
  static const double marginXL = 32.0;

  // ---- Border Radius ----
  static const double borderRadiusS = 8.0;
  static const double borderRadiusM = 12.0;
  static const double borderRadiusL = 16.0;
  static const double borderRadiusXL = 24.0;

  // ---- Icon Sizes ----
  static const double iconSizeS = 18.0;
  static const double iconSizeM = 24.0;
  static const double iconSizeL = 32.0;
  static const double iconSizeXL = 48.0;


}

// =============================================
// SCREEN BREAKPOINTS
// Used by AppResponsive methods to detect device type
// =============================================
class AppBreakpoints {
  AppBreakpoints._();

  /// Width >= 600dp → Tablet layout (side-by-side, two-pane)
  static const double tablet = 600.0;

  /// Width >= 900dp → Large tablet / small desktop
  static const double largeTablet = 900.0;

  /// Width >= 1200dp → Desktop layout
  static const double desktop = 1200.0;
}

// =============================================
// RESPONSIVE HELPER METHODS
// Requires BuildContext — use inside build() methods
// =============================================
class AppResponsive {
  AppResponsive._();

  // ---------- Device Type Checks ----------

  /// Returns true if screen width is less than 600dp (phone)
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < AppBreakpoints.tablet;
  }

  /// Returns true if screen width is between 600dp and 900dp
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= AppBreakpoints.tablet && width < AppBreakpoints.largeTablet;
  }

  /// Returns true if screen width is 900dp or above
  static bool isLargeTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= AppBreakpoints.largeTablet && width < AppBreakpoints.desktop;
  }

  /// Returns true if screen width is 1200dp or above
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppBreakpoints.desktop;
  }

  // ---------- Percentage-Based Scaling ----------

  /// Returns [percentage]% of screen width
  /// Example: scaledWidth(context, 50) → half screen width
  static double scaledWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

  /// Returns [percentage]% of screen height
  /// Example: scaledHeight(context, 30) → 30% of screen height
  static double scaledHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * (percentage / 100);
  }

  // ---------- Font Scaling ----------

  /// Scales a base font size proportionally to screen width
  /// Uses 375dp (iPhone 6/7/8 width) as baseline
  /// Example: responsiveFont(context, 16) → ~16 on phone, ~22 on tablet
  static double responsiveFont(BuildContext context, double baseSize) {
    final width = MediaQuery.of(context).size.width;
    const baselineWidth = 375.0;
    final scale = width / baselineWidth;
    // Clamp to prevent extreme sizes on very small or very large screens
    return (baseSize * scale).clamp(baseSize * 0.8, baseSize * 1.5);
  }





  // ---------- Orientation ----------

  /// Returns true if device is in portrait mode
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  /// Returns true if device is in landscape mode
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }
}

// =============================================
// EXTENSIONS ON BuildContext
// Cleaner syntax: context.screenWidth, context.isTablet, etc.
// No need to import AppResponsive class directly in UI
// =============================================
extension ContextExtensions on BuildContext {
  /// Shortcut: context.screenWidth
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Shortcut: context.screenHeight
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Shortcut: context.isMobile
  bool get isMobile => AppResponsive.isMobile(this);

  /// Shortcut: context.isTablet
  bool get isTablet => AppResponsive.isTablet(this);

  /// Shortcut: context.isLargeTablet
  bool get isLargeTablet => AppResponsive.isLargeTablet(this);

  /// Shortcut: context.isDesktop
  bool get isDesktop => AppResponsive.isDesktop(this);

  /// Shortcut: context.isPortrait
  bool get isPortrait => AppResponsive.isPortrait(this);

  /// Shortcut: context.isLandscape
  bool get isLandscape => AppResponsive.isLandscape(this);
}