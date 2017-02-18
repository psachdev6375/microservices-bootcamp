/*
 * @author psachdev
 */
package com.puneet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Build a sentence by assembling randomly generated subjects, verbs, 
 * articles, adjectives, and nouns.  The individual parts of speech will 
 * be obtained by calling the various DAOs.
 */
@Service
public class SentenceServiceImpl implements SentenceService {

	/** The word service. */
	@Autowired WordService wordService;
	

	/**
	 * Assemble a sentence by gathering random words of each part of speech:.
	 *
	 * @return the string
	 */
	public String buildSentence() {
		String sentence = "There was a problem assembling the sentence!";
			sentence = 
				wordService.getSubject().getString() + " "
				+ wordService.getVerb().getString() + " "
				+ wordService.getArticle().getString() + " "
				+ wordService.getAdjective().getString() + " "
				+ wordService.getNoun().getString() + " "
			;
		return sentence;
	}	
}
