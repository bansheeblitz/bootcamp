#include "words.h"

#define WORDLEN 100
#define CHUNK 10	/* how many elements to add to the array at a time */

int main() {
	int numWords = 0;	/* How many words have been stored in the array */
	int numElements = 0; /* How many elements are in the array */
	int foundPos;
	char thisWord[WORDLEN] = "";
	WordPtr words = NULL;
	while (getword(thisWord, WORDLEN) != EOF) {

		[write code here]

	}
	
	reportResults(words, numWords);
	return 0;
}

/* reportResults: Prints out a table of words found and number of occurrences */
void reportResults(WordPtr words, int numWords) {

		[write code here]
}


/* addWords: Uses malloc() to allocate a larger space and then
copies the existing data into it, zeros out the rest of the space,
and frees the old space.  Returns the new allocation */
WordPtr addWords(WordPtr words, int *numWords, int numToAdd) {

		[write code here]
}

/* storeWord: Adds a new word to the list.  Checks to see if there is room first, and 
if not, calls addWords to make room. Returns the words array, which may have been replaced
by a larger one in addWords. */
WordPtr storeWord(char *newWord, WordPtr words, int *numWords, int *numElements) {

		[write code here]
}

/* findWord: looks through the list for the given word.  Returns the position
of the word in the array, or -1 if not found. Uses strcmp(). */
int findWord(char *newWord, WordPtr words, int numWords) {

		[write code here]
}

/* strToLower: changes a string to lower case. */
void strToLower(char *string) {

		[write code here]
}