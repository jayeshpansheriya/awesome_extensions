/// Specialized extensions for nested map operations and type conversions
library;

/// Extensions for nested map operations using dot notation
extension NestedMapExtension on Map<String, dynamic> {
  /// Get nested value using dot notation (e.g., "user.profile.name")
  ///
  /// Example: map.getNested('user.profile.name') returns the value at that path
  dynamic getNested(String path) {
    final keys = path.split('.');
    dynamic current = this;

    for (final key in keys) {
      if (current is Map<String, dynamic> && current.containsKey(key)) {
        current = current[key];
      } else {
        return null;
      }
    }
    return current;
  }

  /// Get nested value with default using dot notation
  ///
  /// Example: map.getNestedOrDefault('user.profile.name', 'Unknown') returns 'Unknown' if path doesn't exist
  dynamic getNestedOrDefault(String path, dynamic defaultValue) {
    return getNested(path) ?? defaultValue;
  }

  /// Set nested value using dot notation
  ///
  /// Example: map.setNested('user.profile.name', 'John') creates nested structure if needed
  void setNested(String path, dynamic value) {
    final keys = path.split('.');
    dynamic current = this;

    for (int i = 0; i < keys.length - 1; i++) {
      final key = keys[i];
      if (current[key] is! Map<String, dynamic>) {
        current[key] = <String, dynamic>{};
      }
      current = current[key];
    }

    current[keys.last] = value;
  }

  /// Check if nested path exists
  ///
  /// Example: map.hasNestedPath('user.profile.name') returns true if path exists
  bool hasNestedPath(String path) {
    return getNested(path) != null;
  }

  /// Remove nested value using dot notation
  ///
  /// Example: map.removeNested('user.profile.name') removes the value at that path
  dynamic removeNested(String path) {
    final keys = path.split('.');
    dynamic current = this;

    for (int i = 0; i < keys.length - 1; i++) {
      final key = keys[i];
      if (current is Map<String, dynamic> && current.containsKey(key)) {
        current = current[key];
      } else {
        return null;
      }
    }

    if (current is Map<String, dynamic>) {
      return current.remove(keys.last);
    }
    return null;
  }

  /// Convert all string values to integers where possible
  ///
  /// Example: map.parseInts() converts "123" to 123, leaves "abc" as "abc"
  Map<String, dynamic> parseInts() {
    return map(
      (key, value) =>
          MapEntry(key, value is String ? int.tryParse(value) ?? value : value),
    );
  }

  /// Convert all string values to doubles where possible
  ///
  /// Example: map.parseDoubles() converts "123.45" to 123.45, leaves "abc" as "abc"
  Map<String, dynamic> parseDoubles() {
    return map(
      (key, value) => MapEntry(
        key,
        value is String ? double.tryParse(value) ?? value : value,
      ),
    );
  }

  /// Convert all string values to booleans where possible
  ///
  /// Example: map.parseBools() converts "true" to true, "1" to true, others to false
  Map<String, dynamic> parseBools() {
    return map(
      (key, value) => MapEntry(
        key,
        value is String
            ? (value.toLowerCase() == 'true' || value == '1')
            : value,
      ),
    );
  }

  /// Convert all string values to DateTime where possible
  ///
  /// Example: map.parseDateTimes() converts ISO date strings to DateTime objects
  Map<String, dynamic> parseDateTimes() {
    return map(
      (key, value) => MapEntry(
        key,
        value is String ? DateTime.tryParse(value) ?? value : value,
      ),
    );
  }

  /// Flatten nested map using dot notation
  ///
  /// Example: {'user': {'name': 'John', 'age': 30}} becomes {'user.name': 'John', 'user.age': 30}
  Map<String, dynamic> flatten() {
    final result = <String, dynamic>{};

    void flattenHelper(Map<String, dynamic> map, String prefix) {
      for (final entry in map.entries) {
        final newKey = prefix.isEmpty ? entry.key : '$prefix.${entry.key}';

        if (entry.value is Map<String, dynamic>) {
          flattenHelper(entry.value, newKey);
        } else {
          result[newKey] = entry.value;
        }
      }
    }

    flattenHelper(this, '');
    return result;
  }

  /// Unflatten map with dot notation keys
  ///
  /// Example: {'user.name': 'John', 'user.age': 30} becomes {'user': {'name': 'John', 'age': 30}}
  Map<String, dynamic> unflatten() {
    final result = <String, dynamic>{};

    for (final entry in entries) {
      final keys = entry.key.split('.');
      dynamic current = result;

      for (int i = 0; i < keys.length - 1; i++) {
        final key = keys[i];
        if (current[key] is! Map<String, dynamic>) {
          current[key] = <String, dynamic>{};
        }
        current = current[key];
      }

      current[keys.last] = entry.value;
    }

    return result;
  }

  /// Get all nested keys as dot notation paths
  ///
  /// Example: {'user': {'name': 'John', 'profile': {'age': 30}}} returns ['user.name', 'user.profile.age']
  List<String> getNestedPaths() {
    final paths = <String>[];

    void collectPaths(Map<String, dynamic> map, String prefix) {
      for (final entry in map.entries) {
        final newPath = prefix.isEmpty ? entry.key : '$prefix.${entry.key}';

        if (entry.value is Map<String, dynamic>) {
          collectPaths(entry.value, newPath);
        } else {
          paths.add(newPath);
        }
      }
    }

    collectPaths(this, '');
    return paths;
  }

  /// Pick only specified nested paths
  ///
  /// Example: map.pickNestedPaths(['user.name', 'user.profile.age']) returns map with only those paths
  Map<String, dynamic> pickNestedPaths(List<String> paths) {
    final result = <String, dynamic>{};

    for (final path in paths) {
      final value = getNested(path);
      if (value != null) {
        result.setNested(path, value);
      }
    }

    return result;
  }

  /// Omit specified nested paths
  ///
  /// Example: map.omitNestedPaths(['user.password', 'user.token']) returns map without those paths
  Map<String, dynamic> omitNestedPaths(List<String> paths) {
    final result = Map<String, dynamic>.from(this);

    for (final path in paths) {
      result.removeNested(path);
    }

    return result;
  }
}
