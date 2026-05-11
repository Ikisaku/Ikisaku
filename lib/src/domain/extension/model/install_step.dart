enum InstallStep {
  idle,
  pending,
  downloading,
  installing,
  installed,
  error;

  bool isCompleted() {
    return this == InstallStep.idle ||
        this == InstallStep.installed ||
        this == InstallStep.error;
  }
}
