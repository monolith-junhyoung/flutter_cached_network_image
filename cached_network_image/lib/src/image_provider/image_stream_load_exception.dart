/// a type of exception that will be thrown while loading an image from MultiImageStreamCompleter
/// purpose of this is to detect the type of exception from outside of this class. ex) FlutterError.onError
class ImageStreamLoadException implements Exception {
  /// cause of this exception
  final Object exception;

  /// Web url of the image to load
  final String? url;

  /// Wrap a exception
  const ImageStreamLoadException({required this.exception, this.url,});

  ImageStreamLoadException copyWith({
    String? url,
    Object? exception,
  }) {
    return ImageStreamLoadException(
      url: url ?? this.url,
      exception: exception ?? this.exception,
    );
  }

  @override
  String toString() {
    return 'ImageStreamLoadException> url: ${url ?? ''}, exception: ${exception.toString()}';
  }
}
