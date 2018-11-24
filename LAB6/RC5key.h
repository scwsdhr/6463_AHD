#ifndef __RC5_GENERAL__
#define __RC5_GENERAL__
#endif

#ifndef __RC5KEY_H__
#define __RC5KEY_H__
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

typedef unsigned int WORD;  // Should be 32-bit = 4 bytes
#define w 32                // word size in bits
#define r 12                // number of rounds
#define b 16                // number of bytes in key
#define c 4                 // number  words in key = ceil(8*b/w)
#define t 26                // size of table S = 2*(r+1) words

/* Rotation operators. x must be unsigned, to get logical right shift*/
#define ROTL(x, y) (((x) << (y & (w - 1))) | ((x) >> (w - (y & (w - 1)))))
#define ROTR(x, y) (((x) >> (y & (w - 1))) | ((x) << (w - (y & (w - 1)))))

// Prototype of top level function for C-systhesis
#ifdef __KEY_EXPANSION__
void RC5_SETUP(unsigned char K[b]);
#endif
#ifdef __RC5_GENERAL__
void RC5(unsigned char key[b], WORD val1, WORD val2);
#endif

#endif  // __RC5KEY_H__ not defined