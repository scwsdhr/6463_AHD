#include "RC5key.h"

WORD S[t];                            // expanded key table
WORD P = 0xb7e15163, Q = 0x9e3779b9;  // magic constants

// 2 WORD input pt/output ct
void RC5_ENCRYPT(WORD *pt, WORD *ct) {
    WORD i, A = pt[0] + S[0], B = pt[1] + S[1];
    for (i = 1; i <= r; i++) {
        A = ROTL(A ^ B, B) + S[2 * i];
        B = ROTL(B ^ A, A) + S[2 * i + 1];
    }
    ct[0] = A;
    ct[1] = B;
}

// 2 WORD input ct/output pt
void RC5_DECRYPT(WORD *ct, WORD *pt) {
    WORD i, B = ct[1], A = ct[0];
    for (i = r; i > 0; i--) {
        B = ROTR(B - S[2 * i + 1], A) ^ A;
        A = ROTR(A - S[2 * i], B) ^ B;
    }
    pt[1] = B - S[1];
    pt[0] = A - S[0];
}

// secret input key K[0...b-1]
void RC5_SETUP(unsigned char K[b]) {
    WORD i, j, k, u = w / 8, A, B, L[c];
    // Initialize L, then S, then mix key into S
    for (i = b - 1, L[c - 1] = 0; i != -1; i--)
        L[i / u] = (L[i / u] << 8) + K[i];
    for (S[0] = P, i = 1; i < t; i++) S[i] = S[i - 1] + Q;
    for (A = B = i = j = k = 0; k < 3 * t;
         k++, i = (i + 1) % t, j = (j + 1) % c) {
        A = S[i] = ROTL(S[i] + (A + B), 3);
        B = L[j] = ROTL(L[j] + (A + B), (A + B));
    }
#ifdef __KEY_EXPANSION__
    // print input key
    printf("key = ");
    for (i = 0; i < b; i++) printf("%.2X ", K[i]);
    printf("\n");
    // print expanded key table
    for (i = 0; i < t; i++) printf("Round Key [%d] = %d\n", i, S[i]);
#endif
}

void RC5(unsigned char key[b], WORD val1, WORD val2) {
    WORD i, pt1[2], pt2[2], ct[2] = {0, 0};
    time_t t0, t1;

    if (sizeof(WORD) != 4)
        printf("RC5 error: WORD has %lld bytes.\n", sizeof(WORD));

    printf("RC5-32/12/16: \n");

    pt1[0] = val1;
    pt1[1] = val2;

    // Setup, encrypt, and decrypt
    RC5_SETUP(key);
    RC5_ENCRYPT(pt1, ct);
    RC5_DECRYPT(ct, pt2);

    // Print out results, checking for decryption failure
    printf("key = ");
    for (i = 0; i < b; i++) printf("%.2X ", key[i]);
    printf("\nplaintext %.8X %.8X  --->  ciphertext %.8X %.8X    \n", pt1[0],
           pt1[1], ct[0], ct[1]);

    // Check decryption result against input
    if (pt1[0] != pt2[0] || pt1[1] != pt2[1]) printf("Decryption Error!");
}
