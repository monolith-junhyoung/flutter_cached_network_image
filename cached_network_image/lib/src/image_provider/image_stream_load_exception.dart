/// a type of exception that will be thrown while loading an image from MultiImageStreamCompleter
/// purpose of this is to detect the type of exception from outside of this class. ex) FlutterError.onError
class ImageStreamLoadException implements Exception {
  /// cause of this exception
  final Object exception;

  /// Wrap a exception
  const ImageStreamLoadException(this.exception);

  @override
  String toString() {
    return 'ImageStreamLoadException> ${exception.toString()}';
  }
}