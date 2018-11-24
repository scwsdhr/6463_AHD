//#define __KEY_EXPANSION__   // only do key expansion
#define __RC5_GENERAL__

#include "RC5key.h"

int main() {
    char *key_in;
    unsigned char key[b];

    strcpy(key_in, "00000000000000000000000000000000");
    for (int i = 0; i < b; i++) sscanf(key_in + 2 * i, "%02x", &key[i]);

#ifdef __KEY_EXPANSION__
    RC5_SETUP(key);
#endif

#ifdef __RC5_GENERAL__
    char v1[8];
    char v2[8];
    WORD val1;
    WORD val2;

    strcpy(v1, "00000000");
    strcpy(v2, "00000000");
    val1 = (int)strtol(v1, NULL, 16);
    val2 = (int)strtol(v2, NULL, 16);

    RC5(key, val1, val2);
#endif

    return 0;
}
