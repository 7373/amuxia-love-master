package net.jvsun.model;

import java.util.List;

public class WordsList {
	private List<Whisper> wordsList;

	public List<Whisper> getWordsList() {
		return wordsList;
	}

	public void setWordsList(List<Whisper> wordsList) {
		this.wordsList = wordsList;
	}

	public WordsList(List<Whisper> wordsList) {
		super();
		this.wordsList = wordsList;
	}

	public WordsList() {
		super();
		// TODO Auto-generated constructor stub
	}
}
