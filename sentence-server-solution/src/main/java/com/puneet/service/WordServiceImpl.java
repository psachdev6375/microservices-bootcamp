/*
 * @author psachdev
 */
package com.puneet.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.puneet.dao.AdjectiveClient;
import com.puneet.dao.ArticleClient;
import com.puneet.dao.NounClient;
import com.puneet.dao.SubjectClient;
import com.puneet.dao.VerbClient;
import com.puneet.domain.Word;

/**
 * The Class WordServiceImpl.
 */
@Service
public class WordServiceImpl implements WordService {

	/** The verb client. */
	@Autowired VerbClient verbClient;
	
	/** The subject client. */
	@Autowired SubjectClient subjectClient;
	
	/** The article client. */
	@Autowired ArticleClient articleClient;
	
	/** The adjective client. */
	@Autowired AdjectiveClient adjectiveClient;
	
	/** The noun client. */
	@Autowired NounClient nounClient;
	
	
	/* (non-Javadoc)
	 * @see com.puneet.service.WordService#getSubject()
	 */
	@Override
	@HystrixCommand(fallbackMethod="getFallbackSubject")
	public Word getSubject() {
		return subjectClient.getWord();
	}
	
	/* (non-Javadoc)
	 * @see com.puneet.service.WordService#getVerb()
	 */
	@Override
	public Word getVerb() {
		return verbClient.getWord();
	}
	
	/* (non-Javadoc)
	 * @see com.puneet.service.WordService#getArticle()
	 */
	@Override
	public Word getArticle() {
		return articleClient.getWord();
	}
	
	/* (non-Javadoc)
	 * @see com.puneet.service.WordService#getAdjective()
	 */
	@Override
	@HystrixCommand(fallbackMethod="getFallbackAdjective")
	public Word getAdjective() {
		return adjectiveClient.getWord();
	}
	
	/* (non-Javadoc)
	 * @see com.puneet.service.WordService#getNoun()
	 */
	@Override
	@HystrixCommand(fallbackMethod="getFallbackNoun")
	public Word getNoun() {
		return nounClient.getWord();
	}	

	/**
	 * Gets the fallback subject.
	 *
	 * @return the fallback subject
	 */
	public Word getFallbackSubject() {
		return new Word("Someone");
	}
	
	/**
	 * Gets the fallback adjective.
	 *
	 * @return the fallback adjective
	 */
	public Word getFallbackAdjective() {
		return new Word("");
	}
	
	/**
	 * Gets the fallback noun.
	 *
	 * @return the fallback noun
	 */
	public Word getFallbackNoun() {
		return new Word("something");
	}

}
