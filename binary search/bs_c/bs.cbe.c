/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)  
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#ifdef _MSC_VER
#define __MSALIGN__(X) __declspec(align(X))
#else
#define __MSALIGN__(X)
#endif



/* Global Declarations */

/* Types Declarations */
struct l_array_4_uint8_t;
struct l_array_10000_uint32_t;

/* Function definitions */
typedef uint32_t l_fptr_1(uint32_t, uint32_t*, uint32_t, uint32_t);

typedef uint32_t l_fptr_2(void);

typedef uint32_t l_fptr_3(uint8_t*, ...);


/* Types Definitions */
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_10000_uint32_t {
  uint32_t array[10000];
};

/* External Global Variable Declarations */

/* Function Declarations */
uint32_t search(uint32_t, uint32_t*, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
int main(void) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t printf(uint8_t*, ...);


/* Global Variable Definitions and Initialization */
static struct l_array_4_uint8_t _OC_str = { "%d\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_sdiv_u32(int32_t a, int32_t b) {
  uint32_t r = a / b;
  return r;
}


/* Function Bodies */

uint32_t search(uint32_t _1, uint32_t* _2, uint32_t _3, uint32_t _4) {
  uint32_t _5;    /* Address-exposed local */
  uint32_t _6;    /* Address-exposed local */
  uint32_t* _7;    /* Address-exposed local */
  uint32_t _8;    /* Address-exposed local */
  uint32_t _9;    /* Address-exposed local */
  uint32_t _10;    /* Address-exposed local */
  uint32_t _11;
  uint32_t _12;
  uint32_t _13;
  uint32_t _14;
  uint32_t _15;
  uint32_t _16;
  uint32_t _17;
  uint32_t _18;
  uint32_t* _19;
  uint32_t _20;
  uint32_t _21;
  uint32_t _22;
  uint32_t _23;
  uint32_t* _24;
  uint32_t _25;
  uint32_t _26;
  uint32_t _27;
  uint32_t _28;
  uint32_t* _29;
  uint32_t _30;
  uint32_t _31;
  uint32_t _32;
  uint32_t _33;
  uint32_t* _34;
  uint32_t _35;
  uint32_t _36;
  uint32_t _37;
  uint32_t _38;
  uint32_t* _39;
  uint32_t _40;
  uint32_t _41;
  uint32_t _42;
  uint32_t _43;

  _6 = _1;
  _7 = _2;
  _8 = _3;
  _9 = _4;
  _11 = _8;
  _12 = _9;
  _10 = (llvm_sdiv_u32((llvm_add_u32(_11, _12)), 2));
  _13 = _9;
  _14 = _8;
  if ((((((int32_t)_13) < ((int32_t)_14))&1))) {
    goto _44;
  } else {
    goto _45;
  }

_45:
  _15 = _8;
  if ((((((int32_t)_15) < ((int32_t)0u))&1))) {
    goto _44;
  } else {
    goto _46;
  }

_46:
  _16 = _9;
  if ((((((int32_t)_16) > ((int32_t)9999u))&1))) {
    goto _44;
  } else {
    goto _47;
  }

_44:
  _5 = -1;
  goto _48;

_47:
  _17 = _8;
  _18 = _9;
  if ((((_17 == _18)&1))) {
    goto _49;
  } else {
    goto _50;
  }

_49:
  _19 = _7;
  _20 = _10;
  _21 = *((&_19[((int64_t)(((int64_t)(int32_t)_20)))]));
  _22 = _6;
  if ((((_21 == _22)&1))) {
    goto _51;
  } else {
    goto _52;
  }

_51:
  _23 = _10;
  _5 = _23;
  goto _48;

_52:
  _5 = -1;
  goto _48;

_50:
  _24 = _7;
  _25 = _10;
  _26 = *((&_24[((int64_t)(((int64_t)(int32_t)_25)))]));
  _27 = _6;
  if ((((_26 == _27)&1))) {
    goto _53;
  } else {
    goto _54;
  }

_53:
  _28 = _10;
  _5 = _28;
  goto _48;

_54:
  _29 = _7;
  _30 = _10;
  _31 = *((&_29[((int64_t)(((int64_t)(int32_t)_30)))]));
  _32 = _6;
  if ((((((int32_t)_31) > ((int32_t)_32))&1))) {
    goto _55;
  } else {
    goto _56;
  }

_55:
  _33 = _6;
  _34 = _7;
  _35 = _8;
  _36 = _10;
  _37 = search(_33, _34, _35, _36);
  _5 = _37;
  goto _48;

_56:
  _38 = _6;
  _39 = _7;
  _40 = _10;
  _41 = _9;
  _42 = search(_38, _39, _40, _41);
  _5 = _42;
  goto _48;

_48:
  _43 = _5;
  return _43;
}


int main(void) {
  uint32_t _57;    /* Address-exposed local */
  __MSALIGN__(16) struct l_array_10000_uint32_t _58 __attribute__((aligned(16)));    /* Address-exposed local */
  uint32_t _59;    /* Address-exposed local */
  uint32_t _60;    /* Address-exposed local */
  uint32_t _61;
  uint32_t _62;
  uint32_t _63;
  uint32_t _64;
  uint32_t _65;
  uint32_t _66;
  uint32_t _67;
  uint32_t _68;

  _57 = 0;
  _59 = 0;
  goto _69;

  do {     /* Syntactic loop '' to make GCC happy */
_69:
  _61 = _59;
  if ((((((int32_t)_61) < ((int32_t)10000u))&1))) {
    goto _70;
  } else {
    goto _71;
  }

_70:
  _62 = _59;
  _63 = _59;
  *((&_58.array[((int64_t)(((int64_t)(int32_t)_63)))])) = (llvm_add_u32(_62, 1));
  goto _72;

_72:
  _64 = _59;
  _59 = (llvm_add_u32(_64, 1));
  goto _69;

  } while (1); /* end of syntactic loop '' */
_71:
  _60 = 1;
  _65 = _60;
  _66 = search(_65, ((&_58.array[((int32_t)0)])), 0, 9999);
  _67 = printf(((&_OC_str.array[((int32_t)0)])), _66);
  _68 = _57;
  return _68;
}

