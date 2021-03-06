package demo0604.calendar;

/**
 * 日历类 调用静态方法display()显示月历/年历
 * 
 * @author Sun
 *
 */
public class Calendar {

	/**
	 * 是否是闰年
	 * 
	 * @param year
	 * @return
	 */
	public static boolean isLeapYear(int year) {
		return year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ? true : false;
	}

	/**
	 * 某年某月有多少天
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public static int daynum(int year, int month) {
		int dayNum = 0;
		boolean isLeapYear = isLeapYear(year);
		switch (month) {
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			dayNum = 31;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			dayNum = 30;
			break;
		case 2:
			if (isLeapYear) {
				dayNum = 29;
			} else {
				dayNum = 28;
			}
			break;
		default:
			break;
		}
		return dayNum;
	}

	/**
	 * 当前年有多少天
	 * 
	 * @param year
	 * @return
	 */
	public static int daynum(int year) {
		boolean isLeapYear = isLeapYear(year);
		int dayNum = isLeapYear ? 366 : 365;
		return dayNum;
	}

	/**
	 * 某年某月第一天距离基准日的天数
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public static int manyDaysToBase(int year, int month) {
		int days = 0;
		// 分两种情况，年份大于2000和年份小于2000
		if (year >= 2000) {
			for (int i = 2000; i < year; i++) {
				days += daynum(i);
			}
			for (int j = 1; j < month; j++) {
				days += daynum(year, j);
			}
		} else {
			for (int i = 1999; i > year; i--) {
				days += daynum(i);
			}
			for (int j = 12; j >= month; j--) {
				days += daynum(year, j);
			}
		}

		return days;
	}

	/**
	 * 某年某月某日距离基准日的天数
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public static int manyDaysToBase(int year, int month, int day) {
		int days = 0;
		days += manyDaysToBase(year, month);
		if (year >= 2000) {
			days += day - 1;
		} else {
			days += daynum(year, month) - day;
		}
		return days;
	}

	/**
	 * 本月第一天是周几
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public static int weekdayNo(int year, int month) {
		int no = 0;
		if (year >= 2000) {
			no = (manyDaysToBase(year, month) + 6) % 7;
		} else {
			no = (6 - manyDaysToBase(year, month)) % 7;
		}
		no = no != 0 ? no : 7;
		return no;
	}

	/**
	 * 测试方法 某一天是星期几
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public static int weekdayNo(int year, int month, int day) {
		int no = 0;
		if (year >= 2000) {
			no = (manyDaysToBase(year, month, day) + 6) % 7;
		} else {
			no = (6 - manyDaysToBase(year, month, day)) % 7;
		}
		no = no != 0 ? no : 7;
		return no;
	}

	/**
	 * 某日是当年第几天
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public static int dayNo(int year, int month, int day) {
		int dayNo = 0;
		for (int i = 1; i < month; i++) {
			dayNo += daynum(year, i);
		}
		dayNo += day;
		return dayNo;
	}

	/**
	 * 某日是当年第几天
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public static int dayNo(int year, int month) {
		return dayNo(year, month, 1);
	}

	/**
	 * 某日属于当年第几周
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public static int weekNo(int year, int month, int day) {
		int weekNo = (int) dayNo(year, month, day) + weekdayNo(year, 1) - 1;
		if (weekNo % 7 == 0) {
			weekNo = (int) weekNo / 7;
		} else {
			weekNo = (int) weekNo / 7 + 1;
		}
		return weekNo;
	}

	/**
	 * 某月第一天属于当年第几周
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public static int weekNo(int year, int month) {
		return weekNo(year, month, 1);
	}

	/**
	 * 输出月历
	 * 
	 * @param year
	 * @param month
	 */
	public static void display(int year, int month) {
		String str = "";
		int weekDay_1 = weekdayNo(year, month);
		int daysnum = daynum(year, month);
		int weekNo = weekNo(year, month);
		str += "\t\t----\t" + year + "年" + month + "月\t----\n";
		str += "一\t二\t三\t四\t五\t六\t日\t| 周\n";
		int count = 0;
		for (int i = 1; i < weekDay_1; i++) {
			str += "\t";
			count++;
		}
		for (int j = 1; j <= daysnum; j++) {
			str += j + "\t";
			count++;
			if (count == 7) {
				str += "| " + weekNo++ + "\n";
				count = 0;
			}
		}

		// 本月最后一周的周数的显示
		if (weekdayNo(year, month, daysnum) != 7) {
			for (int k = 0; k < 7 - weekdayNo(year, month, daysnum); k++) {
				str += "\t";
			}
			str += "| " + weekNo++ + "\n";
		}
		System.out.println(str);
	}

	/**
	 * 输出年历
	 * 
	 * @param year
	 */
	public static void display(int year) {
		for (int i = 1; i <= 12; i++) {
			display(year, i);
		}
	}

	public static void main(String[] args) {
		// System.out.println(daynum(2000));
		// System.out.println(daynum(2018));
		// System.out.println(daynum(2100));
		// System.out.println(daynum(2018, 1));
		// System.out.println(daynum(2018, 2));
		// System.out.println(daynum(2000, 2));
		// System.out.println(manyDaysToBase(2000, 2));
		// System.out.println(manyDaysToBase(2000, 3));
		// System.out.println(manyDaysToBase(1999, 12));
		display(2018);
	}
}
