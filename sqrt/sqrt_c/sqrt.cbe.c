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

static __forceinline int llvm_fcmp_olt(double X, double Y) { return X <  Y; }
static __forceinline int llvm_fcmp_oeq(double X, double Y) { return X == Y; }
static __forceinline int llvm_fcmp_ole(double X, double Y) { return X <= Y; }


/* Global Declarations */

/* Types Declarations */
struct l_array_20_uint8_t;

/* Function definitions */
typedef float l_fptr_1(float);

typedef uint32_t l_fptr_3(uint8_t*, ...);

typedef uint32_t l_fptr_2(void);


/* Types Definitions */
struct l_array_20_uint8_t {
  uint8_t array[20];
};

/* External Global Variable Declarations */

/* Function Declarations */
float myfabs(float) __ATTRIBUTELIST__((noinline, nothrow));
float sqrtfcn(float) __ATTRIBUTELIST__((noinline, nothrow));
int main(void) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t printf(uint8_t*, ...);


/* Global Variable Definitions and Initialization */
static struct l_array_20_uint8_t _OC_str = { "sqrt(123.123) = %f\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline float llvm_fadd_f32(float a, float b) {
  float r = a + b;
  return r;
}
static __forceinline float llvm_fsub_f32(float a, float b) {
  float r = a - b;
  return r;
}
static __forceinline float llvm_fmul_f32(float a, float b) {
  float r = a * b;
  return r;
}
static __forceinline float llvm_fdiv_f32(float a, float b) {
  float r = a / b;
  return r;
}
static __forceinline float llvm_neg_f32(float a) {
  float r = -a;
  return r;
}


/* Function Bodies */

float myfabs(float _1) {
  float _2;    /* Address-exposed local */
  float _3;    /* Address-exposed local */
  float _4;
  float _5;
  float _6;
  float _7;

  _3 = _1;
  _4 = _3;
  if ((((llvm_fcmp_olt(_4, 0))&1))) {
    goto _8;
  } else {
    goto _9;
  }

_8:
  _5 = _3;
  _2 = (llvm_neg_f32(_5));
  goto _10;

_9:
  _6 = _3;
  _2 = _6;
  goto _10;

_10:
  _7 = _2;
  return _7;
}


float sqrtfcn(float _11) {
  float _12;    /* Address-exposed local */
  float _13;    /* Address-exposed local */
  float _14;    /* Address-exposed local */
  double _15;    /* Address-exposed local */
  double _16;    /* Address-exposed local */
  uint32_t _17;    /* Address-exposed local */
  uint32_t _18;    /* Address-exposed local */
  float _19;
  float _20;
  uint32_t _21;
  uint32_t _22;
  float _23;
  float _24;
  float _25;
  float _26;
  float _27;
  float _28;
  float _29;
  float _30;
  float _31;
  double _32;
  float _33;
  double _34;
  uint32_t _35;
  float _36;

  _12 = _11;
  _19 = _12;
  _13 = (llvm_fdiv_f32(_19, 10));
  _16 = 1.0000000000000001E-5;
  _18 = 0;
  _20 = _12;
  if ((((llvm_fcmp_oeq(_20, 0))&1))) {
    goto _37;
  } else {
    goto _38;
  }

_37:
  _13 = 0;
  goto _39;

_38:
  _17 = 1;
  goto _40;

  do {     /* Syntactic loop '' to make GCC happy */
_40:
  _21 = _17;
  if ((((((int32_t)_21) < ((int32_t)20u))&1))) {
    goto _41;
  } else {
    goto _42;
  }

_41:
  _22 = _18;
  if ((((_22 != 0u)&1))) {
    goto _43;
  } else {
    goto _44;
  }

_44:
  _23 = _12;
  _24 = _13;
  _25 = _13;
  _26 = _13;
  _14 = (((float)((((double)(llvm_fsub_f32(_23, (llvm_fmul_f32(_24, _25)))))) / (2 * (((double)_26))))));
  _27 = _13;
  _28 = _14;
  _13 = (llvm_fadd_f32(_27, _28));
  _29 = _12;
  _30 = _13;
  _31 = _13;
  _15 = (((double)(llvm_fsub_f32(_29, (llvm_fmul_f32(_30, _31))))));
  _32 = _15;
  _33 = myfabs((((float)_32)));
  _34 = _16;
  if ((((llvm_fcmp_ole((((double)_33)), _34))&1))) {
    goto _45;
  } else {
    goto _46;
  }

_45:
  _18 = 1;
  goto _46;

_46:
  goto _47;

_43:
  goto _47;

_47:
  goto _48;

_48:
  _35 = _17;
  _17 = (llvm_add_u32(_35, 1));
  goto _40;

  } while (1); /* end of syntactic loop '' */
_42:
  goto _39;

_39:
  _36 = _13;
  return _36;
}


int main(void) {
  uint32_t _49;    /* Address-exposed local */
  float _50;    /* Address-exposed local */
  float _51;
  float _52;
  uint32_t _53;

  _49 = 0;
  _51 = sqrtfcn(123.123001);
  _50 = _51;
  _52 = _50;
  _53 = printf(((&_OC_str.array[((int32_t)0)])), (((double)_52)));
  return 0;
}

