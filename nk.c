/**********************************************************************
 *
 * NK-landscape problem generator
 *
 * Synopsis:  The only two routines the user of this package needs
 *            to know about are the following:
 *
 *            void initModel(int n, int k, int preload);
 *            double evalString(int *string);
 *    
 *            The initModel routine initializes the NK-landscape
 *            model.  This implementation is limited to NK landscapes
 *            of n=32 and k=31 or smaller.  If the preload option in
 *            initModel is true, the entire landscape will be
 *            constructed during the initialization phase.  A preload
 *            option of false will cause the landscape to be
 *            constructed on the fly.  Constructing the landscape on
 *            the fly is necessary for large values of n and k due to
 *            the memory required to store the entire landscape.  
 *
 *            The evalString routine evaluates the fitness of a binary
 *            string chromosome of length 32 or smaller.  A value
 *            between 0 and 1 will be returned.
 *
 * Author: Mitchell A. Potter
 *
 **********************************************************************/

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define MAX_N 50
#define MAX_K 15
#define HASH_VAL_BITS 16
#define HASHSIZE 10000
#define NOHASH -1
#define MAX_RUNS 50

typedef struct hashEntry{
  unsigned long key;
  unsigned short val;
  struct hashEntry *next;
} HashEntry;

typedef HashEntry *HashTable[HASHSIZE];

static HashTable *nkModel[MAX_RUNS][MAX_N];
static int nk_n;
static int nk_k;


/* Return random number between 0 and pow(2, k) - 1 */

long nkRand(int k)
{
  return (long) (rand() / (pow(2, 15 - k)));
}


/* Return value hashed to key or NOHASH if key has not been hashed. */

int getHash(unsigned long key, HashTable hashTable)
{
  
  HashEntry *hashEntry;

  hashEntry = hashTable[key % HASHSIZE];
  while (hashEntry && hashEntry->key != key)
    hashEntry = hashEntry->next;
  if (hashEntry)
    return hashEntry->val;
  else 
    return NOHASH;
}


/* Put new value in hash table. */

void putHash(int val, unsigned long key, HashTable hashTable)
{
  HashEntry *newEntry;

  if (key < 0 || key >= pow(2, nk_k + 1)) {
    fprintf(stderr, "Hash key is out of range %lu [max: %lu] - k = %i\n", key, (unsigned long)pow(2, nk_k+1), nk_k);
	char a = getchar();
    exit(1);
  }
  if (newEntry = (HashEntry *) malloc(sizeof(HashEntry))) {
    newEntry->key = key;
    newEntry->val = val;
    newEntry->next = hashTable[key % HASHSIZE];
    hashTable[key % HASHSIZE] = newEntry;
  }
  else {
    fprintf(stderr, "Unable to malloc space for new hash entry\n");
    exit(1);
  }
}


/* Evaluate the fitness of the pattern associated with locus n */

double evalLocus(int *pattern, int run, int locus)
{
  unsigned long key = 0;
  int val;
  for(int i = nk_k; i--;)
  	key = 2*key + (unsigned long)pattern[i];
//  key = strtol(pattern, (char **) NULL, 2);
  if ((val = getHash(key, *nkModel[run][locus])) == NOHASH)
    putHash(val = nkRand(HASH_VAL_BITS), key, *nkModel[run][locus]);  
  return val / pow(2, HASH_VAL_BITS);
}


/* Evaluate the fitness of an entire string (point on an NK-landscape) */

double evalString(int *string, int run)
{
  int pattern[MAX_N + 1];
  int i, j;
  int offset = nk_n - (nk_k / 2);
  double sum = 0.0;

  pattern[nk_k + 1] = '\0';
  for (i = 0; i < nk_n; i++) {
    for (j = 0; j <= nk_k; j++) 
      pattern[j] = string[(i + j + offset) % nk_n];
	sum += evalLocus(pattern, run, i);
  }
  return sum / nk_n;
}


/* Initialize the NK-landscape model */

void *initModel(int nSize, int kSize, int preload)
{
  int i;
  unsigned long j;
  int k;

  nk_n = nSize;
  nk_k = kSize;


  
  if (nk_n <= 0 || nk_n > MAX_N) {
    fprintf(stderr, "N is out of range\n");
    exit(1);
  }
  if (nk_k < 0 || nk_k >= nk_n) {
    fprintf(stderr, "K is out of range\n");
    exit(1);
  }
  /* alloc and init N empty hash tables */
  
  for(k = 0; k < MAX_RUNS; k++) 
  for (i = 0; i < nk_n; i++) { 
    nkModel[k][i] = (HashTable *) malloc(sizeof(HashTable));
    for (j = 0; j < HASHSIZE; j++)
      (*nkModel[k][i])[j] = NULL;
  }

  if (preload) { /* store value in table for all possible patterns */
  for(k = 0; k < MAX_RUNS; k++)
    for (i = 0; i < nk_n; i++)
      for (j = 0; j < pow(2, nk_k + 1); j++)
	putHash(nkRand(HASH_VAL_BITS), j, *nkModel[k][i]);
  }
}
