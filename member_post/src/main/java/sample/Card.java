package sample;

import java.util.Arrays;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Card {

	Kind kind;
	// 이넘에서 열거된 인덱스 값 반영 ex) CLOVER 0, HEART 1, DIAMOND 2, SPADE 3
	public static void main(String[] args) {
//		Card card = new Card(Kind.CLOVER); //  syso card :: Card(kind=CLOVER)
//		System.out.println(card.kind.ordinal());
//		System.out.println(Kind.DIAMOND.ordinal()); // 2
		Kind[] kinds = Kind.values();
		System.out.println(Arrays.toString(kinds));
		
		for(Kind k : kinds) {
			System.out.println(k.getValue());
			System.out.println(k.getName());
		}
//		System.out.println(Kind.CLOVER); // CLOVER
	}
}