import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

/// A segment data for the donut chart
class ChartSegment {
  const ChartSegment({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final double value;
  final Color color;
}

/// A custom donut chart with labels on each segment
class SubjectDonutChart extends StatelessWidget {
  const SubjectDonutChart({
    required this.segments,
    super.key,
    this.size = 220,
    this.strokeWidth = 28,
  });

  final List<ChartSegment> segments;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.h, // Adjusted to just the chart height
      width: double.infinity,
      child: Center(
        child: SizedBox(
          width: size.w,
          height: size.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(size.w, size.h),
                painter: _DonutChartPainter(
                  segments: segments,
                  strokeWidth: strokeWidth.w,
                ),
              ),
              // Legend in the center
              SizedBox(
                width:
                    size.w - 2 * strokeWidth.w - 20.w, // Ensure it fits inside
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: segments.map((segment) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: _LegendItem(
                        color: segment.color,
                        label: segment.label,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        8.horizontalSpace,
        Flexible(
          child: Text(
            label,
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.color0F172A,
              fontSize: 10.sp, // Reduced font size to fit
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _DonutChartPainter extends CustomPainter {
  _DonutChartPainter({required this.segments, required this.strokeWidth});

  final List<ChartSegment> segments;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final outerRadius = size.width / 2;
    final innerRadius = outerRadius - strokeWidth;

    // Label radius for percentage text
    final labelRadius = outerRadius - strokeWidth / 2;

    // Calculate total value
    final total = segments.fold<double>(0, (sum, s) => sum + s.value);

    // Gap between segments in radians (adjustable)
    const double gapSizeRadians = 0.03;

    // Draw segments
    double startAngle = -math.pi / 2; // Start from top

    for (final segment in segments) {
      final sweepAngle = (segment.value / total) * 2 * math.pi;

      // Calculate effective sweep angle accounting for gap
      final performDraw = sweepAngle > gapSizeRadians;
      // We subtract the gap from the sweep to create space
      // And we offset the start by gap/2 to center the segment in its slot
      final effectiveSweep = performDraw
          ? sweepAngle - gapSizeRadians
          : sweepAngle;
      final drawStartAngle = startAngle + (gapSizeRadians / 2);
      final drawEndAngle = drawStartAngle + effectiveSweep;

      if (performDraw) {
        // Draw rounded segment using Path
        final path = _getRoundedSegmentPath(
          center: center,
          innerRadius: innerRadius,
          outerRadius: outerRadius,
          startAngle: drawStartAngle,
          endAngle: drawEndAngle,
          cornerRadius: 4.r,
        );

        final paint = Paint()
          ..color = segment.color
          ..style = PaintingStyle.fill;

        canvas.drawPath(path, paint);

        // Draw percentage label
        _drawLabel(
          canvas,
          center,
          labelRadius,
          startAngle, // Use original start for label centering logic
          sweepAngle, // Use original sweep
          segment.value,
          total,
        );
      }

      startAngle += sweepAngle;
    }
  }

  Path _getRoundedSegmentPath({
    required Offset center,
    required double innerRadius,
    required double outerRadius,
    required double startAngle,
    required double endAngle,
    required double cornerRadius,
  }) {
    final path = Path();

    // Calculate angles consumed by the corner radius
    final double alphaInner = cornerRadius / innerRadius;
    final double alphaOuter = cornerRadius / outerRadius;

    // Check if segment is large enough to support corners, otherwise just draw small shape
    // Simple clamp to avoid crossing angles
    final double sweep = endAngle - startAngle;
    final double safeAlphaInner = math.min(alphaInner, sweep / 2);
    final double safeAlphaOuter = math.min(alphaOuter, sweep / 2);

    // 1. Start point: Inner Start Corner, on the Start Radial Line
    final lineStartInner = _polar(
      innerRadius + cornerRadius,
      startAngle,
      center,
    );

    // 2. Inner Start Corner Target: Start of Inner Arc
    final innerArcStart = _polar(
      innerRadius,
      startAngle + safeAlphaInner,
      center,
    );

    // 3. Inner End Corner Start: End of Inner Arc
    // Note: Implicitly defined by arc end

    // 4. Inner End Corner Target: on the End Radial Line
    final lineEndInner = _polar(innerRadius + cornerRadius, endAngle, center);

    // 5. Outer End Corner Start: on the End Radial Line
    final lineEndOuter = _polar(outerRadius - cornerRadius, endAngle, center);

    // 6. Outer End Corner Target: Start of Outer Arc (traversing backwards)
    final outerArcStart = _polar(
      outerRadius,
      endAngle - safeAlphaOuter,
      center,
    );

    // 7. Outer Start Corner Start: End of Outer Arc
    // Note: Implicitly defined by arc end

    // 8. Outer Start Corner Target: on the Start Radial Line
    final lineStartOuter = _polar(
      outerRadius - cornerRadius,
      startAngle,
      center,
    );

    path
      ..moveTo(lineStartInner.dx, lineStartInner.dy)
      // Corner 1: Inner Start Line -> Inner Arc
      ..arcToPoint(
        innerArcStart,
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      // Arc 1: Inner Arc
      ..arcTo(
        Rect.fromCircle(center: center, radius: innerRadius),
        startAngle + safeAlphaInner,
        (endAngle - safeAlphaInner) - (startAngle + safeAlphaInner),
        false,
      )
      // Corner 2: Inner Arc -> End Line
      ..arcToPoint(
        lineEndInner,
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      // Line: End Line (Outward)
      ..lineTo(lineEndOuter.dx, lineEndOuter.dy)
      // Corner 3: End Line -> Outer Arc
      ..arcToPoint(
        outerArcStart,
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      // Arc 2: Outer Arc (CCW from End to Start)
      ..arcTo(
        Rect.fromCircle(center: center, radius: outerRadius),
        endAngle - safeAlphaOuter,
        (startAngle + safeAlphaOuter) - (endAngle - safeAlphaOuter),
        false,
      )
      // Corner 4: Outer Arc -> Start Line
      ..arcToPoint(
        lineStartOuter,
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      // Line: Start Line (Inward)
      ..lineTo(lineStartInner.dx, lineStartInner.dy)
      ..close();

    return path;
  }

  Offset _polar(double r, double theta, Offset c) {
    return Offset(c.dx + r * math.cos(theta), c.dy + r * math.sin(theta));
  }

  void _drawLabel(
    Canvas canvas,
    Offset center,
    double radius,
    double startAngle,
    double sweepAngle,
    double value,
    double total,
  ) {
    // Calculate label position (middle of arc)
    final middleAngle = startAngle + sweepAngle / 2;
    final dx = center.dx + radius * math.cos(middleAngle);
    final dy = center.dy + radius * math.sin(middleAngle);

    final percentage = ((value / total) * 100).toInt();

    const textColor = Color(0xFF0F172A);

    final textPainter = TextPainter(
      text: TextSpan(
        text: '$percentage%',
        style: TextStyle(
          color: textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    canvas
      ..save()
      ..translate(dx, dy);

    double rotationAngle = middleAngle + math.pi / 2;

    if (math.sin(middleAngle) > 0) {
      rotationAngle += math.pi;
    }

    canvas.rotate(rotationAngle);

    textPainter.paint(
      canvas,
      Offset(-textPainter.width / 2, -textPainter.height / 2),
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
