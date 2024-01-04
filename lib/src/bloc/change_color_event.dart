part of 'change_color_bloc.dart';

/// Renk olayları için soyut bir sınıfı temsil eder.
abstract class ColorEvent {}

/// Metni değiştirmek için bir olayı temsil eder.
class TextChangedEvent extends ColorEvent {
  final String text;

  /// Verilen [text] ile bir [TextChangedEvent] oluşturur.
  TextChangedEvent(this.text);
}
