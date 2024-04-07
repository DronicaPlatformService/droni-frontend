/// Provides various sorting functions for comparing objects based on different field types.
///
/// This library includes typedefs and functions for sorting objects alphabetically,
/// numerically, and by specific field types such as strings, dates, integers, doubles, and booleans.
///
/// Usage:
///   - `Sort`: A typedef for a function that compares two dynamic objects and returns an integer.
///   - `SortF`: A typedef for a function that takes a string field name and returns a `Sort` function.
///   - `alphabetic`: A `SortF` function for alphabetical sorting based on a string field.
///   - `number`: A `SortF` function for numerical sorting based on a string field.
///   - `byStringField`: A function that returns a comparison function for sorting objects by a string field.
///   - `byDateField`: A function that returns a comparison function for sorting objects by a DateTime field.
///   - `byDateFieldWithDiffTypes`: A function that returns a comparison function for sorting objects of different types by a DateTime field.
///   - `byIntField`: A function that returns a comparison function for sorting objects by an integer field.
///   - `byDoubleField`: A function that returns a comparison function for sorting objects by a double field.
///   - `byBoolField`: A function that returns a comparison function for sorting objects by a boolean field.
library;

typedef Sort = int Function(dynamic a, dynamic b);
typedef SortF = Sort Function(String sortField);

// Alphabetical sorting function based on a string field
SortF alphabetic = (String sortField) => (a, b) {
      return a[sortField].toLowerCase().compareTo(b[sortField].toLowerCase());
    };

// Numerical sorting function based on a string field
SortF number = (String sortField) => (dynamic a, dynamic b) {
      return a[sortField].compareTo(b[sortField]);
    };

// Returns a comparison function for sorting objects by a string field
int Function(T, T) byStringField<T>(String Function(T func) fieldProvider) =>
    (T a, T b) {
      final fieldA = fieldProvider(a);
      final fieldB = fieldProvider(b);

      return fieldB.toLowerCase().compareTo(fieldA.toLowerCase());
    };

// Returns a comparison function for sorting objects by a DateTime field
int Function(T, T) byDateField<T>(DateTime Function(T func) fieldProvider,
        {bool reverse = false}) =>
    (T a, T b) {
      final fieldA = fieldProvider(a);
      final fieldB = fieldProvider(b);

      return reverse ? fieldA.compareTo(fieldB) : fieldB.compareTo(fieldA);
    };

// Returns a comparison function for sorting objects of different types by a DateTime field
int Function(A, B) byDateFieldWithDiffTypes<A, B>(
  DateTime Function(A func) fieldAProvider,
  DateTime Function(B func) fieldBProvider, {
  bool reverse = false,
}) =>
    (A a, B b) {
      final fieldA = fieldAProvider(a);
      final fieldB = fieldBProvider(b);
      return reverse ? fieldA.compareTo(fieldB) : fieldB.compareTo(fieldA);
    };

// Returns a comparison function for sorting objects by an integer field
int Function(T, T) byIntField<T>(int Function(T func) fieldProvider,
        {bool reverse = false}) =>
    (T a, T b) {
      final fieldA = fieldProvider(a);
      final fieldB = fieldProvider(b);
      return reverse ? fieldA.compareTo(fieldB) : fieldB.compareTo(fieldA);
    };

// Returns a comparison function for sorting objects by a double field
int Function(T, T) byDoubleField<T>(double Function(T func) fieldProvider,
        {bool reverse = false}) =>
    (T a, T b) {
      final fieldA = fieldProvider(a);
      final fieldB = fieldProvider(b);
      return reverse ? fieldA.compareTo(fieldB) : fieldB.compareTo(fieldA);
    };

// Returns a comparison function for sorting objects by a boolean field
int Function(T, T) byBoolField<T>(bool Function(T func) fieldProvider,
        {bool reverse = false}) =>
    (T a, T b) {
      final fieldA = fieldProvider(a);
      final fieldB = fieldProvider(b);
      return fieldA == fieldB
          ? 0
          : !reverse && fieldA != fieldB
              ? 1
              : -1;
    };
