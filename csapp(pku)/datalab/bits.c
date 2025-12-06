/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/*
 * bitAnd - x&y using only ~ and |
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y)
{
  int k = x | y;
  int m = ~x | y;
  int n = x | ~y;

  int a = ~k | ~m | ~n;

  return ~a;

  // 求 &
  //(0, 0), (0, 1), (1, 0), (1, 1)
  // 第一种， k得0， m得1， n得1
  // 第二种， k得1， m得1， n得0
  // 第三种， k得1， m得0， n得1
  // 第四种， k得1， m得1， n得1
  // 因此，只有(1, 1)时，k、m、n全为1
  // 因为只能用 ~ 和 |
  // 每个取反然后 | ，此时 第一、二、三种为1， 第四种为0
  // 返回 ~结果即可
}
/*
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 8
 *   Rating: 1
 */
int bitConditional(int x, int y, int z)
{
  int m1 = x & y;
  int m2 = ~x | y;

  int n1 = x | z;
  int n2 = ~x & z;

  int k1 = m1 | m2;
  int k2 = n1 | n2;

  return k1 & k2;

  // 每个位检查，若为1取y，若为0取z
  // 先x & y， 因为1时取y， 此时正确取值的为正确，错误取值为0
  // 再 ~x | y， 1为0， 0为1， 此时正确取值还是正确，错误取值为1

  // 同理， x | z，0时取z， 此时正确取值为正确， 错误取值为 1
  // ~x & z， 正确为正确，错误取值为0；

  // 此时m1、m2， n1、n2的区别就在错误的位置，并且一个为0一个为1
  // 因此m1 | m2， n1 | n2， 错误位置皆为1，例如
  // yy11yy1
  // 11zz11z
  // 想要yyzzyyz
  // 则k1 & k2
}
/*
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m)
{
  int m1 = (x >> (2 * n * 4)) & 0xff;
  int n1 = (x >> (2 * m * 4)) & 0xff;

  int k1 = (m1 << (2 * m * 4)) | (n1 << (2 * n * 4));

  int k2 = (x ^ (m1 << (2 * n * 4))) ^ (n1 << (2 * m * 4));

  return k1 | k2;
}
/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int logicalShift(int x, int n)
{
  int m = x & 0x80000000;
  int k = ((x >> 31) & 0x1) << (31 - n);
  return ((x >> n) ^ (m >> n)) | k;

  // (x >> n) ^ (m >> n) 将首位算数平移出来的和首位变为0
  // 然后取首位为多少再向左平移到平移后首位的位置再 |
  // 完成逻辑右移
}
/*
 * cleanConsecutive1 - change any consecutive 1 to zeros in the binary form of x.
 *   Consecutive 1 means a set of 1 that contains more than one 1.
 *   Examples cleanConsecutive1(0x10) = 0x10
 *            cleanConsecutive1(0xF0) = 0x0
 *            cleanConsecutive1(0xFFFF0001) = 0x1
 *            cleanConsecutive1(0x4F4F4F4F) = 0x40404040
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 4
 */
int cleanConsecutive1(int x)
{
  int m = x & (x << 1);
  int n = x & ((x >> 1) & 0x7fffffff);
  int k = (m | n) ^ x;
  return k;

  // 假设 010    0110
  // 一级 10     110
  // 二级  01      110
  // m: 00      0100
  // n:  00       100
  // m | n: 000  0110
  // 可知，当1单独时， m | n的位置为0，1连续时还为1
  // 将 (m | n) ^ x, 连续的1为0，单独的1为1
  // 即为结果
}
/*
 * countTrailingZero - return the number of consecutive 0 from the lowest bit of
 *   the binary form of x.
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   Examples countTrailingZero(0x0) = 32, countTrailingZero(0x1) = 0,
 *            countTrailingZero(0xFFFF0000) = 16,
 *            countTrailingZero(0xFFFFFFF0) = 8,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int countTrailingZero(int x)
{
  int m = x & -x;
  int n = 0;
  int j = m;
  int k = 0;
  int mx = !x * 32;
  n += (!(!(m >> 16))) << 4;
  m >>= (!(!(m >> 16))) << 4;
  n += (!(!(m >> 8))) << 3;
  m >>= (!(!(m >> 8))) << 3;
  n += (!(!(m >> 4))) << 2;
  m >>= (!(!(m >> 4))) << 2;
  n += (!(!(m >> 2))) << 1;
  m >>= (!(!(m >> 2))) << 1;
  n += (!(!(m >> 1)));
  m >>= (!(!(m >> 1)));

  return n | mx;

  // 先通过 x & -x 找到最低位的1
  // 然后通过二分判断是否符合
  // 若是后移16位时结果为0，说明1在后16位，n + 0，不将m向后移动16位
  // 若是后移16位时结果为不为0，说明1不在后16位，n + 16，将m向后移动16位，以此类推
  // 通过 ! 进行判断结果是否为0是否需要移动
}
/*
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n)
{
  int sign = x >> 31;
  int bias = sign & ((1 << n) + ~0);
  return (x + bias) >> n;

  // 当sign 为 0 时，即x为正数，直接平移即可，bias = 0;
  // 当sign 为 -1 时，x为负数，加上bias = (1 << n) - 1, 然后再平移即可
}
/*
 * oneMoreThan - return 1 if y is one more than x, and 0 otherwise
 *   Examples oneMoreThan(0, 1) = 1, oneMoreThan(-1, 1) = 0
 *   Legal ops: ~ & ! ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int oneMoreThan(int x, int y)
{
  int a = !!(x + ~(~(1 << 31)) + 1);
  return (!((y + (~x) + 1) + ~1 + 1)) & (~a + 1);

  // 当x为INT_MAX时，x + 1会发生溢出
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x)
{
  int s1 = x >> 31;
  int a = x << 1;
  int s2 = a >> 31;
  int p = a + x;
  int s3 = p >> 31;
  int q = (s1 ^ s2) | (s1 ^ s3) | (s2 ^ s3);
  int k = !q;
  int m = (~k + 1) & p;
  int n = (k + ~0) & (s1 ^ 0x7fffffff);
  return m | n;

  // 好丑陋的解法
  // 通过s1、s2、s3判断是否有发生溢出
  // 若发生溢出，则m为0
  // 然后根据s1判断值为INT_MAX还是INT_MIN
  // 当k为1时，即未发生移除，m为p

  // s1 ^ 0x7fffffff
  // 当s1为0时，全为0无反应，INT_MAX
  // 当s1为-1是，全为1全反, INT_MIN
}
/*
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y)
{
  int sx = x >> 31;
  int sy = y >> 31;
  int b1 = sx ^ sy; // 若是sx == xy,则b1 为 0

  int res = x + ~y + 1;
  int sr = res >> 31; // 减法得到的正负号
  int k = !(sx ^ sr); // 若sr == sx, 则 k = 1，说明没溢出；
  return !((~b1 + 1) & (!k));

  // 若是x、y同号，则不会溢出
  // 若是异号，才有可能溢出
  // 然后继续往后判断即可

  // 当b = 0时， ~b1 + 1为0
  // 当b = 1时， ~b1 + 1为-1
  // 可以方便的看是否要某些数
}
/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y)
{
  int s1 = x >> 31;
  int s2 = y >> 31;
  int t = s1 + ~s2 + 1;
  int k1 = t >> 31;              // 若是同号，则k1 = 0， k2 = 0，
  int k2 = t & 0x1;              // 若是异号，若x为正，y为负，应返回0，k1 = 0， k2 = 1；
  int p = (~k1 + 1) & (~k2 + 1); // 若是x为负，y为正，应返回1，k1 = -1， k2 = 1；
  int j = !(~k2 + 1);            // 将j与之后的比较&， 若是是异号，则之后的比较为0，直接返回p，若是同号，则不影响之后的比较

  int m = j & (!!((x + ~y) >> 31)); // 同号相减不会发生溢出， 若是m为-1，则x <= y， 返回1,若m 为 0， 则返回0

  return p | m;
}
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x)
{
  int s1 = x >> 31;          // 如果x为正数，s1 = 0, 若为负数， s1 = -1;
  int rest = x & 0x00000003; // 获得 4 * x + r的r
  int m = x & 0xfffffffc;    // 获得 4 * x
  int bias = s1 & ((1 << 2) + ~0);
  int t1 = m >> 2;                             // 计算 4 * x 的 x
  int k1 = (t1 << 1) + t1;                     // + 的优先级在 << 上，记得括号， 计算 3 * x
  int k2 = (((rest << 1) + rest) + bias) >> 2; // 计算 3 * r / 4
  return k1 + k2;

  // 大数直接左会溢出，而直接右移会导致精度缺失
  // 因此拆分做
}
/*
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf)
{
  unsigned sign = uf >> 31;
  unsigned exp = (uf & 0x7f800000) >> 23;
  unsigned frac = uf & 0x007fffff;
  if (exp == 0) // 非规格化数的exp为0的情况
  {
    if (frac == 0) // 说明uf为+0或-0
    {
      return uf;
    }
    else
    {
      return (uf << 1) | (sign << 31); // 直接平移即可
    }
  }
  if (exp == 255) // 说明是无穷大或者NaN
  {
    return uf;
  }
  unsigned k = (exp + 1) << 23;
  if ((k >> 23) == 255) // 若x2后变为无穷大，根据sign返回对应的无穷大
  {
    if (sign == 0)
    {
      return 0x7f800000;
    }
    return 0xff800000;
  }
  return uf ^ (exp << 23) | k;
}
/*
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x)
{
  if (x == 0)
  {
    return 0;
  }
  if (x == 0x80000000)
  {
    return 0xcf000000;
  }
  unsigned sign = x >> 31;
  if (x < 0)
  {
    x = ~x + 1;
  }
  int m = x;
  unsigned t;
  while (m > 0)
  {
    unsigned k = m & -m;
    t = k;
    m -= k;
  }
  unsigned E = 0;
  unsigned frac = x - t;
  while (t > 1)
  {
    E++;
    t >>= 1;
  }
  if (E > 23)
  {
    int q = E - 23;
    unsigned o = (1 << q) - 1;
    unsigned p = o & frac;           // 后q位
    unsigned last = (frac >> q) & 1; // 最后一位
    int mid = 1 << (q - 1);
    frac >>= q;
    if (p > mid)
    {
      frac += 1;
    }
    if (p == mid)
    {
      if (last == 1)
      {
        frac += 1;
      }
    }
  }
  else if (E < 23)
  {
    frac <<= (23 - E);
  }
  unsigned exp = E + 127;
  return (sign << 31) + (exp << 23) + frac;
}
/*
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf)
{
  int sign = uf >> 31;
  int exp = (uf >> 23) & 0xff;
  int frac = uf & 0x007fffff;
  if (exp == 0)
  {
    return 0;
  }
  if (exp == 255)
  {
    return 0x80000000u;
  }
  int E = exp - 127;
  if (E < 0)
  {
    return 0;
  }
  int s = sign == 0 ? 1 : -1;
  int ans = (frac >> (23 - E)) | (1 << E);
  return s * ans;
}
/*
 * float_pwr2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_pwr2(int x)
{
  // exp = E + 127
  if (x > 127) // 过大的数，即exp >= 255
  {
    return 0x7f800000;
  }
  if (x < -149) // 过小的时，即exp=0且frac = 0
  {
    return 0;
  }
  if (x >= -149 && x < -126) // exp=0但frac != 0的数
  {
    return 1 << (x + 149);
  }
  if (x >= -126 && x <= 127) // exp不等于0，frac = 0
  {
    return (x + 127) << 23;
  }
}
