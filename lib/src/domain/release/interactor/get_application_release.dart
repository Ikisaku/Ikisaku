sealed class GetApplicationReleaseResult {}

class NewUpdateResult extends GetApplicationReleaseResult {
  final ApplicationRelease release;

  NewUpdateResult(this.release);
}

class NoUpdateResult extends GetApplicationReleaseResult {}

class ApplicationRelease {
  final String version;
  final String info;
  final String releaseLink;
  final String downloadLink;

  ApplicationRelease({
    required this.version,
    required this.info,
    required this.releaseLink,
    required this.downloadLink,
  });
}
