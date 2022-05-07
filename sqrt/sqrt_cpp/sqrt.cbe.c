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
struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init;
struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Callback_list;
struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words;
struct l_array_8_struct_AC_l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words;
struct l_array_4_uint8_t;
struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet;
struct l_struct_class_OC_std_KD__KD_locale_KD__KD__Impl;
struct l_struct_class_OC_std_KD__KD_locale;
struct l_struct_class_OC_std_KD__KD_ios_base;
struct l_struct_class_OC_std_KD__KD_basic_streambuf;
struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet_OC_base;
struct l_array_13_void_KC_;
struct l_array_13_uint8_t_KC_;
struct l_struct_struct_OC___locale_struct;
struct l_array_7_uint8_t;
struct l_array_256_uint8_t;
struct l_array_6_uint8_t;
struct l_struct_class_OC_std_KD__KD_ctype;
struct l_struct_class_OC_std_KD__KD_num_put;
struct l_struct_class_OC_std_KD__KD_num_get;
struct l_struct_class_OC_std_KD__KD_basic_ios;
struct l_struct_class_OC_std_KD__KD_basic_ostream;
struct l_array_17_uint8_t;
struct l_array_2_uint8_t;

/* Function definitions */
typedef uint32_t l_fptr_2(int, ...);

typedef struct l_struct_class_OC_std_KD__KD_basic_ostream* l_fptr_10(struct l_struct_class_OC_std_KD__KD_basic_ostream*, uint8_t*);

typedef void l_fptr_5(struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init*);

typedef struct l_struct_class_OC_std_KD__KD_basic_ostream* l_fptr_11(struct l_struct_class_OC_std_KD__KD_basic_ostream*, float);

typedef void l_fptr_1(uint8_t*);

typedef float l_fptr_7(float);

typedef void l_fptr_4(void);

typedef uint32_t l_fptr_6(l_fptr_1*, uint8_t*, uint8_t*);

typedef double l_fptr_8(double, double);

typedef void l_fptr_3(uint32_t, struct l_struct_class_OC_std_KD__KD_ios_base*, uint32_t);

typedef uint32_t l_fptr_9(void);


/* Types Definitions */
struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init {
  uint8_t field0;
};
struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Callback_list {
  struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Callback_list* field0;
  l_fptr_3* field1;
  uint32_t field2;
  uint32_t field3;
};
struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words {
  uint8_t* field0;
  uint64_t field1;
};
struct l_array_8_struct_AC_l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words {
  struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words array[8];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet {
  l_fptr_2** field0;
  uint32_t field1;
  struct l_array_4_uint8_t field2;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_class_OC_std_KD__KD_locale_KD__KD__Impl {
  uint32_t field0;
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet** field1;
  uint64_t field2;
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet** field3;
  uint8_t** field4;
};
struct l_struct_class_OC_std_KD__KD_locale {
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD__Impl* field0;
};
struct l_struct_class_OC_std_KD__KD_ios_base {
  l_fptr_2** field0;
  uint64_t field1;
  uint64_t field2;
  uint32_t field3;
  uint32_t field4;
  uint32_t field5;
  struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Callback_list* field6;
  struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words field7;
  struct l_array_8_struct_AC_l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words field8;
  uint32_t field9;
  struct l_struct_struct_OC_std_KD__KD_ios_base_KD__KD__Words* field10;
  struct l_struct_class_OC_std_KD__KD_locale field11;
};
struct l_struct_class_OC_std_KD__KD_basic_streambuf {
  l_fptr_2** field0;
  uint8_t* field1;
  uint8_t* field2;
  uint8_t* field3;
  uint8_t* field4;
  uint8_t* field5;
  uint8_t* field6;
  struct l_struct_class_OC_std_KD__KD_locale field7;
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet_OC_base {
  l_fptr_2** field0;
  uint32_t field1;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_array_13_void_KC_ {
  void* array[13];
};
struct l_array_13_uint8_t_KC_ {
  uint8_t* array[13];
};
struct l_struct_struct_OC___locale_struct {
  struct l_array_13_void_KC_ field0;
  uint16_t* field1;
  uint32_t* field2;
  uint32_t* field3;
  struct l_array_13_uint8_t_KC_ field4;
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_256_uint8_t {
  uint8_t array[256];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
#ifdef _MSC_VER
#pragma pack(push, 1)
#endif
struct l_struct_class_OC_std_KD__KD_ctype {
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet_OC_base field0;
  struct l_array_4_uint8_t field1;
  struct l_struct_struct_OC___locale_struct* field2;
  uint8_t field3;
  struct l_array_7_uint8_t field4;
  uint32_t* field5;
  uint32_t* field6;
  uint16_t* field7;
  uint8_t field8;
  struct l_array_256_uint8_t field9;
  struct l_array_256_uint8_t field10;
  uint8_t field11;
  struct l_array_6_uint8_t field12;
} __attribute__ ((packed));
#ifdef _MSC_VER
#pragma pack(pop)
#endif
struct l_struct_class_OC_std_KD__KD_num_put {
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet_OC_base field0;
  struct l_array_4_uint8_t field1;
};
struct l_struct_class_OC_std_KD__KD_num_get {
  struct l_struct_class_OC_std_KD__KD_locale_KD__KD_facet_OC_base field0;
  struct l_array_4_uint8_t field1;
};
struct l_struct_class_OC_std_KD__KD_basic_ios {
  struct l_struct_class_OC_std_KD__KD_ios_base field0;
  struct l_struct_class_OC_std_KD__KD_basic_ostream* field1;
  uint8_t field2;
  uint8_t field3;
  struct l_struct_class_OC_std_KD__KD_basic_streambuf* field4;
  struct l_struct_class_OC_std_KD__KD_ctype* field5;
  struct l_struct_class_OC_std_KD__KD_num_put* field6;
  struct l_struct_class_OC_std_KD__KD_num_get* field7;
};
struct l_struct_class_OC_std_KD__KD_basic_ostream {
  l_fptr_2** field0;
  struct l_struct_class_OC_std_KD__KD_basic_ios field1;
};
struct l_array_17_uint8_t {
  uint8_t array[17];
};
struct l_array_2_uint8_t {
  uint8_t array[2];
};

/* External Global Variable Declarations */
extern uint8_t __dso_handle;
extern struct l_struct_class_OC_std_KD__KD_basic_ostream _ZSt4cout;

/* Function Declarations */
static void __cxx_global_var_init(void) __ATTRIBUTELIST__((noinline));
void _ZNSt8ios_base4InitC1Ev(struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init*);
void _ZNSt8ios_base4InitD1Ev(struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init*) __ATTRIBUTELIST__((nothrow));
uint32_t __cxa_atexit(l_fptr_1*, uint8_t*, uint8_t*) __ATTRIBUTELIST__((nothrow));
float _Z6myFabsf(float) __ATTRIBUTELIST__((noinline, nothrow));
float _Z6mySqrtf(float) __ATTRIBUTELIST__((noinline, nothrow));
double pow(double, double) __ATTRIBUTELIST__((nothrow));
int main(void) __ATTRIBUTELIST__((noinline));
struct l_struct_class_OC_std_KD__KD_basic_ostream* _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(struct l_struct_class_OC_std_KD__KD_basic_ostream*, uint8_t*);
struct l_struct_class_OC_std_KD__KD_basic_ostream* _ZNSolsEf(struct l_struct_class_OC_std_KD__KD_basic_ostream*, float);
static void _GLOBAL__sub_I_sqrt_OC_cpp(void) __ATTRIBUTELIST__((noinline));


/* Global Variable Definitions and Initialization */
static struct l_struct_class_OC_std_KD__KD_ios_base_KD__KD_Init _ZStL8__ioinit;
static struct l_array_17_uint8_t _OC_str = { "sqrt(123.123) = " };
static struct l_array_2_uint8_t _OC_str_OC_1 = { "\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline float llvm_fadd_f32(float a, float b) {
  float r = a + b;
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

static void __cxx_global_var_init(void) {
  uint32_t _1;

  _ZNSt8ios_base4InitC1Ev((&_ZStL8__ioinit));
  _1 = __cxa_atexit(((l_fptr_1*)_ZNSt8ios_base4InitD1Ev), ((&_ZStL8__ioinit.field0)), (&__dso_handle));
}


float _Z6myFabsf(float _2) {
  float _3;    /* Address-exposed local */
  float _4;
  float _5;
  float _6;
  float _7;
  float _8;
  float _8__PHI_TEMPORARY;

  _3 = _2;
  _4 = _3;
  if ((((llvm_fcmp_olt(_4, 0))&1))) {
    goto _9;
  } else {
    goto _10;
  }

_9:
  _5 = _3;
  _6 = llvm_neg_f32(_5);
  _8__PHI_TEMPORARY = _6;   /* for PHI node */
  goto _11;

_10:
  _7 = _3;
  _8__PHI_TEMPORARY = _7;   /* for PHI node */
  goto _11;

_11:
  _8 = _8__PHI_TEMPORARY;
  return _8;
}


float _Z6mySqrtf(float _12) {
  float _13;    /* Address-exposed local */
  float _14;    /* Address-exposed local */
  float _15;    /* Address-exposed local */
  double _16;    /* Address-exposed local */
  double _17;    /* Address-exposed local */
  uint8_t _18;    /* Address-exposed local */
  uint32_t _19;    /* Address-exposed local */
  float _20;
  float _21;
  uint32_t _22;
  uint8_t _23;
  float _24;
  float _25;
  double _26;
  float _27;
  float _28;
  float _29;
  float _30;
  float _31;
  double _32;
  double _33;
  float _34;
  double _35;
  uint32_t _36;
  float _37;

  _13 = _12;
  _20 = _13;
  _14 = (llvm_fdiv_f32(_20, 10));
  _17 = 1.0000000000000001E-5;
  _18 = 0;
  _21 = _13;
  if ((((llvm_fcmp_oeq(_21, 0))&1))) {
    goto _38;
  } else {
    goto _39;
  }

_38:
  _14 = 0;
  goto _40;

_39:
  _19 = 1;
  goto _41;

  do {     /* Syntactic loop '' to make GCC happy */
_41:
  _22 = _19;
  if ((((((int32_t)_22) < ((int32_t)20u))&1))) {
    goto _42;
  } else {
    goto _43;
  }

_42:
  _23 = _18;
  if ((((((bool)_23&1u))&1))) {
    goto _44;
  } else {
    goto _45;
  }

_45:
  _24 = _13;
  _25 = _14;
  _26 = pow((((double)_25)), 2);
  _27 = _14;
  _15 = (((float)(((((double)_24)) - _26) / (((double)(llvm_fmul_f32(2, _27)))))));
  _28 = _15;
  _29 = _14;
  _14 = (llvm_fadd_f32(_29, _28));
  _30 = _13;
  _31 = _14;
  _32 = pow((((double)_31)), 2);
  _16 = ((((double)_30)) - _32);
  _33 = _16;
  _34 = _Z6myFabsf((((float)_33)));
  _35 = _17;
  _18 = (((uint8_t)(bool)(((llvm_fcmp_ole((((double)_34)), _35))&1))));
  goto _44;

_44:
  goto _46;

_46:
  _36 = _19;
  _19 = (llvm_add_u32(_36, 1));
  goto _41;

  } while (1); /* end of syntactic loop '' */
_43:
  goto _40;

_40:
  _37 = _14;
  return _37;
}


int main(void) {
  float _47;    /* Address-exposed local */
  float _48;
  struct l_struct_class_OC_std_KD__KD_basic_ostream* _49;
  float _50;
  struct l_struct_class_OC_std_KD__KD_basic_ostream* _51;
  struct l_struct_class_OC_std_KD__KD_basic_ostream* _52;

  _48 = _Z6mySqrtf(123.123001);
  _47 = _48;
  _49 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc((&_ZSt4cout), ((&_OC_str.array[((int32_t)0)])));
  _50 = _47;
  _51 = _ZNSolsEf(_49, _50);
  _52 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(_51, ((&_OC_str_OC_1.array[((int32_t)0)])));
  return 0;
}


static void _GLOBAL__sub_I_sqrt_OC_cpp(void) {
  __cxx_global_var_init();
}

