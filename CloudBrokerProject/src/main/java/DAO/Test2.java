package DAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import M�tier.BabelNetConnection;
import M�tier.Similarity;
import M�tier.TextRank;
import M�tier.Tokenization;
import M�tier.WordNetConnection;
import edu.smu.tspell.wordnet.NounSynset;
import edu.smu.tspell.wordnet.Synset;
import edu.smu.tspell.wordnet.SynsetType;
import edu.smu.tspell.wordnet.WordNetDatabase;

public class Test2 {

	public static void main(String[] args) {
		//String Description="Managing tax accounting";
		//String Description="Marketing by email";
		//String Description="Marketing mobile";
		//String Description="Human_Ressource_management";
		String Description="Delpoyer applications";
		ArrayList<String> keywords = new ArrayList<String>();
		HashMap<String,ArrayList<String>> sysnsetTerm = new HashMap<String,ArrayList<String>>();
		

		try {
			/*** Text Rank ***/
			keywords=TextRank.sentenceDetect(Description);
			System.out.println(keywords);
		
			/*** Search for Simple or complex phrases ***/
			for (int i = 0; i < keywords.size(); i++) {
				
					/** Get Synsets Using BabelNet***/
				// ArrayList<String>synonyms =BabelNetConnection.SynonymsFF(keywords.get(i));
				ArrayList<String> synonyms = WordNetConnection.Synonyms(keywords.get(i));
	             sysnsetTerm.put(keywords.get(i), synonyms) ;     
			}
	        	
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(sysnsetTerm);
		
		
		
		
		
	}

}
