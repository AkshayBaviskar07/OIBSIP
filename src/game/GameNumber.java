package game;
import java.util.Random;

public class GameNumber {
	
	private int value;
	
	public GameNumber() {
		value= 0;
	}
	
	public GameNumber(int value){
		if(value < 0){
			this.value = 0;
		} else{
			this.value = value;
		}
	}
	
	public void setValue(int value){
		if(value < 0){
			this.value = 0;
		} else{
			this.value = value;
		}
	}
	
	public int getValue(){
		return value;
	}
	
	public void setRandom(int minimum, int maximum){
		Random random = new Random();
		this.value = random.nextInt(maximum - minimum) + minimum;
	}
	
	public void increment(){
		this.value++;
	}
}
