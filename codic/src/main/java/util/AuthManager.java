package util;

import java.util.Calendar;

public class AuthManager {
	
	Calendar calendar = Calendar.getInstance();
	
	public String getCurrentTime() {
		
		return String currentday = calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH);		
	}
	int currentTime = Integer.parseInt(calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE))+""+calendar.get(Calendar.SECOND));
	int hour = calendar.get(Calendar.HOUR_OF_DAY);
	int minute = calendar.get(Calendar.MINUTE);
	int second = calendar.get(Calendar.SECOND);
}
