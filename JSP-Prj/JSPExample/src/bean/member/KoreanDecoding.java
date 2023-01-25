package bean.member;

public class KoreanDecoding {
	public static String decoding(String str) throws Exception {
		if (str==null) {
			return null;
		} else {
			String inputString = str.trim();
			String decodingString = null;
			
			decodingString = new String(inputString.getBytes("8859_1"), "utf-8");
			return decodingString;
		}
	}
}
