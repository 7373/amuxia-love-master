package net.jvsun.tools;

import java.util.regex.Pattern;

/**
 *数据校检类
 */
public class DataValidator {

    public static boolean isNullOrEmpty(String input) {
	return "".equals(input) || input == null;
    }

    public static boolean regexMatch(String input, String pattern) {
	if (isNullOrEmpty(input)) {
	    return false;
	}
	return Pattern.compile(pattern).matcher(input).matches();
    }

}
