enum MonthType {
  JANUARY(1, 'January', 31),
  FEBRUARY(2, 'February', 28), // or 29
  MARCH(3, 'March', 31),
  APRIL(4, 'April', 30),
  MAY(5, 'May', 31),
  JUNE(6, 'June', 30),
  JULY(7, 'July', 31),
  AUGUST(8, 'August', 31),
  SEPTEMBER(9, 'September', 30),
  OCTOBER(10, 'October', 31),
  NOVEMBER(11, 'November', 30),
  DECEMBER(12, 'December', 31);

  const MonthType(this.code, this.displayName, this.defaultDays);

  final int code;
  final String displayName;
  final int defaultDays;

  static bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  static int getDays(DateTime dateTime) {
    final type = MonthType.getByCode(dateTime.month);

    if (type == MonthType.FEBRUARY && MonthType.isLeapYear(dateTime.year)) {
      return 29;
    }

    return type.defaultDays;
  }

  factory MonthType.getByCode(int code) {
    return MonthType.values.firstWhere((value) => value.code == code, orElse: () => MonthType.JANUARY);
  }
}
