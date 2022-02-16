package tmp;

import org.mindrot.jbcrypt.BCrypt;

public class Bcrypt {

	public static void main(String[] args) {
		String tmp = BCrypt.hashpw("1234",BCrypt.gensalt());
		System.out.println("PW: "+tmp);
		//첫번째tmp는 비번 두번째tmp는 암호화된 비번
		System.out.println("PWCH: "+BCrypt.checkpw("1234", tmp));
	}

}
