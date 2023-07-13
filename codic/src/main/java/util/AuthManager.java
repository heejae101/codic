package util;

import java.util.Calendar;

public class AuthManager {
	
	private int verificationDuration = 3;
	private Calendar calendar = Calendar.getInstance();
	
	// format 2023-07-11/10:06:32
	public String getCurrentTime() {
		return calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH)
		+"/"+calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE))+""+calendar.get(Calendar.SECOND);		
	}
	
	public String getVerificationDuration() {
		return calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH)
		+"/"+calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE)+verificationDuration)+""+calendar.get(Calendar.SECOND);	
	}
}
