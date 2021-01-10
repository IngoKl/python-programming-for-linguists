# Data

## wikipedia

These are modified/cleaned excerpts from Wikipedia (English) with each paragraph on one line.

* python.txt - excerpt from https://en.wikipedia.org/wiki/Python_(programming_language)
* cologne.txt - excerpt from https://en.wikipedia.org/wiki/Cologne
* linguistics.txt - excerpt from https://en.wikipedia.org/wiki/Linguistics

Wikipedia texts are available under the [Creative Commons Attribution-ShareAlike License](https://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License).

## tokenize

This folder contains two files/texts that can be tokenized.

* simple.txt contains one sentence that can be easily tokenized using a whitespace tokenizer.
* challenge.txt contains two sentences that pose some challenges for a tokenizer.

## Downloadable Data

### Corpus of Contemporary American English (COCA)

The [COCA](https://www.english-corpora.org/coca/) is a large, genre-balanced corpus of American English. It is being compiled and developed by Mark Davies and available via [english-corpora.org](https://www.english-corpora.org/).

Using the script below, you can download the freely available linear text sampler of the COCA.

```bash
!git clone https://github.com/IngoKl/python-programming-for-linguists
!cd python-programming-for-linguists/2020/data && sh download_coca.sh
```

The data, as individual text files, then will be available in `data/corpora/coca`.

### HUM19UK Corpus

The [HUM19UK Corpus](https://www.linguisticsathuddersfield.com/hum19uk-corpus) is a corpus of 100 19th century British novels. It contains 100 complete novels written by 100 authors. It has been compiled by Fransina Stradling, Brian Walker, Dan McIntyre, Elliott Land, Hazel Price, and Michael Burke.

Using the script below, you can download the the corpus from [linguisticsathuddersfield.com/hum19uk-corpus](https://www.linguisticsathuddersfield.com/hum19uk-corpus).

```bash
!git clone https://github.com/IngoKl/python-programming-for-linguists
!cd python-programming-for-linguists/2020/data && sh download_hum19uk.sh
```

The data, as individual text files, then will be available in `data/corpora/hum19uk`.
