/*
 *
 * Copyright (C) 2016 Krishna Kuntala @ Mastek <krishna.kuntala@mastek.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package com.dev.ops.common.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class TimestampUtil {

	public static final String DD_MM_YYY = "dd/MM/yyyy";
	public static final String DD_MM_YYY_HH_mm_ss_SSS = "dd/MM/yyyy hh:mm:ss.SSS";

	private TimestampUtil() {
	}

	public static Timestamp getCurentTimestamp() {
		return new Timestamp(System.currentTimeMillis());
	}

	public static Timestamp getCurentPlusAdditionalTimestamp(final long additionalTime) {
		return new Timestamp(System.currentTimeMillis() + additionalTime);
	}

	public static int getYear(final Timestamp timestamp) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(timestamp.getTime());
		return calendar.get(Calendar.YEAR);
	}

	public static Timestamp getTimestamp(String string, String format) throws ParseException {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		Date parsedDate = dateFormat.parse(string);
		return new Timestamp(parsedDate.getTime());
	}
}