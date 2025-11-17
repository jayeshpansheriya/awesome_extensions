/// Map extensions that provide additional utility methods without duplicating Flutter's built-in functionality.
library;

/// Core utility extensions for Map operations
extension MapExtension<K, V> on Map<K, V> {
  /// Get value with default if key doesn't exist
  ///
  /// Example: map.getOrDefault('name', 'Unknown') returns 'Unknown' if 'name' key doesn't exist
  V getOrDefault(K key, V defaultValue) => this[key] ?? defaultValue;

  /// Get value or compute default if key doesn't exist
  ///
  /// Example: map.getOrElse('count', () => expensiveComputation()) only calls expensiveComputation() if needed
  V getOrElse(K key, V Function() defaultValue) => this[key] ?? defaultValue();

  /// Get value or null if key doesn't exist (explicit version)
  ///
  /// Example: map.getOrNull('optional_key') returns null if key doesn't exist
  V? getOrNull(K key) => this[key];

  /// Convert map to query string (e.g., {name: "John", age: "30"} -> "name=John&age=30")
  ///
  /// Example: {'name': 'John', 'age': '30'}.toQueryString() returns "name=John&age=30"
  String toQueryString() {
    return entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key.toString())}=${Uri.encodeComponent(e.value.toString())}',
        )
        .join('&');
  }

  /// Convert map to JSON query string (without encoding keys)
  ///
  /// Example: {'name': 'John Doe'}.toJsonQueryString() returns "name=John%20Doe"
  String toJsonQueryString() {
    return entries
        .map(
          (e) =>
              '${e.key.toString()}=${Uri.encodeComponent(e.value.toString())}',
        )
        .join('&');
  }

  /// Filter map by keys that match predicate
  ///
  /// Example: map.filterKeys((key) => key.startsWith('user_')) returns only entries with keys starting with 'user_'
  Map<K, V> filterKeys(bool Function(K) predicate) =>
      Map.fromEntries(entries.where((e) => predicate(e.key)));

  /// Filter map by values that match predicate
  ///
  /// Example: map.filterValues((value) => value > 0) returns only entries with positive values
  Map<K, V> filterValues(bool Function(V) predicate) =>
      Map.fromEntries(entries.where((e) => predicate(e.value)));

  /// Filter map by both key and value predicate
  ///
  /// Example: map.filter((key, value) => key.length > 2 && value.isNotEmpty) returns entries matching both conditions
  Map<K, V> filter(bool Function(K, V) predicate) =>
      Map.fromEntries(entries.where((e) => predicate(e.key, e.value)));

  /// Keep only specified keys
  ///
  /// Example: map.only(['name', 'email']) returns map with only 'name' and 'email' keys
  Map<K, V> only(Iterable<K> keys) =>
      Map.fromEntries(entries.where((e) => keys.contains(e.key)));

  /// Remove specified keys
  ///
  /// Example: map.without(['password', 'token']) returns map without 'password' and 'token' keys
  Map<K, V> without(Iterable<K> keys) =>
      Map.fromEntries(entries.where((e) => !keys.contains(e.key)));

  /// Merge maps safely (doesn't modify original)
  ///
  /// Example: map1.merge(map2) returns new map with all entries from both maps
  Map<K, V> merge(Map<K, V> other) => {...this, ...other};

  /// Merge maps with custom conflict resolution
  ///
  /// Example: map1.mergeWith(map2, (oldValue, newValue) => oldValue + newValue) resolves conflicts by adding values
  Map<K, V> mergeWith(Map<K, V> other, V Function(V, V) resolveConflict) {
    final result = Map<K, V>.from(this);
    other.forEach((key, value) {
      if (result.containsKey(key)) {
        final V currentValue = result[key] as V;
        result[key] = resolveConflict(currentValue, value);
      } else {
        result[key] = value;
      }
    });
    return result;
  }

  /// Add all entries only if they don't exist
  ///
  /// Example: map.putAllIfAbsent(otherMap) only adds entries that don't already exist
  void putAllIfAbsent(Map<K, V> other) {
    other.forEach((key, value) {
      putIfAbsent(key, () => value);
    });
  }

  /// Check if map contains all specified keys
  ///
  /// Example: map.containsAllKeys(['name', 'email']) returns true if both keys exist
  bool containsAllKeys(Iterable<K> keys) =>
      keys.every((key) => containsKey(key));

  /// Check if map contains any of specified keys
  ///
  /// Example: map.containsAnyKey(['name', 'username']) returns true if at least one key exists
  bool containsAnyKey(Iterable<K> keys) => keys.any((key) => containsKey(key));

  /// Check if all values match predicate
  ///
  /// Example: map.allValues((value) => value > 0) returns true if all values are positive
  bool allValues(bool Function(V) predicate) => values.every(predicate);

  /// Check if any value matches predicate
  ///
  /// Example: map.anyValue((value) => value == null) returns true if any value is null
  bool anyValue(bool Function(V) predicate) => values.any(predicate);

  /// Get missing keys from a set of required keys
  ///
  /// Example: map.getMissingKeys(['name', 'email', 'age']) returns list of missing keys
  List<K> getMissingKeys(Iterable<K> requiredKeys) =>
      requiredKeys.where((key) => !containsKey(key)).toList();

  /// Apply multiple transformations in chain
  ///
  /// Example: map.apply([filter1, filter2]) applies both transformations in sequence
  Map<K, V> apply(List<Map<K, V> Function(Map<K, V>)> transformations) {
    return transformations.fold(this, (map, transform) => transform(map));
  }

  /// Tap into map for side effects (returns same map)
  ///
  /// Example: map.tap((m) => print('Map size: ${m.length}')) prints and returns the same map
  Map<K, V> tap(void Function(Map<K, V>) action) {
    action(this);
    return this;
  }

  /// Also tap for debugging (prints message and returns same map)
  ///
  /// Example: map.also((m) => 'Map has ${m.length} entries') prints message and returns the same map
  Map<K, V> also(void Function(Map<K, V>) action) {
    action(this);
    return this;
  }

  /// Convert to list of tuples
  ///
  /// Example: map.toTuples() returns [(key1, value1), (key2, value2), ...]
  List<(K, V)> toTuples() => entries.map((e) => (e.key, e.value)).toList();

  /// Swap keys and values (useful when values are unique)
  ///
  /// Example: {'a': 1, 'b': 2}.swap() returns {1: 'a', 2: 'b'}
  Map<V, K> swap() =>
      Map.fromEntries(entries.map((e) => MapEntry(e.value, e.key)));

  /// Get random entry
  ///
  /// Example: map.randomEntry returns a random MapEntry or null if map is empty
  MapEntry<K, V>? get randomEntry {
    if (isEmpty) return null;
    final randomIndex = DateTime.now().millisecond % length;
    return entries.elementAt(randomIndex);
  }

  /// Group entries by key transformer
  ///
  /// Example: map.groupBy((key) => key.length) groups entries by key length
  Map<T, List<MapEntry<K, V>>> groupBy<T>(T Function(K) keyTransformer) {
    final result = <T, List<MapEntry<K, V>>>{};
    for (final entry in entries) {
      final newKey = keyTransformer(entry.key);
      result.putIfAbsent(newKey, () => []).add(entry);
    }
    return result;
  }

  /// Group entries by value transformer
  ///
  /// Example: map.groupByValue((value) => value.runtimeType) groups entries by value type
  Map<T, List<MapEntry<K, V>>> groupByValue<T>(T Function(V) valueTransformer) {
    final result = <T, List<MapEntry<K, V>>>{};
    for (final entry in entries) {
      final newValue = valueTransformer(entry.value);
      result.putIfAbsent(newValue, () => []).add(entry);
    }
    return result;
  }
}
