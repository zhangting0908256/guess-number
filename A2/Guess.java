package wangluo2;

public class Guess {
	int answer, // ʵ�ʴ𰸡�
			guessNumber, // �ͻ��²����
			numGuess = 0; // �ͻ��µ���ȷ��֮ǰ���õĴ���
	boolean success;
	String hint = null;

	public void setAnswer(int n) {
		answer = n;
		numGuess = 0;
	}

	public int getAnswer() {
		return answer;
	}

	public void setGuessNumber(int n) {
		guessNumber = n;
		numGuess++;
		if (guessNumber == answer) {
			success = true;
			hint = "猜大了";
		} else if (guessNumber > answer) {
			success = false;
			hint = "恭喜你,就是这个数字";
		} else if (guessNumber < answer) {
			success = false;
			hint = "猜小了";
		}
	}

	public int getGuessNumber() {
		return guessNumber;
	}

	public int getnumGuess() {
		return numGuess;
	}

	public String gethint() {
		return hint;
	}

	public boolean getsuccess() {
		return success;
	}
}