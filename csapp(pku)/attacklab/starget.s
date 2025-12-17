
./starget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 90 39 40 00 	mov    $0x403990,%r8
  40148a:	48 c7 c1 20 39 40 00 	mov    $0x403920,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 bf 22 00 00       	call   4038fa <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 b2 22 00 00       	call   4038fa <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 73 	movb   $0x73,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 fe 1e 00 00       	call   40363f <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 be 11 00 00       	call   402957 <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 46 28 40 00 	mov    $0x402846,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 ec 27 40 00 	mov    $0x4027ec,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 a0 28 40 00 	mov    $0x4028a0,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 fa 28 40 00 	mov    $0x4028fa,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 85 0a 00 00       	call   402435 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 01 00 00 00       	mov    $0x1,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 d4 0f 00 00       	call   4029b1 <launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 53 0f 00 00       	call   402957 <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 82 2c 00 00    	imul   $0x2c82,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a37:	69 c0 e6 b5 00 00    	imul   $0xb5e6,%eax,%eax
  401a3d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a41:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a45:	69 c0 4d 03 00 00    	imul   $0x34d,%eax,%eax
  401a4b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a4f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a53:	69 c0 13 a7 00 00    	imul   $0xa713,%eax,%eax
  401a59:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a5d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a61:	69 c0 55 a0 00 00    	imul   $0xa055,%eax,%eax
  401a67:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a6b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a6f:	69 c0 a9 3e 00 00    	imul   $0x3ea9,%eax,%eax
  401a75:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a79:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a7d:	69 c0 b5 0d 00 00    	imul   $0xdb5,%eax,%eax
  401a83:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a87:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a8b:	69 c0 9f 42 00 00    	imul   $0x429f,%eax,%eax
  401a91:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a95:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a99:	69 c0 cc 1e 00 00    	imul   $0x1ecc,%eax,%eax
  401a9f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa3:	8b 04 24             	mov    (%rsp),%eax
  401aa6:	69 c0 ce b7 00 00    	imul   $0xb7ce,%eax,%eax
  401aac:	89 04 24             	mov    %eax,(%rsp)
  401aaf:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ab3:	69 c0 8c b9 00 00    	imul   $0xb98c,%eax,%eax
  401ab9:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401abd:	8b 04 24             	mov    (%rsp),%eax
  401ac0:	69 c0 a8 1b 00 00    	imul   $0x1ba8,%eax,%eax
  401ac6:	89 04 24             	mov    %eax,(%rsp)
  401ac9:	8b 04 24             	mov    (%rsp),%eax
  401acc:	69 c0 0c 97 00 00    	imul   $0x970c,%eax,%eax
  401ad2:	89 04 24             	mov    %eax,(%rsp)
  401ad5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ad9:	69 c0 28 db 00 00    	imul   $0xdb28,%eax,%eax
  401adf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ae3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ae7:	69 c0 e1 ae 00 00    	imul   $0xaee1,%eax,%eax
  401aed:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401af1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af5:	69 c0 54 13 00 00    	imul   $0x1354,%eax,%eax
  401afb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401aff:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b03:	69 c0 52 7e 00 00    	imul   $0x7e52,%eax,%eax
  401b09:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b0d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b11:	69 c0 c3 d9 00 00    	imul   $0xd9c3,%eax,%eax
  401b17:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b1b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b1f:	69 c0 a2 a8 00 00    	imul   $0xa8a2,%eax,%eax
  401b25:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b29:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b2d:	69 c0 12 87 00 00    	imul   $0x8712,%eax,%eax
  401b33:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b37:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b3b:	69 c0 46 46 00 00    	imul   $0x4646,%eax,%eax
  401b41:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b45:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b49:	69 c0 9a 6c 00 00    	imul   $0x6c9a,%eax,%eax
  401b4f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b53:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b57:	69 c0 bb 05 00 00    	imul   $0x5bb,%eax,%eax
  401b5d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b61:	8b 04 24             	mov    (%rsp),%eax
  401b64:	69 c0 ad b0 00 00    	imul   $0xb0ad,%eax,%eax
  401b6a:	89 04 24             	mov    %eax,(%rsp)
  401b6d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b71:	69 c0 31 33 00 00    	imul   $0x3331,%eax,%eax
  401b77:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b7b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b7f:	69 c0 18 b5 00 00    	imul   $0xb518,%eax,%eax
  401b85:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b89:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b8d:	69 c0 33 9b 00 00    	imul   $0x9b33,%eax,%eax
  401b93:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b97:	8b 54 24 14          	mov    0x14(%rsp),%edx
  401b9b:	89 d0                	mov    %edx,%eax
  401b9d:	c1 e0 07             	shl    $0x7,%eax
  401ba0:	01 d0                	add    %edx,%eax
  401ba2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ba6:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401baa:	69 c0 75 81 00 00    	imul   $0x8175,%eax,%eax
  401bb0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bb4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bb8:	69 c0 b2 e6 00 00    	imul   $0xe6b2,%eax,%eax
  401bbe:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bc2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bc6:	69 c0 7a 2d 00 00    	imul   $0x2d7a,%eax,%eax
  401bcc:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bd0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bd4:	69 c0 fa be 00 00    	imul   $0xbefa,%eax,%eax
  401bda:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bde:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401be2:	69 c0 41 c3 00 00    	imul   $0xc341,%eax,%eax
  401be8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bec:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bf0:	69 c0 6b 2d 00 00    	imul   $0x2d6b,%eax,%eax
  401bf6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bfa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bfe:	69 c0 94 19 00 00    	imul   $0x1994,%eax,%eax
  401c04:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c08:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c0c:	69 c0 db b4 00 00    	imul   $0xb4db,%eax,%eax
  401c12:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c16:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c1a:	69 c0 38 7a 00 00    	imul   $0x7a38,%eax,%eax
  401c20:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c24:	8b 04 24             	mov    (%rsp),%eax
  401c27:	69 c0 d5 b3 00 00    	imul   $0xb3d5,%eax,%eax
  401c2d:	89 04 24             	mov    %eax,(%rsp)
  401c30:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c34:	69 c0 af d0 00 00    	imul   $0xd0af,%eax,%eax
  401c3a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c3e:	8b 04 24             	mov    (%rsp),%eax
  401c41:	69 c0 7c a4 00 00    	imul   $0xa47c,%eax,%eax
  401c47:	89 04 24             	mov    %eax,(%rsp)
  401c4a:	8b 04 24             	mov    (%rsp),%eax
  401c4d:	69 c0 fe cc 00 00    	imul   $0xccfe,%eax,%eax
  401c53:	89 04 24             	mov    %eax,(%rsp)
  401c56:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c5a:	69 c0 9e f0 00 00    	imul   $0xf09e,%eax,%eax
  401c60:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c64:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c68:	69 c0 55 2a 00 00    	imul   $0x2a55,%eax,%eax
  401c6e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c72:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c76:	69 c0 70 9a 00 00    	imul   $0x9a70,%eax,%eax
  401c7c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c80:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c84:	69 c0 c9 cc 00 00    	imul   $0xccc9,%eax,%eax
  401c8a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c8e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c92:	69 c0 21 dc 00 00    	imul   $0xdc21,%eax,%eax
  401c98:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c9c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ca0:	69 c0 2a 7b 00 00    	imul   $0x7b2a,%eax,%eax
  401ca6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401caa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401cae:	69 c0 0f a6 00 00    	imul   $0xa60f,%eax,%eax
  401cb4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cb8:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401cbc:	69 c0 d9 33 00 00    	imul   $0x33d9,%eax,%eax
  401cc2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401cc6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401cca:	69 c0 4f aa 00 00    	imul   $0xaa4f,%eax,%eax
  401cd0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401cd4:	8b 04 24             	mov    (%rsp),%eax
  401cd7:	69 c0 f8 87 00 00    	imul   $0x87f8,%eax,%eax
  401cdd:	89 04 24             	mov    %eax,(%rsp)
  401ce0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ce4:	69 c0 48 ad 00 00    	imul   $0xad48,%eax,%eax
  401cea:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401cee:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401cf2:	69 c0 9f 80 00 00    	imul   $0x809f,%eax,%eax
  401cf8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cfc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d00:	69 c0 25 82 00 00    	imul   $0x8225,%eax,%eax
  401d06:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d0a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d0e:	69 c0 a0 c5 00 00    	imul   $0xc5a0,%eax,%eax
  401d14:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d18:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d1c:	69 c0 2f 55 00 00    	imul   $0x552f,%eax,%eax
  401d22:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d26:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d2a:	69 c0 35 80 00 00    	imul   $0x8035,%eax,%eax
  401d30:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d34:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d38:	69 c0 cf fa 00 00    	imul   $0xfacf,%eax,%eax
  401d3e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d42:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d46:	69 c0 ec 36 00 00    	imul   $0x36ec,%eax,%eax
  401d4c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d50:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d54:	69 c0 56 56 00 00    	imul   $0x5656,%eax,%eax
  401d5a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d5e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d62:	69 c0 62 16 00 00    	imul   $0x1662,%eax,%eax
  401d68:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d6c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d70:	69 c0 f9 fd 00 00    	imul   $0xfdf9,%eax,%eax
  401d76:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d7a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d7e:	69 c0 93 cd 00 00    	imul   $0xcd93,%eax,%eax
  401d84:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d88:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d8c:	69 c0 f8 cf 00 00    	imul   $0xcff8,%eax,%eax
  401d92:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d96:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d9a:	69 c0 84 77 00 00    	imul   $0x7784,%eax,%eax
  401da0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401da4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401da8:	69 c0 d9 4e 00 00    	imul   $0x4ed9,%eax,%eax
  401dae:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401db2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401db6:	69 c0 71 d9 00 00    	imul   $0xd971,%eax,%eax
  401dbc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401dc0:	8b 04 24             	mov    (%rsp),%eax
  401dc3:	69 c0 ad 01 00 00    	imul   $0x1ad,%eax,%eax
  401dc9:	89 04 24             	mov    %eax,(%rsp)
  401dcc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401dd0:	69 c0 3f 5d 00 00    	imul   $0x5d3f,%eax,%eax
  401dd6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401dda:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401dde:	69 c0 5f ab 00 00    	imul   $0xab5f,%eax,%eax
  401de4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401de8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dec:	69 c0 73 aa 00 00    	imul   $0xaa73,%eax,%eax
  401df2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401df6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401dfa:	69 c0 7d b5 00 00    	imul   $0xb57d,%eax,%eax
  401e00:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401e04:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e08:	69 c0 5b 46 00 00    	imul   $0x465b,%eax,%eax
  401e0e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e12:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e16:	69 c0 34 d5 00 00    	imul   $0xd534,%eax,%eax
  401e1c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e20:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e24:	69 c0 8b 45 00 00    	imul   $0x458b,%eax,%eax
  401e2a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e2e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e32:	69 c0 fd 80 00 00    	imul   $0x80fd,%eax,%eax
  401e38:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e3c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e40:	69 c0 01 5e 00 00    	imul   $0x5e01,%eax,%eax
  401e46:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e4a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e4e:	69 c0 7a ed 00 00    	imul   $0xed7a,%eax,%eax
  401e54:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e58:	8b 04 24             	mov    (%rsp),%eax
  401e5b:	69 c0 00 23 00 00    	imul   $0x2300,%eax,%eax
  401e61:	89 04 24             	mov    %eax,(%rsp)
  401e64:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e68:	69 c0 00 2d 00 00    	imul   $0x2d00,%eax,%eax
  401e6e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e72:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e76:	69 c0 b9 37 00 00    	imul   $0x37b9,%eax,%eax
  401e7c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e80:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e84:	69 c0 00 9a 00 00    	imul   $0x9a00,%eax,%eax
  401e8a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e8e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e92:	69 c0 fb 77 00 00    	imul   $0x77fb,%eax,%eax
  401e98:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e9c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ea0:	69 c0 3b 6b 00 00    	imul   $0x6b3b,%eax,%eax
  401ea6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401eaa:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401eae:	69 c0 80 1f 00 00    	imul   $0x1f80,%eax,%eax
  401eb4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401eb8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ebc:	69 c0 19 f8 00 00    	imul   $0xf819,%eax,%eax
  401ec2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ec6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecb:	ba 00 00 00 00       	mov    $0x0,%edx
  401ed0:	83 f8 09             	cmp    $0x9,%eax
  401ed3:	77 0c                	ja     401ee1 <scramble+0x4dd>
  401ed5:	89 c1                	mov    %eax,%ecx
  401ed7:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401eda:	01 ca                	add    %ecx,%edx
  401edc:	83 c0 01             	add    $0x1,%eax
  401edf:	eb ef                	jmp    401ed0 <scramble+0x4cc>
  401ee1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401ee6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401eed:	00 00 
  401eef:	75 07                	jne    401ef8 <scramble+0x4f4>
  401ef1:	89 d0                	mov    %edx,%eax
  401ef3:	48 83 c4 38          	add    $0x38,%rsp
  401ef7:	c3                   	ret    
  401ef8:	e8 5a 0a 00 00       	call   402957 <__stack_chk_fail>

0000000000401efd <getbuf>:
  401efd:	f3 0f 1e fa          	endbr64 
  401f01:	48 83 ec 28          	sub    $0x28,%rsp
  401f05:	48 89 e7             	mov    %rsp,%rdi
  401f08:	e8 66 05 00 00       	call   402473 <Gets>
  401f0d:	b8 01 00 00 00       	mov    $0x1,%eax
  401f12:	48 83 c4 28          	add    $0x28,%rsp
  401f16:	c3                   	ret    

0000000000401f17 <touch1>:
  401f17:	f3 0f 1e fa          	endbr64 
  401f1b:	50                   	push   %rax
  401f1c:	58                   	pop    %rax
  401f1d:	48 83 ec 08          	sub    $0x8,%rsp
  401f21:	c7 05 f1 55 00 00 01 	movl   $0x1,0x55f1(%rip)        # 40751c <vlevel>
  401f28:	00 00 00 
  401f2b:	48 8d 3d e4 23 00 00 	lea    0x23e4(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f32:	e8 79 f3 ff ff       	call   4012b0 <puts@plt>
  401f37:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3c:	e8 a4 07 00 00       	call   4026e5 <validate>
  401f41:	bf 00 00 00 00       	mov    $0x0,%edi
  401f46:	e8 c5 f4 ff ff       	call   401410 <exit@plt>

0000000000401f4b <touch2>:
  401f4b:	f3 0f 1e fa          	endbr64 
  401f4f:	50                   	push   %rax
  401f50:	58                   	pop    %rax
  401f51:	48 83 ec 08          	sub    $0x8,%rsp
  401f55:	89 fa                	mov    %edi,%edx
  401f57:	c7 05 bb 55 00 00 02 	movl   $0x2,0x55bb(%rip)        # 40751c <vlevel>
  401f5e:	00 00 00 
  401f61:	39 3d bd 55 00 00    	cmp    %edi,0x55bd(%rip)        # 407524 <cookie>
  401f67:	74 2a                	je     401f93 <touch2+0x48>
  401f69:	48 8d 35 f0 23 00 00 	lea    0x23f0(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401f70:	bf 01 00 00 00       	mov    $0x1,%edi
  401f75:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7a:	e8 41 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401f7f:	bf 02 00 00 00       	mov    $0x2,%edi
  401f84:	e8 37 08 00 00       	call   4027c0 <fail>
  401f89:	bf 00 00 00 00       	mov    $0x0,%edi
  401f8e:	e8 7d f4 ff ff       	call   401410 <exit@plt>
  401f93:	48 8d 35 9e 23 00 00 	lea    0x239e(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401f9a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f9f:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa4:	e8 17 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401fa9:	bf 02 00 00 00       	mov    $0x2,%edi
  401fae:	e8 32 07 00 00       	call   4026e5 <validate>
  401fb3:	eb d4                	jmp    401f89 <touch2+0x3e>

0000000000401fb5 <hexmatch>:
  401fb5:	f3 0f 1e fa          	endbr64 
  401fb9:	41 55                	push   %r13
  401fbb:	41 54                	push   %r12
  401fbd:	55                   	push   %rbp
  401fbe:	53                   	push   %rbx
  401fbf:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401fc6:	89 fd                	mov    %edi,%ebp
  401fc8:	48 89 f3             	mov    %rsi,%rbx
  401fcb:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  401fd1:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  401fd6:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401fdb:	31 c0                	xor    %eax,%eax
  401fdd:	e8 ae f3 ff ff       	call   401390 <random@plt>
  401fe2:	48 89 c1             	mov    %rax,%rcx
  401fe5:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401fec:	0a d7 a3 
  401fef:	48 f7 ea             	imul   %rdx
  401ff2:	48 01 ca             	add    %rcx,%rdx
  401ff5:	48 c1 fa 06          	sar    $0x6,%rdx
  401ff9:	48 89 c8             	mov    %rcx,%rax
  401ffc:	48 c1 f8 3f          	sar    $0x3f,%rax
  402000:	48 29 c2             	sub    %rax,%rdx
  402003:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402007:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40200b:	48 c1 e0 02          	shl    $0x2,%rax
  40200f:	48 29 c1             	sub    %rax,%rcx
  402012:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402016:	41 89 e8             	mov    %ebp,%r8d
  402019:	48 8d 0d 13 23 00 00 	lea    0x2313(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  402020:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402027:	be 01 00 00 00       	mov    $0x1,%esi
  40202c:	4c 89 ef             	mov    %r13,%rdi
  40202f:	b8 00 00 00 00       	mov    $0x0,%eax
  402034:	e8 17 f4 ff ff       	call   401450 <__sprintf_chk@plt>
  402039:	ba 09 00 00 00       	mov    $0x9,%edx
  40203e:	4c 89 ee             	mov    %r13,%rsi
  402041:	48 89 df             	mov    %rbx,%rdi
  402044:	e8 47 f2 ff ff       	call   401290 <strncmp@plt>
  402049:	85 c0                	test   %eax,%eax
  40204b:	0f 94 c0             	sete   %al
  40204e:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402053:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402058:	75 11                	jne    40206b <hexmatch+0xb6>
  40205a:	0f b6 c0             	movzbl %al,%eax
  40205d:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402064:	5b                   	pop    %rbx
  402065:	5d                   	pop    %rbp
  402066:	41 5c                	pop    %r12
  402068:	41 5d                	pop    %r13
  40206a:	c3                   	ret    
  40206b:	e8 e7 08 00 00       	call   402957 <__stack_chk_fail>

0000000000402070 <touch3>:
  402070:	f3 0f 1e fa          	endbr64 
  402074:	53                   	push   %rbx
  402075:	48 89 fb             	mov    %rdi,%rbx
  402078:	c7 05 9a 54 00 00 03 	movl   $0x3,0x549a(%rip)        # 40751c <vlevel>
  40207f:	00 00 00 
  402082:	48 89 fe             	mov    %rdi,%rsi
  402085:	8b 3d 99 54 00 00    	mov    0x5499(%rip),%edi        # 407524 <cookie>
  40208b:	e8 25 ff ff ff       	call   401fb5 <hexmatch>
  402090:	85 c0                	test   %eax,%eax
  402092:	74 2d                	je     4020c1 <touch3+0x51>
  402094:	48 89 da             	mov    %rbx,%rdx
  402097:	48 8d 35 ea 22 00 00 	lea    0x22ea(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  40209e:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a8:	e8 13 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  4020ad:	bf 03 00 00 00       	mov    $0x3,%edi
  4020b2:	e8 2e 06 00 00       	call   4026e5 <validate>
  4020b7:	bf 00 00 00 00       	mov    $0x0,%edi
  4020bc:	e8 4f f3 ff ff       	call   401410 <exit@plt>
  4020c1:	48 89 da             	mov    %rbx,%rdx
  4020c4:	48 8d 35 e5 22 00 00 	lea    0x22e5(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4020cb:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d5:	e8 e6 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020da:	bf 03 00 00 00       	mov    $0x3,%edi
  4020df:	e8 dc 06 00 00       	call   4027c0 <fail>
  4020e4:	eb d1                	jmp    4020b7 <touch3+0x47>

00000000004020e6 <test>:
  4020e6:	f3 0f 1e fa          	endbr64 
  4020ea:	48 83 ec 08          	sub    $0x8,%rsp
  4020ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f3:	e8 05 fe ff ff       	call   401efd <getbuf>
  4020f8:	89 c2                	mov    %eax,%edx
  4020fa:	48 8d 35 d7 22 00 00 	lea    0x22d7(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402101:	bf 01 00 00 00       	mov    $0x1,%edi
  402106:	b8 00 00 00 00       	mov    $0x0,%eax
  40210b:	e8 b0 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402110:	48 83 c4 08          	add    $0x8,%rsp
  402114:	c3                   	ret    

0000000000402115 <test2>:
  402115:	f3 0f 1e fa          	endbr64 
  402119:	48 83 ec 08          	sub    $0x8,%rsp
  40211d:	b8 00 00 00 00       	mov    $0x0,%eax
  402122:	e8 1d 00 00 00       	call   402144 <getbuf_withcanary>
  402127:	89 c2                	mov    %eax,%edx
  402129:	48 8d 35 d0 22 00 00 	lea    0x22d0(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402130:	bf 01 00 00 00       	mov    $0x1,%edi
  402135:	b8 00 00 00 00       	mov    $0x0,%eax
  40213a:	e8 81 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40213f:	48 83 c4 08          	add    $0x8,%rsp
  402143:	c3                   	ret    

0000000000402144 <getbuf_withcanary>:
  402144:	f3 0f 1e fa          	endbr64 
  402148:	55                   	push   %rbp
  402149:	48 89 e5             	mov    %rsp,%rbp
  40214c:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  402153:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40215a:	00 00 
  40215c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402160:	31 c0                	xor    %eax,%eax
  402162:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  402169:	00 00 00 
  40216c:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402172:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  402178:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40217f:	48 89 c7             	mov    %rax,%rdi
  402182:	e8 ec 02 00 00       	call   402473 <Gets>
  402187:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  40218d:	48 63 d0             	movslq %eax,%rdx
  402190:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402197:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  40219e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021a5:	48 89 ce             	mov    %rcx,%rsi
  4021a8:	48 89 c7             	mov    %rax,%rdi
  4021ab:	e8 c0 f1 ff ff       	call   401370 <memcpy@plt>
  4021b0:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  4021b6:	48 63 d0             	movslq %eax,%rdx
  4021b9:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  4021c0:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  4021c7:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  4021ce:	48 89 c6             	mov    %rax,%rsi
  4021d1:	48 89 cf             	mov    %rcx,%rdi
  4021d4:	e8 97 f1 ff ff       	call   401370 <memcpy@plt>
  4021d9:	b8 01 00 00 00       	mov    $0x1,%eax
  4021de:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4021e2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4021e9:	00 00 
  4021eb:	74 05                	je     4021f2 <getbuf_withcanary+0xae>
  4021ed:	e8 65 07 00 00       	call   402957 <__stack_chk_fail>
  4021f2:	c9                   	leave  
  4021f3:	c3                   	ret    

00000000004021f4 <start_farm>:
  4021f4:	f3 0f 1e fa          	endbr64 
  4021f8:	b8 01 00 00 00       	mov    $0x1,%eax
  4021fd:	c3                   	ret    

00000000004021fe <setval_462>:
  4021fe:	f3 0f 1e fa          	endbr64 
  402202:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  402208:	c3                   	ret    

0000000000402209 <addval_366>:
  402209:	f3 0f 1e fa          	endbr64 
  40220d:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  402213:	c3                   	ret    

0000000000402214 <addval_367>:
  402214:	f3 0f 1e fa          	endbr64 
  402218:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  40221e:	c3                   	ret    

000000000040221f <addval_176>:
  40221f:	f3 0f 1e fa          	endbr64 
  402223:	8d 87 39 08 89 c7    	lea    -0x3876f7c7(%rdi),%eax
  402229:	c3                   	ret    

000000000040222a <getval_256>:
  40222a:	f3 0f 1e fa          	endbr64 
  40222e:	b8 4c 89 c7 c3       	mov    $0xc3c7894c,%eax
  402233:	c3                   	ret    

0000000000402234 <addval_434>:
  402234:	f3 0f 1e fa          	endbr64 
  402238:	8d 87 81 b1 48 90    	lea    -0x6fb74e7f(%rdi),%eax
  40223e:	c3                   	ret    

000000000040223f <setval_289>:
  40223f:	f3 0f 1e fa          	endbr64 
  402243:	c7 07 78 9b 58 90    	movl   $0x90589b78,(%rdi)
  402249:	c3                   	ret    

000000000040224a <getval_415>:
  40224a:	f3 0f 1e fa          	endbr64 
  40224e:	b8 83 58 c7 f6       	mov    $0xf6c75883,%eax
  402253:	c3                   	ret    

0000000000402254 <mid_farm>:
  402254:	f3 0f 1e fa          	endbr64 
  402258:	b8 01 00 00 00       	mov    $0x1,%eax
  40225d:	c3                   	ret    

000000000040225e <add_xy>:
  40225e:	f3 0f 1e fa          	endbr64 
  402262:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402266:	c3                   	ret    

0000000000402267 <setval_453>:
  402267:	f3 0f 1e fa          	endbr64 
  40226b:	c7 07 89 ca 84 d2    	movl   $0xd284ca89,(%rdi)
  402271:	c3                   	ret    

0000000000402272 <setval_115>:
  402272:	f3 0f 1e fa          	endbr64 
  402276:	c7 07 99 ca 84 d2    	movl   $0xd284ca99,(%rdi)
  40227c:	c3                   	ret    

000000000040227d <setval_277>:
  40227d:	f3 0f 1e fa          	endbr64 
  402281:	c7 07 99 c1 08 d2    	movl   $0xd208c199,(%rdi)
  402287:	c3                   	ret    

0000000000402288 <addval_185>:
  402288:	f3 0f 1e fa          	endbr64 
  40228c:	8d 87 c9 d6 84 d2    	lea    -0x2d7b2937(%rdi),%eax
  402292:	c3                   	ret    

0000000000402293 <setval_395>:
  402293:	f3 0f 1e fa          	endbr64 
  402297:	c7 07 89 c1 20 db    	movl   $0xdb20c189,(%rdi)
  40229d:	c3                   	ret    

000000000040229e <getval_328>:
  40229e:	f3 0f 1e fa          	endbr64 
  4022a2:	b8 81 d6 84 c0       	mov    $0xc084d681,%eax
  4022a7:	c3                   	ret    

00000000004022a8 <setval_167>:
  4022a8:	f3 0f 1e fa          	endbr64 
  4022ac:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  4022b2:	c3                   	ret    

00000000004022b3 <addval_264>:
  4022b3:	f3 0f 1e fa          	endbr64 
  4022b7:	8d 87 99 d6 38 c9    	lea    -0x36c72967(%rdi),%eax
  4022bd:	c3                   	ret    

00000000004022be <setval_339>:
  4022be:	f3 0f 1e fa          	endbr64 
  4022c2:	c7 07 c9 c1 20 d2    	movl   $0xd220c1c9,(%rdi)
  4022c8:	c3                   	ret    

00000000004022c9 <getval_112>:
  4022c9:	f3 0f 1e fa          	endbr64 
  4022cd:	b8 89 ca 30 db       	mov    $0xdb30ca89,%eax
  4022d2:	c3                   	ret    

00000000004022d3 <addval_231>:
  4022d3:	f3 0f 1e fa          	endbr64 
  4022d7:	8d 87 99 c1 20 d2    	lea    -0x2ddf3e67(%rdi),%eax
  4022dd:	c3                   	ret    

00000000004022de <getval_173>:
  4022de:	f3 0f 1e fa          	endbr64 
  4022e2:	b8 48 c9 e0 c3       	mov    $0xc3e0c948,%eax
  4022e7:	c3                   	ret    

00000000004022e8 <addval_215>:
  4022e8:	f3 0f 1e fa          	endbr64 
  4022ec:	8d 87 48 88 e0 90    	lea    -0x6f1f77b8(%rdi),%eax
  4022f2:	c3                   	ret    

00000000004022f3 <getval_139>:
  4022f3:	f3 0f 1e fa          	endbr64 
  4022f7:	b8 8d ca 08 db       	mov    $0xdb08ca8d,%eax
  4022fc:	c3                   	ret    

00000000004022fd <getval_145>:
  4022fd:	f3 0f 1e fa          	endbr64 
  402301:	b8 ac 89 d6 c3       	mov    $0xc3d689ac,%eax
  402306:	c3                   	ret    

0000000000402307 <setval_372>:
  402307:	f3 0f 1e fa          	endbr64 
  40230b:	c7 07 7c 8d d6 c3    	movl   $0xc3d68d7c,(%rdi)
  402311:	c3                   	ret    

0000000000402312 <getval_464>:
  402312:	f3 0f 1e fa          	endbr64 
  402316:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  40231b:	c3                   	ret    

000000000040231c <getval_465>:
  40231c:	f3 0f 1e fa          	endbr64 
  402320:	b8 e0 4c 89 e0       	mov    $0xe0894ce0,%eax
  402325:	c3                   	ret    

0000000000402326 <getval_186>:
  402326:	f3 0f 1e fa          	endbr64 
  40232a:	b8 09 ca 38 c0       	mov    $0xc038ca09,%eax
  40232f:	c3                   	ret    

0000000000402330 <getval_178>:
  402330:	f3 0f 1e fa          	endbr64 
  402334:	b8 81 c1 90 90       	mov    $0x9090c181,%eax
  402339:	c3                   	ret    

000000000040233a <setval_420>:
  40233a:	f3 0f 1e fa          	endbr64 
  40233e:	c7 07 c9 ca 08 d2    	movl   $0xd208cac9,(%rdi)
  402344:	c3                   	ret    

0000000000402345 <getval_121>:
  402345:	f3 0f 1e fa          	endbr64 
  402349:	b8 89 c1 94 90       	mov    $0x9094c189,%eax
  40234e:	c3                   	ret    

000000000040234f <addval_239>:
  40234f:	f3 0f 1e fa          	endbr64 
  402353:	8d 87 89 c1 38 c9    	lea    -0x36c73e77(%rdi),%eax
  402359:	c3                   	ret    

000000000040235a <addval_416>:
  40235a:	f3 0f 1e fa          	endbr64 
  40235e:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  402364:	c3                   	ret    

0000000000402365 <setval_457>:
  402365:	f3 0f 1e fa          	endbr64 
  402369:	c7 07 89 d6 90 c3    	movl   $0xc390d689,(%rdi)
  40236f:	c3                   	ret    

0000000000402370 <addval_417>:
  402370:	f3 0f 1e fa          	endbr64 
  402374:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  40237a:	c3                   	ret    

000000000040237b <addval_132>:
  40237b:	f3 0f 1e fa          	endbr64 
  40237f:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  402385:	c3                   	ret    

0000000000402386 <addval_194>:
  402386:	f3 0f 1e fa          	endbr64 
  40238a:	8d 87 8b c1 84 c9    	lea    -0x367b3e75(%rdi),%eax
  402390:	c3                   	ret    

0000000000402391 <setval_225>:
  402391:	f3 0f 1e fa          	endbr64 
  402395:	c7 07 89 ca 20 d2    	movl   $0xd220ca89,(%rdi)
  40239b:	c3                   	ret    

000000000040239c <setval_271>:
  40239c:	f3 0f 1e fa          	endbr64 
  4023a0:	c7 07 c9 d6 90 90    	movl   $0x9090d6c9,(%rdi)
  4023a6:	c3                   	ret    

00000000004023a7 <getval_486>:
  4023a7:	f3 0f 1e fa          	endbr64 
  4023ab:	b8 89 d6 94 90       	mov    $0x9094d689,%eax
  4023b0:	c3                   	ret    

00000000004023b1 <setval_151>:
  4023b1:	f3 0f 1e fa          	endbr64 
  4023b5:	c7 07 89 ca 78 db    	movl   $0xdb78ca89,(%rdi)
  4023bb:	c3                   	ret    

00000000004023bc <end_farm>:
  4023bc:	f3 0f 1e fa          	endbr64 
  4023c0:	b8 01 00 00 00       	mov    $0x1,%eax
  4023c5:	c3                   	ret    

00000000004023c6 <save_char>:
  4023c6:	8b 05 78 5d 00 00    	mov    0x5d78(%rip),%eax        # 408144 <gets_cnt>
  4023cc:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4023d1:	7f 4a                	jg     40241d <save_char+0x57>
  4023d3:	89 f9                	mov    %edi,%ecx
  4023d5:	c0 e9 04             	shr    $0x4,%cl
  4023d8:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4023db:	4c 8d 05 8e 23 00 00 	lea    0x238e(%rip),%r8        # 404770 <trans_char>
  4023e2:	83 e1 0f             	and    $0xf,%ecx
  4023e5:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4023ea:	48 8d 0d 4f 51 00 00 	lea    0x514f(%rip),%rcx        # 407540 <gets_buf>
  4023f1:	48 63 f2             	movslq %edx,%rsi
  4023f4:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4023f8:	8d 72 01             	lea    0x1(%rdx),%esi
  4023fb:	83 e7 0f             	and    $0xf,%edi
  4023fe:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402403:	48 63 f6             	movslq %esi,%rsi
  402406:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40240a:	83 c2 02             	add    $0x2,%edx
  40240d:	48 63 d2             	movslq %edx,%rdx
  402410:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402414:	83 c0 01             	add    $0x1,%eax
  402417:	89 05 27 5d 00 00    	mov    %eax,0x5d27(%rip)        # 408144 <gets_cnt>
  40241d:	c3                   	ret    

000000000040241e <save_term>:
  40241e:	8b 05 20 5d 00 00    	mov    0x5d20(%rip),%eax        # 408144 <gets_cnt>
  402424:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402427:	48 98                	cltq   
  402429:	48 8d 15 10 51 00 00 	lea    0x5110(%rip),%rdx        # 407540 <gets_buf>
  402430:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402434:	c3                   	ret    

0000000000402435 <check_fail>:
  402435:	f3 0f 1e fa          	endbr64 
  402439:	50                   	push   %rax
  40243a:	58                   	pop    %rax
  40243b:	48 83 ec 08          	sub    $0x8,%rsp
  40243f:	0f be 15 02 5d 00 00 	movsbl 0x5d02(%rip),%edx        # 408148 <target_prefix>
  402446:	4c 8d 05 f3 50 00 00 	lea    0x50f3(%rip),%r8        # 407540 <gets_buf>
  40244d:	8b 0d c5 50 00 00    	mov    0x50c5(%rip),%ecx        # 407518 <check_level>
  402453:	48 8d 35 d4 1f 00 00 	lea    0x1fd4(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  40245a:	bf 01 00 00 00       	mov    $0x1,%edi
  40245f:	b8 00 00 00 00       	mov    $0x0,%eax
  402464:	e8 57 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402469:	bf 01 00 00 00       	mov    $0x1,%edi
  40246e:	e8 9d ef ff ff       	call   401410 <exit@plt>

0000000000402473 <Gets>:
  402473:	f3 0f 1e fa          	endbr64 
  402477:	41 54                	push   %r12
  402479:	55                   	push   %rbp
  40247a:	53                   	push   %rbx
  40247b:	49 89 fc             	mov    %rdi,%r12
  40247e:	c7 05 bc 5c 00 00 00 	movl   $0x0,0x5cbc(%rip)        # 408144 <gets_cnt>
  402485:	00 00 00 
  402488:	48 89 fb             	mov    %rdi,%rbx
  40248b:	48 8b 3d 7e 50 00 00 	mov    0x507e(%rip),%rdi        # 407510 <infile>
  402492:	e8 a9 ef ff ff       	call   401440 <getc@plt>
  402497:	83 f8 ff             	cmp    $0xffffffff,%eax
  40249a:	74 18                	je     4024b4 <Gets+0x41>
  40249c:	83 f8 0a             	cmp    $0xa,%eax
  40249f:	74 13                	je     4024b4 <Gets+0x41>
  4024a1:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4024a5:	88 03                	mov    %al,(%rbx)
  4024a7:	0f b6 f8             	movzbl %al,%edi
  4024aa:	e8 17 ff ff ff       	call   4023c6 <save_char>
  4024af:	48 89 eb             	mov    %rbp,%rbx
  4024b2:	eb d7                	jmp    40248b <Gets+0x18>
  4024b4:	c6 03 00             	movb   $0x0,(%rbx)
  4024b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4024bc:	e8 5d ff ff ff       	call   40241e <save_term>
  4024c1:	4c 89 e0             	mov    %r12,%rax
  4024c4:	5b                   	pop    %rbx
  4024c5:	5d                   	pop    %rbp
  4024c6:	41 5c                	pop    %r12
  4024c8:	c3                   	ret    

00000000004024c9 <notify_server>:
  4024c9:	f3 0f 1e fa          	endbr64 
  4024cd:	55                   	push   %rbp
  4024ce:	53                   	push   %rbx
  4024cf:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4024d6:	ff 
  4024d7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4024de:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4024e3:	4c 39 dc             	cmp    %r11,%rsp
  4024e6:	75 ef                	jne    4024d7 <notify_server+0xe>
  4024e8:	48 83 ec 18          	sub    $0x18,%rsp
  4024ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024f3:	00 00 
  4024f5:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4024fc:	00 
  4024fd:	31 c0                	xor    %eax,%eax
  4024ff:	83 3d 22 50 00 00 00 	cmpl   $0x0,0x5022(%rip)        # 407528 <is_checker>
  402506:	0f 85 b7 01 00 00    	jne    4026c3 <notify_server+0x1fa>
  40250c:	89 fb                	mov    %edi,%ebx
  40250e:	81 3d 2c 5c 00 00 9c 	cmpl   $0x1f9c,0x5c2c(%rip)        # 408144 <gets_cnt>
  402515:	1f 00 00 
  402518:	7f 18                	jg     402532 <notify_server+0x69>
  40251a:	0f be 05 27 5c 00 00 	movsbl 0x5c27(%rip),%eax        # 408148 <target_prefix>
  402521:	83 3d 78 4f 00 00 00 	cmpl   $0x0,0x4f78(%rip)        # 4074a0 <notify>
  402528:	74 23                	je     40254d <notify_server+0x84>
  40252a:	8b 15 f0 4f 00 00    	mov    0x4ff0(%rip),%edx        # 407520 <authkey>
  402530:	eb 20                	jmp    402552 <notify_server+0x89>
  402532:	48 8d 35 1f 20 00 00 	lea    0x201f(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  402539:	bf 01 00 00 00       	mov    $0x1,%edi
  40253e:	e8 7d ee ff ff       	call   4013c0 <__printf_chk@plt>
  402543:	bf 01 00 00 00       	mov    $0x1,%edi
  402548:	e8 c3 ee ff ff       	call   401410 <exit@plt>
  40254d:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402552:	85 db                	test   %ebx,%ebx
  402554:	0f 84 9b 00 00 00    	je     4025f5 <notify_server+0x12c>
  40255a:	48 8d 2d e8 1e 00 00 	lea    0x1ee8(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402561:	48 89 e7             	mov    %rsp,%rdi
  402564:	48 8d 0d d5 4f 00 00 	lea    0x4fd5(%rip),%rcx        # 407540 <gets_buf>
  40256b:	51                   	push   %rcx
  40256c:	56                   	push   %rsi
  40256d:	50                   	push   %rax
  40256e:	52                   	push   %rdx
  40256f:	49 89 e9             	mov    %rbp,%r9
  402572:	44 8b 05 d7 4b 00 00 	mov    0x4bd7(%rip),%r8d        # 407150 <target_id>
  402579:	48 8d 0d ce 1e 00 00 	lea    0x1ece(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402580:	ba 00 20 00 00       	mov    $0x2000,%edx
  402585:	be 01 00 00 00       	mov    $0x1,%esi
  40258a:	b8 00 00 00 00       	mov    $0x0,%eax
  40258f:	e8 bc ee ff ff       	call   401450 <__sprintf_chk@plt>
  402594:	48 83 c4 20          	add    $0x20,%rsp
  402598:	83 3d 01 4f 00 00 00 	cmpl   $0x0,0x4f01(%rip)        # 4074a0 <notify>
  40259f:	0f 84 95 00 00 00    	je     40263a <notify_server+0x171>
  4025a5:	48 89 e1             	mov    %rsp,%rcx
  4025a8:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4025af:	00 
  4025b0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4025b6:	48 8b 15 ab 4b 00 00 	mov    0x4bab(%rip),%rdx        # 407168 <lab>
  4025bd:	48 8b 35 ac 4b 00 00 	mov    0x4bac(%rip),%rsi        # 407170 <course>
  4025c4:	48 8b 3d 95 4b 00 00 	mov    0x4b95(%rip),%rdi        # 407160 <user_id>
  4025cb:	e8 7f 12 00 00       	call   40384f <driver_post>
  4025d0:	85 c0                	test   %eax,%eax
  4025d2:	78 2d                	js     402601 <notify_server+0x138>
  4025d4:	85 db                	test   %ebx,%ebx
  4025d6:	74 51                	je     402629 <notify_server+0x160>
  4025d8:	48 8d 3d a9 1f 00 00 	lea    0x1fa9(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4025df:	e8 cc ec ff ff       	call   4012b0 <puts@plt>
  4025e4:	48 8d 3d 8b 1e 00 00 	lea    0x1e8b(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4025eb:	e8 c0 ec ff ff       	call   4012b0 <puts@plt>
  4025f0:	e9 ce 00 00 00       	jmp    4026c3 <notify_server+0x1fa>
  4025f5:	48 8d 2d 48 1e 00 00 	lea    0x1e48(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4025fc:	e9 60 ff ff ff       	jmp    402561 <notify_server+0x98>
  402601:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402608:	00 
  402609:	48 8d 35 5a 1e 00 00 	lea    0x1e5a(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  402610:	bf 01 00 00 00       	mov    $0x1,%edi
  402615:	b8 00 00 00 00       	mov    $0x0,%eax
  40261a:	e8 a1 ed ff ff       	call   4013c0 <__printf_chk@plt>
  40261f:	bf 01 00 00 00       	mov    $0x1,%edi
  402624:	e8 e7 ed ff ff       	call   401410 <exit@plt>
  402629:	48 8d 3d 50 1e 00 00 	lea    0x1e50(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  402630:	e8 7b ec ff ff       	call   4012b0 <puts@plt>
  402635:	e9 89 00 00 00       	jmp    4026c3 <notify_server+0x1fa>
  40263a:	48 89 ea             	mov    %rbp,%rdx
  40263d:	48 8d 35 7c 1f 00 00 	lea    0x1f7c(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402644:	bf 01 00 00 00       	mov    $0x1,%edi
  402649:	b8 00 00 00 00       	mov    $0x0,%eax
  40264e:	e8 6d ed ff ff       	call   4013c0 <__printf_chk@plt>
  402653:	48 8b 15 06 4b 00 00 	mov    0x4b06(%rip),%rdx        # 407160 <user_id>
  40265a:	48 8d 35 26 1e 00 00 	lea    0x1e26(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402661:	bf 01 00 00 00       	mov    $0x1,%edi
  402666:	b8 00 00 00 00       	mov    $0x0,%eax
  40266b:	e8 50 ed ff ff       	call   4013c0 <__printf_chk@plt>
  402670:	48 8b 15 f9 4a 00 00 	mov    0x4af9(%rip),%rdx        # 407170 <course>
  402677:	48 8d 35 16 1e 00 00 	lea    0x1e16(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  40267e:	bf 01 00 00 00       	mov    $0x1,%edi
  402683:	b8 00 00 00 00       	mov    $0x0,%eax
  402688:	e8 33 ed ff ff       	call   4013c0 <__printf_chk@plt>
  40268d:	48 8b 15 d4 4a 00 00 	mov    0x4ad4(%rip),%rdx        # 407168 <lab>
  402694:	48 8d 35 05 1e 00 00 	lea    0x1e05(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40269b:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a5:	e8 16 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4026aa:	48 89 e2             	mov    %rsp,%rdx
  4026ad:	48 8d 35 f5 1d 00 00 	lea    0x1df5(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  4026b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026be:	e8 fd ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026c3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4026ca:	00 
  4026cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4026d2:	00 00 
  4026d4:	75 0a                	jne    4026e0 <notify_server+0x217>
  4026d6:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4026dd:	5b                   	pop    %rbx
  4026de:	5d                   	pop    %rbp
  4026df:	c3                   	ret    
  4026e0:	e8 72 02 00 00       	call   402957 <__stack_chk_fail>

00000000004026e5 <validate>:
  4026e5:	f3 0f 1e fa          	endbr64 
  4026e9:	53                   	push   %rbx
  4026ea:	89 fb                	mov    %edi,%ebx
  4026ec:	83 3d 35 4e 00 00 00 	cmpl   $0x0,0x4e35(%rip)        # 407528 <is_checker>
  4026f3:	74 79                	je     40276e <validate+0x89>
  4026f5:	39 3d 21 4e 00 00    	cmp    %edi,0x4e21(%rip)        # 40751c <vlevel>
  4026fb:	75 39                	jne    402736 <validate+0x51>
  4026fd:	8b 15 15 4e 00 00    	mov    0x4e15(%rip),%edx        # 407518 <check_level>
  402703:	39 fa                	cmp    %edi,%edx
  402705:	75 45                	jne    40274c <validate+0x67>
  402707:	0f be 0d 3a 5a 00 00 	movsbl 0x5a3a(%rip),%ecx        # 408148 <target_prefix>
  40270e:	4c 8d 0d 2b 4e 00 00 	lea    0x4e2b(%rip),%r9        # 407540 <gets_buf>
  402715:	41 89 f8             	mov    %edi,%r8d
  402718:	8b 15 02 4e 00 00    	mov    0x4e02(%rip),%edx        # 407520 <authkey>
  40271e:	48 8d 35 eb 1e 00 00 	lea    0x1eeb(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402725:	bf 01 00 00 00       	mov    $0x1,%edi
  40272a:	b8 00 00 00 00       	mov    $0x0,%eax
  40272f:	e8 8c ec ff ff       	call   4013c0 <__printf_chk@plt>
  402734:	5b                   	pop    %rbx
  402735:	c3                   	ret    
  402736:	48 8d 3d 78 1d 00 00 	lea    0x1d78(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40273d:	e8 6e eb ff ff       	call   4012b0 <puts@plt>
  402742:	b8 00 00 00 00       	mov    $0x0,%eax
  402747:	e8 e9 fc ff ff       	call   402435 <check_fail>
  40274c:	89 f9                	mov    %edi,%ecx
  40274e:	48 8d 35 93 1e 00 00 	lea    0x1e93(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402755:	bf 01 00 00 00       	mov    $0x1,%edi
  40275a:	b8 00 00 00 00       	mov    $0x0,%eax
  40275f:	e8 5c ec ff ff       	call   4013c0 <__printf_chk@plt>
  402764:	b8 00 00 00 00       	mov    $0x0,%eax
  402769:	e8 c7 fc ff ff       	call   402435 <check_fail>
  40276e:	39 3d a8 4d 00 00    	cmp    %edi,0x4da8(%rip)        # 40751c <vlevel>
  402774:	74 1a                	je     402790 <validate+0xab>
  402776:	48 8d 3d 38 1d 00 00 	lea    0x1d38(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40277d:	e8 2e eb ff ff       	call   4012b0 <puts@plt>
  402782:	89 de                	mov    %ebx,%esi
  402784:	bf 00 00 00 00       	mov    $0x0,%edi
  402789:	e8 3b fd ff ff       	call   4024c9 <notify_server>
  40278e:	eb a4                	jmp    402734 <validate+0x4f>
  402790:	0f be 0d b1 59 00 00 	movsbl 0x59b1(%rip),%ecx        # 408148 <target_prefix>
  402797:	89 fa                	mov    %edi,%edx
  402799:	48 8d 35 98 1e 00 00 	lea    0x1e98(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  4027a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4027a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4027aa:	e8 11 ec ff ff       	call   4013c0 <__printf_chk@plt>
  4027af:	89 de                	mov    %ebx,%esi
  4027b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4027b6:	e8 0e fd ff ff       	call   4024c9 <notify_server>
  4027bb:	e9 74 ff ff ff       	jmp    402734 <validate+0x4f>

00000000004027c0 <fail>:
  4027c0:	f3 0f 1e fa          	endbr64 
  4027c4:	48 83 ec 08          	sub    $0x8,%rsp
  4027c8:	83 3d 59 4d 00 00 00 	cmpl   $0x0,0x4d59(%rip)        # 407528 <is_checker>
  4027cf:	75 11                	jne    4027e2 <fail+0x22>
  4027d1:	89 fe                	mov    %edi,%esi
  4027d3:	bf 00 00 00 00       	mov    $0x0,%edi
  4027d8:	e8 ec fc ff ff       	call   4024c9 <notify_server>
  4027dd:	48 83 c4 08          	add    $0x8,%rsp
  4027e1:	c3                   	ret    
  4027e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e7:	e8 49 fc ff ff       	call   402435 <check_fail>

00000000004027ec <bushandler>:
  4027ec:	f3 0f 1e fa          	endbr64 
  4027f0:	50                   	push   %rax
  4027f1:	58                   	pop    %rax
  4027f2:	48 83 ec 08          	sub    $0x8,%rsp
  4027f6:	83 3d 2b 4d 00 00 00 	cmpl   $0x0,0x4d2b(%rip)        # 407528 <is_checker>
  4027fd:	74 16                	je     402815 <bushandler+0x29>
  4027ff:	48 8d 3d cd 1c 00 00 	lea    0x1ccd(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  402806:	e8 a5 ea ff ff       	call   4012b0 <puts@plt>
  40280b:	b8 00 00 00 00       	mov    $0x0,%eax
  402810:	e8 20 fc ff ff       	call   402435 <check_fail>
  402815:	48 8d 3d 54 1e 00 00 	lea    0x1e54(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  40281c:	e8 8f ea ff ff       	call   4012b0 <puts@plt>
  402821:	48 8d 3d b5 1c 00 00 	lea    0x1cb5(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402828:	e8 83 ea ff ff       	call   4012b0 <puts@plt>
  40282d:	be 00 00 00 00       	mov    $0x0,%esi
  402832:	bf 00 00 00 00       	mov    $0x0,%edi
  402837:	e8 8d fc ff ff       	call   4024c9 <notify_server>
  40283c:	bf 01 00 00 00       	mov    $0x1,%edi
  402841:	e8 ca eb ff ff       	call   401410 <exit@plt>

0000000000402846 <seghandler>:
  402846:	f3 0f 1e fa          	endbr64 
  40284a:	50                   	push   %rax
  40284b:	58                   	pop    %rax
  40284c:	48 83 ec 08          	sub    $0x8,%rsp
  402850:	83 3d d1 4c 00 00 00 	cmpl   $0x0,0x4cd1(%rip)        # 407528 <is_checker>
  402857:	74 16                	je     40286f <seghandler+0x29>
  402859:	48 8d 3d 93 1c 00 00 	lea    0x1c93(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402860:	e8 4b ea ff ff       	call   4012b0 <puts@plt>
  402865:	b8 00 00 00 00       	mov    $0x0,%eax
  40286a:	e8 c6 fb ff ff       	call   402435 <check_fail>
  40286f:	48 8d 3d 1a 1e 00 00 	lea    0x1e1a(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  402876:	e8 35 ea ff ff       	call   4012b0 <puts@plt>
  40287b:	48 8d 3d 5b 1c 00 00 	lea    0x1c5b(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402882:	e8 29 ea ff ff       	call   4012b0 <puts@plt>
  402887:	be 00 00 00 00       	mov    $0x0,%esi
  40288c:	bf 00 00 00 00       	mov    $0x0,%edi
  402891:	e8 33 fc ff ff       	call   4024c9 <notify_server>
  402896:	bf 01 00 00 00       	mov    $0x1,%edi
  40289b:	e8 70 eb ff ff       	call   401410 <exit@plt>

00000000004028a0 <illegalhandler>:
  4028a0:	f3 0f 1e fa          	endbr64 
  4028a4:	50                   	push   %rax
  4028a5:	58                   	pop    %rax
  4028a6:	48 83 ec 08          	sub    $0x8,%rsp
  4028aa:	83 3d 77 4c 00 00 00 	cmpl   $0x0,0x4c77(%rip)        # 407528 <is_checker>
  4028b1:	74 16                	je     4028c9 <illegalhandler+0x29>
  4028b3:	48 8d 3d 4c 1c 00 00 	lea    0x1c4c(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  4028ba:	e8 f1 e9 ff ff       	call   4012b0 <puts@plt>
  4028bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c4:	e8 6c fb ff ff       	call   402435 <check_fail>
  4028c9:	48 8d 3d e8 1d 00 00 	lea    0x1de8(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4028d0:	e8 db e9 ff ff       	call   4012b0 <puts@plt>
  4028d5:	48 8d 3d 01 1c 00 00 	lea    0x1c01(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4028dc:	e8 cf e9 ff ff       	call   4012b0 <puts@plt>
  4028e1:	be 00 00 00 00       	mov    $0x0,%esi
  4028e6:	bf 00 00 00 00       	mov    $0x0,%edi
  4028eb:	e8 d9 fb ff ff       	call   4024c9 <notify_server>
  4028f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4028f5:	e8 16 eb ff ff       	call   401410 <exit@plt>

00000000004028fa <sigalrmhandler>:
  4028fa:	f3 0f 1e fa          	endbr64 
  4028fe:	50                   	push   %rax
  4028ff:	58                   	pop    %rax
  402900:	48 83 ec 08          	sub    $0x8,%rsp
  402904:	83 3d 1d 4c 00 00 00 	cmpl   $0x0,0x4c1d(%rip)        # 407528 <is_checker>
  40290b:	74 16                	je     402923 <sigalrmhandler+0x29>
  40290d:	48 8d 3d 06 1c 00 00 	lea    0x1c06(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  402914:	e8 97 e9 ff ff       	call   4012b0 <puts@plt>
  402919:	b8 00 00 00 00       	mov    $0x0,%eax
  40291e:	e8 12 fb ff ff       	call   402435 <check_fail>
  402923:	ba 02 00 00 00       	mov    $0x2,%edx
  402928:	48 8d 35 b9 1d 00 00 	lea    0x1db9(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  40292f:	bf 01 00 00 00       	mov    $0x1,%edi
  402934:	b8 00 00 00 00       	mov    $0x0,%eax
  402939:	e8 82 ea ff ff       	call   4013c0 <__printf_chk@plt>
  40293e:	be 00 00 00 00       	mov    $0x0,%esi
  402943:	bf 00 00 00 00       	mov    $0x0,%edi
  402948:	e8 7c fb ff ff       	call   4024c9 <notify_server>
  40294d:	bf 01 00 00 00       	mov    $0x1,%edi
  402952:	e8 b9 ea ff ff       	call   401410 <exit@plt>

0000000000402957 <__stack_chk_fail>:
  402957:	f3 0f 1e fa          	endbr64 
  40295b:	50                   	push   %rax
  40295c:	58                   	pop    %rax
  40295d:	48 83 ec 08          	sub    $0x8,%rsp
  402961:	83 3d c0 4b 00 00 00 	cmpl   $0x0,0x4bc0(%rip)        # 407528 <is_checker>
  402968:	74 16                	je     402980 <__stack_chk_fail+0x29>
  40296a:	48 8d 3d b1 1b 00 00 	lea    0x1bb1(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402971:	e8 3a e9 ff ff       	call   4012b0 <puts@plt>
  402976:	b8 00 00 00 00       	mov    $0x0,%eax
  40297b:	e8 b5 fa ff ff       	call   402435 <check_fail>
  402980:	48 8d 3d 99 1d 00 00 	lea    0x1d99(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402987:	e8 24 e9 ff ff       	call   4012b0 <puts@plt>
  40298c:	48 8d 3d 4a 1b 00 00 	lea    0x1b4a(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402993:	e8 18 e9 ff ff       	call   4012b0 <puts@plt>
  402998:	be 00 00 00 00       	mov    $0x0,%esi
  40299d:	bf 00 00 00 00       	mov    $0x0,%edi
  4029a2:	e8 22 fb ff ff       	call   4024c9 <notify_server>
  4029a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4029ac:	e8 5f ea ff ff       	call   401410 <exit@plt>

00000000004029b1 <launch>:
  4029b1:	f3 0f 1e fa          	endbr64 
  4029b5:	55                   	push   %rbp
  4029b6:	48 89 e5             	mov    %rsp,%rbp
  4029b9:	53                   	push   %rbx
  4029ba:	48 83 ec 18          	sub    $0x18,%rsp
  4029be:	48 89 fa             	mov    %rdi,%rdx
  4029c1:	89 f3                	mov    %esi,%ebx
  4029c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029ca:	00 00 
  4029cc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4029d0:	31 c0                	xor    %eax,%eax
  4029d2:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4029d6:	48 89 c1             	mov    %rax,%rcx
  4029d9:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4029dd:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4029e3:	48 89 e6             	mov    %rsp,%rsi
  4029e6:	48 29 c6             	sub    %rax,%rsi
  4029e9:	48 89 f0             	mov    %rsi,%rax
  4029ec:	48 39 c4             	cmp    %rax,%rsp
  4029ef:	74 12                	je     402a03 <launch+0x52>
  4029f1:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4029f8:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4029ff:	00 00 
  402a01:	eb e9                	jmp    4029ec <launch+0x3b>
  402a03:	48 89 c8             	mov    %rcx,%rax
  402a06:	25 ff 0f 00 00       	and    $0xfff,%eax
  402a0b:	48 29 c4             	sub    %rax,%rsp
  402a0e:	48 85 c0             	test   %rax,%rax
  402a11:	74 06                	je     402a19 <launch+0x68>
  402a13:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402a19:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402a1e:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402a22:	be f4 00 00 00       	mov    $0xf4,%esi
  402a27:	e8 b4 e8 ff ff       	call   4012e0 <memset@plt>
  402a2c:	48 8b 05 8d 4a 00 00 	mov    0x4a8d(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402a33:	48 39 05 d6 4a 00 00 	cmp    %rax,0x4ad6(%rip)        # 407510 <infile>
  402a3a:	74 42                	je     402a7e <launch+0xcd>
  402a3c:	c7 05 d6 4a 00 00 00 	movl   $0x0,0x4ad6(%rip)        # 40751c <vlevel>
  402a43:	00 00 00 
  402a46:	85 db                	test   %ebx,%ebx
  402a48:	75 4c                	jne    402a96 <launch+0xe5>
  402a4a:	b8 00 00 00 00       	mov    $0x0,%eax
  402a4f:	e8 92 f6 ff ff       	call   4020e6 <test>
  402a54:	83 3d cd 4a 00 00 00 	cmpl   $0x0,0x4acd(%rip)        # 407528 <is_checker>
  402a5b:	75 45                	jne    402aa2 <launch+0xf1>
  402a5d:	48 8d 3d e5 1a 00 00 	lea    0x1ae5(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402a64:	e8 47 e8 ff ff       	call   4012b0 <puts@plt>
  402a69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a6d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402a74:	00 00 
  402a76:	75 40                	jne    402ab8 <launch+0x107>
  402a78:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402a7c:	c9                   	leave  
  402a7d:	c3                   	ret    
  402a7e:	48 8d 35 ac 1a 00 00 	lea    0x1aac(%rip),%rsi        # 404531 <_IO_stdin_used+0x531>
  402a85:	bf 01 00 00 00       	mov    $0x1,%edi
  402a8a:	b8 00 00 00 00       	mov    $0x0,%eax
  402a8f:	e8 2c e9 ff ff       	call   4013c0 <__printf_chk@plt>
  402a94:	eb a6                	jmp    402a3c <launch+0x8b>
  402a96:	b8 00 00 00 00       	mov    $0x0,%eax
  402a9b:	e8 75 f6 ff ff       	call   402115 <test2>
  402aa0:	eb b2                	jmp    402a54 <launch+0xa3>
  402aa2:	48 8d 3d 95 1a 00 00 	lea    0x1a95(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402aa9:	e8 02 e8 ff ff       	call   4012b0 <puts@plt>
  402aae:	b8 00 00 00 00       	mov    $0x0,%eax
  402ab3:	e8 7d f9 ff ff       	call   402435 <check_fail>
  402ab8:	e8 9a fe ff ff       	call   402957 <__stack_chk_fail>

0000000000402abd <stable_launch>:
  402abd:	f3 0f 1e fa          	endbr64 
  402ac1:	55                   	push   %rbp
  402ac2:	53                   	push   %rbx
  402ac3:	48 83 ec 08          	sub    $0x8,%rsp
  402ac7:	89 f5                	mov    %esi,%ebp
  402ac9:	48 89 3d 38 4a 00 00 	mov    %rdi,0x4a38(%rip)        # 407508 <global_offset>
  402ad0:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402ad6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402adc:	b9 32 01 00 00       	mov    $0x132,%ecx
  402ae1:	ba 07 00 00 00       	mov    $0x7,%edx
  402ae6:	be 00 00 10 00       	mov    $0x100000,%esi
  402aeb:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402af0:	e8 db e7 ff ff       	call   4012d0 <mmap@plt>
  402af5:	48 89 c3             	mov    %rax,%rbx
  402af8:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402afe:	75 4a                	jne    402b4a <stable_launch+0x8d>
  402b00:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402b07:	48 89 15 42 56 00 00 	mov    %rdx,0x5642(%rip)        # 408150 <stack_top>
  402b0e:	48 89 e0             	mov    %rsp,%rax
  402b11:	48 89 d4             	mov    %rdx,%rsp
  402b14:	48 89 c2             	mov    %rax,%rdx
  402b17:	48 89 15 e2 49 00 00 	mov    %rdx,0x49e2(%rip)        # 407500 <global_save_stack>
  402b1e:	89 ee                	mov    %ebp,%esi
  402b20:	48 8b 3d e1 49 00 00 	mov    0x49e1(%rip),%rdi        # 407508 <global_offset>
  402b27:	e8 85 fe ff ff       	call   4029b1 <launch>
  402b2c:	48 8b 05 cd 49 00 00 	mov    0x49cd(%rip),%rax        # 407500 <global_save_stack>
  402b33:	48 89 c4             	mov    %rax,%rsp
  402b36:	be 00 00 10 00       	mov    $0x100000,%esi
  402b3b:	48 89 df             	mov    %rbx,%rdi
  402b3e:	e8 6d e8 ff ff       	call   4013b0 <munmap@plt>
  402b43:	48 83 c4 08          	add    $0x8,%rsp
  402b47:	5b                   	pop    %rbx
  402b48:	5d                   	pop    %rbp
  402b49:	c3                   	ret    
  402b4a:	be 00 00 10 00       	mov    $0x100000,%esi
  402b4f:	48 89 c7             	mov    %rax,%rdi
  402b52:	e8 59 e8 ff ff       	call   4013b0 <munmap@plt>
  402b57:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402b5c:	48 8d 15 e5 1b 00 00 	lea    0x1be5(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402b63:	be 01 00 00 00       	mov    $0x1,%esi
  402b68:	48 8b 3d 71 49 00 00 	mov    0x4971(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402b6f:	b8 00 00 00 00       	mov    $0x0,%eax
  402b74:	e8 b7 e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402b79:	bf 01 00 00 00       	mov    $0x1,%edi
  402b7e:	e8 8d e8 ff ff       	call   401410 <exit@plt>

0000000000402b83 <rio_readinitb>:
  402b83:	89 37                	mov    %esi,(%rdi)
  402b85:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402b8c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402b90:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402b94:	c3                   	ret    

0000000000402b95 <sigalrm_handler>:
  402b95:	f3 0f 1e fa          	endbr64 
  402b99:	50                   	push   %rax
  402b9a:	58                   	pop    %rax
  402b9b:	48 83 ec 08          	sub    $0x8,%rsp
  402b9f:	b9 00 00 00 00       	mov    $0x0,%ecx
  402ba4:	48 8d 15 d5 1b 00 00 	lea    0x1bd5(%rip),%rdx        # 404780 <trans_char+0x10>
  402bab:	be 01 00 00 00       	mov    $0x1,%esi
  402bb0:	48 8b 3d 29 49 00 00 	mov    0x4929(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402bb7:	b8 00 00 00 00       	mov    $0x0,%eax
  402bbc:	e8 6f e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402bc1:	bf 01 00 00 00       	mov    $0x1,%edi
  402bc6:	e8 45 e8 ff ff       	call   401410 <exit@plt>

0000000000402bcb <rio_writen>:
  402bcb:	41 55                	push   %r13
  402bcd:	41 54                	push   %r12
  402bcf:	55                   	push   %rbp
  402bd0:	53                   	push   %rbx
  402bd1:	48 83 ec 08          	sub    $0x8,%rsp
  402bd5:	41 89 fc             	mov    %edi,%r12d
  402bd8:	48 89 f5             	mov    %rsi,%rbp
  402bdb:	49 89 d5             	mov    %rdx,%r13
  402bde:	48 89 d3             	mov    %rdx,%rbx
  402be1:	eb 06                	jmp    402be9 <rio_writen+0x1e>
  402be3:	48 29 c3             	sub    %rax,%rbx
  402be6:	48 01 c5             	add    %rax,%rbp
  402be9:	48 85 db             	test   %rbx,%rbx
  402bec:	74 24                	je     402c12 <rio_writen+0x47>
  402bee:	48 89 da             	mov    %rbx,%rdx
  402bf1:	48 89 ee             	mov    %rbp,%rsi
  402bf4:	44 89 e7             	mov    %r12d,%edi
  402bf7:	e8 c4 e6 ff ff       	call   4012c0 <write@plt>
  402bfc:	48 85 c0             	test   %rax,%rax
  402bff:	7f e2                	jg     402be3 <rio_writen+0x18>
  402c01:	e8 5a e6 ff ff       	call   401260 <__errno_location@plt>
  402c06:	83 38 04             	cmpl   $0x4,(%rax)
  402c09:	75 15                	jne    402c20 <rio_writen+0x55>
  402c0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402c10:	eb d1                	jmp    402be3 <rio_writen+0x18>
  402c12:	4c 89 e8             	mov    %r13,%rax
  402c15:	48 83 c4 08          	add    $0x8,%rsp
  402c19:	5b                   	pop    %rbx
  402c1a:	5d                   	pop    %rbp
  402c1b:	41 5c                	pop    %r12
  402c1d:	41 5d                	pop    %r13
  402c1f:	c3                   	ret    
  402c20:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c27:	eb ec                	jmp    402c15 <rio_writen+0x4a>

0000000000402c29 <rio_read>:
  402c29:	41 55                	push   %r13
  402c2b:	41 54                	push   %r12
  402c2d:	55                   	push   %rbp
  402c2e:	53                   	push   %rbx
  402c2f:	48 83 ec 08          	sub    $0x8,%rsp
  402c33:	48 89 fb             	mov    %rdi,%rbx
  402c36:	49 89 f5             	mov    %rsi,%r13
  402c39:	49 89 d4             	mov    %rdx,%r12
  402c3c:	eb 17                	jmp    402c55 <rio_read+0x2c>
  402c3e:	e8 1d e6 ff ff       	call   401260 <__errno_location@plt>
  402c43:	83 38 04             	cmpl   $0x4,(%rax)
  402c46:	74 0d                	je     402c55 <rio_read+0x2c>
  402c48:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c4f:	eb 54                	jmp    402ca5 <rio_read+0x7c>
  402c51:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402c55:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402c58:	85 ed                	test   %ebp,%ebp
  402c5a:	7f 23                	jg     402c7f <rio_read+0x56>
  402c5c:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402c60:	8b 3b                	mov    (%rbx),%edi
  402c62:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c67:	48 89 ee             	mov    %rbp,%rsi
  402c6a:	e8 a1 e6 ff ff       	call   401310 <read@plt>
  402c6f:	89 43 04             	mov    %eax,0x4(%rbx)
  402c72:	85 c0                	test   %eax,%eax
  402c74:	78 c8                	js     402c3e <rio_read+0x15>
  402c76:	75 d9                	jne    402c51 <rio_read+0x28>
  402c78:	b8 00 00 00 00       	mov    $0x0,%eax
  402c7d:	eb 26                	jmp    402ca5 <rio_read+0x7c>
  402c7f:	89 e8                	mov    %ebp,%eax
  402c81:	4c 39 e0             	cmp    %r12,%rax
  402c84:	72 03                	jb     402c89 <rio_read+0x60>
  402c86:	44 89 e5             	mov    %r12d,%ebp
  402c89:	4c 63 e5             	movslq %ebp,%r12
  402c8c:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402c90:	4c 89 e2             	mov    %r12,%rdx
  402c93:	4c 89 ef             	mov    %r13,%rdi
  402c96:	e8 d5 e6 ff ff       	call   401370 <memcpy@plt>
  402c9b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402c9f:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402ca2:	4c 89 e0             	mov    %r12,%rax
  402ca5:	48 83 c4 08          	add    $0x8,%rsp
  402ca9:	5b                   	pop    %rbx
  402caa:	5d                   	pop    %rbp
  402cab:	41 5c                	pop    %r12
  402cad:	41 5d                	pop    %r13
  402caf:	c3                   	ret    

0000000000402cb0 <rio_readlineb>:
  402cb0:	41 55                	push   %r13
  402cb2:	41 54                	push   %r12
  402cb4:	55                   	push   %rbp
  402cb5:	53                   	push   %rbx
  402cb6:	48 83 ec 18          	sub    $0x18,%rsp
  402cba:	49 89 fd             	mov    %rdi,%r13
  402cbd:	48 89 f5             	mov    %rsi,%rbp
  402cc0:	49 89 d4             	mov    %rdx,%r12
  402cc3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cca:	00 00 
  402ccc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402cd1:	31 c0                	xor    %eax,%eax
  402cd3:	bb 01 00 00 00       	mov    $0x1,%ebx
  402cd8:	eb 18                	jmp    402cf2 <rio_readlineb+0x42>
  402cda:	85 c0                	test   %eax,%eax
  402cdc:	75 65                	jne    402d43 <rio_readlineb+0x93>
  402cde:	48 83 fb 01          	cmp    $0x1,%rbx
  402ce2:	75 3d                	jne    402d21 <rio_readlineb+0x71>
  402ce4:	b8 00 00 00 00       	mov    $0x0,%eax
  402ce9:	eb 3d                	jmp    402d28 <rio_readlineb+0x78>
  402ceb:	48 83 c3 01          	add    $0x1,%rbx
  402cef:	48 89 d5             	mov    %rdx,%rbp
  402cf2:	4c 39 e3             	cmp    %r12,%rbx
  402cf5:	73 2a                	jae    402d21 <rio_readlineb+0x71>
  402cf7:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402cfc:	ba 01 00 00 00       	mov    $0x1,%edx
  402d01:	4c 89 ef             	mov    %r13,%rdi
  402d04:	e8 20 ff ff ff       	call   402c29 <rio_read>
  402d09:	83 f8 01             	cmp    $0x1,%eax
  402d0c:	75 cc                	jne    402cda <rio_readlineb+0x2a>
  402d0e:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402d12:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402d17:	88 45 00             	mov    %al,0x0(%rbp)
  402d1a:	3c 0a                	cmp    $0xa,%al
  402d1c:	75 cd                	jne    402ceb <rio_readlineb+0x3b>
  402d1e:	48 89 d5             	mov    %rdx,%rbp
  402d21:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402d25:	48 89 d8             	mov    %rbx,%rax
  402d28:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402d2d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d34:	00 00 
  402d36:	75 14                	jne    402d4c <rio_readlineb+0x9c>
  402d38:	48 83 c4 18          	add    $0x18,%rsp
  402d3c:	5b                   	pop    %rbx
  402d3d:	5d                   	pop    %rbp
  402d3e:	41 5c                	pop    %r12
  402d40:	41 5d                	pop    %r13
  402d42:	c3                   	ret    
  402d43:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402d4a:	eb dc                	jmp    402d28 <rio_readlineb+0x78>
  402d4c:	e8 06 fc ff ff       	call   402957 <__stack_chk_fail>

0000000000402d51 <urlencode>:
  402d51:	41 54                	push   %r12
  402d53:	55                   	push   %rbp
  402d54:	53                   	push   %rbx
  402d55:	48 83 ec 10          	sub    $0x10,%rsp
  402d59:	48 89 fb             	mov    %rdi,%rbx
  402d5c:	48 89 f5             	mov    %rsi,%rbp
  402d5f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d66:	00 00 
  402d68:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402d6d:	31 c0                	xor    %eax,%eax
  402d6f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402d76:	f2 ae                	repnz scas %es:(%rdi),%al
  402d78:	48 f7 d1             	not    %rcx
  402d7b:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402d7e:	eb 0f                	jmp    402d8f <urlencode+0x3e>
  402d80:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402d84:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402d88:	48 83 c3 01          	add    $0x1,%rbx
  402d8c:	44 89 e0             	mov    %r12d,%eax
  402d8f:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402d93:	85 c0                	test   %eax,%eax
  402d95:	0f 84 a8 00 00 00    	je     402e43 <urlencode+0xf2>
  402d9b:	44 0f b6 03          	movzbl (%rbx),%r8d
  402d9f:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402da3:	0f 94 c2             	sete   %dl
  402da6:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402daa:	0f 94 c0             	sete   %al
  402dad:	08 c2                	or     %al,%dl
  402daf:	75 cf                	jne    402d80 <urlencode+0x2f>
  402db1:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402db5:	74 c9                	je     402d80 <urlencode+0x2f>
  402db7:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402dbb:	74 c3                	je     402d80 <urlencode+0x2f>
  402dbd:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402dc1:	3c 09                	cmp    $0x9,%al
  402dc3:	76 bb                	jbe    402d80 <urlencode+0x2f>
  402dc5:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402dc9:	3c 19                	cmp    $0x19,%al
  402dcb:	76 b3                	jbe    402d80 <urlencode+0x2f>
  402dcd:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402dd1:	3c 19                	cmp    $0x19,%al
  402dd3:	76 ab                	jbe    402d80 <urlencode+0x2f>
  402dd5:	41 80 f8 20          	cmp    $0x20,%r8b
  402dd9:	74 56                	je     402e31 <urlencode+0xe0>
  402ddb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402ddf:	3c 5f                	cmp    $0x5f,%al
  402de1:	0f 96 c2             	setbe  %dl
  402de4:	41 80 f8 09          	cmp    $0x9,%r8b
  402de8:	0f 94 c0             	sete   %al
  402deb:	08 c2                	or     %al,%dl
  402ded:	74 4f                	je     402e3e <urlencode+0xed>
  402def:	48 89 e7             	mov    %rsp,%rdi
  402df2:	45 0f b6 c0          	movzbl %r8b,%r8d
  402df6:	48 8d 0d 38 1a 00 00 	lea    0x1a38(%rip),%rcx        # 404835 <trans_char+0xc5>
  402dfd:	ba 08 00 00 00       	mov    $0x8,%edx
  402e02:	be 01 00 00 00       	mov    $0x1,%esi
  402e07:	b8 00 00 00 00       	mov    $0x0,%eax
  402e0c:	e8 3f e6 ff ff       	call   401450 <__sprintf_chk@plt>
  402e11:	0f b6 04 24          	movzbl (%rsp),%eax
  402e15:	88 45 00             	mov    %al,0x0(%rbp)
  402e18:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402e1d:	88 45 01             	mov    %al,0x1(%rbp)
  402e20:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402e25:	88 45 02             	mov    %al,0x2(%rbp)
  402e28:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402e2c:	e9 57 ff ff ff       	jmp    402d88 <urlencode+0x37>
  402e31:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402e35:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402e39:	e9 4a ff ff ff       	jmp    402d88 <urlencode+0x37>
  402e3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e43:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402e48:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402e4f:	00 00 
  402e51:	75 09                	jne    402e5c <urlencode+0x10b>
  402e53:	48 83 c4 10          	add    $0x10,%rsp
  402e57:	5b                   	pop    %rbx
  402e58:	5d                   	pop    %rbp
  402e59:	41 5c                	pop    %r12
  402e5b:	c3                   	ret    
  402e5c:	e8 f6 fa ff ff       	call   402957 <__stack_chk_fail>

0000000000402e61 <submitr>:
  402e61:	f3 0f 1e fa          	endbr64 
  402e65:	41 57                	push   %r15
  402e67:	41 56                	push   %r14
  402e69:	41 55                	push   %r13
  402e6b:	41 54                	push   %r12
  402e6d:	55                   	push   %rbp
  402e6e:	53                   	push   %rbx
  402e6f:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402e76:	ff 
  402e77:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402e7e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402e83:	4c 39 dc             	cmp    %r11,%rsp
  402e86:	75 ef                	jne    402e77 <submitr+0x16>
  402e88:	48 83 ec 68          	sub    $0x68,%rsp
  402e8c:	49 89 fc             	mov    %rdi,%r12
  402e8f:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402e93:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402e98:	49 89 cd             	mov    %rcx,%r13
  402e9b:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402ea0:	4d 89 ce             	mov    %r9,%r14
  402ea3:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402eaa:	00 
  402eab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402eb2:	00 00 
  402eb4:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402ebb:	00 
  402ebc:	31 c0                	xor    %eax,%eax
  402ebe:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402ec5:	00 
  402ec6:	ba 00 00 00 00       	mov    $0x0,%edx
  402ecb:	be 01 00 00 00       	mov    $0x1,%esi
  402ed0:	bf 02 00 00 00       	mov    $0x2,%edi
  402ed5:	e8 86 e5 ff ff       	call   401460 <socket@plt>
  402eda:	85 c0                	test   %eax,%eax
  402edc:	0f 88 a5 02 00 00    	js     403187 <submitr+0x326>
  402ee2:	89 c3                	mov    %eax,%ebx
  402ee4:	4c 89 e7             	mov    %r12,%rdi
  402ee7:	e8 54 e4 ff ff       	call   401340 <gethostbyname@plt>
  402eec:	48 85 c0             	test   %rax,%rax
  402eef:	0f 84 de 02 00 00    	je     4031d3 <submitr+0x372>
  402ef5:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402efa:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402f01:	00 00 
  402f03:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402f0a:	00 00 
  402f0c:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402f13:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402f17:	48 8b 40 18          	mov    0x18(%rax),%rax
  402f1b:	48 8b 30             	mov    (%rax),%rsi
  402f1e:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402f23:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402f28:	e8 23 e4 ff ff       	call   401350 <__memmove_chk@plt>
  402f2d:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402f32:	66 c1 c6 08          	rol    $0x8,%si
  402f36:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402f3b:	ba 10 00 00 00       	mov    $0x10,%edx
  402f40:	4c 89 fe             	mov    %r15,%rsi
  402f43:	89 df                	mov    %ebx,%edi
  402f45:	e8 d6 e4 ff ff       	call   401420 <connect@plt>
  402f4a:	85 c0                	test   %eax,%eax
  402f4c:	0f 88 f7 02 00 00    	js     403249 <submitr+0x3e8>
  402f52:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402f59:	b8 00 00 00 00       	mov    $0x0,%eax
  402f5e:	48 89 f1             	mov    %rsi,%rcx
  402f61:	4c 89 f7             	mov    %r14,%rdi
  402f64:	f2 ae                	repnz scas %es:(%rdi),%al
  402f66:	48 89 ca             	mov    %rcx,%rdx
  402f69:	48 f7 d2             	not    %rdx
  402f6c:	48 89 f1             	mov    %rsi,%rcx
  402f6f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402f74:	f2 ae                	repnz scas %es:(%rdi),%al
  402f76:	48 f7 d1             	not    %rcx
  402f79:	49 89 c8             	mov    %rcx,%r8
  402f7c:	48 89 f1             	mov    %rsi,%rcx
  402f7f:	4c 89 ef             	mov    %r13,%rdi
  402f82:	f2 ae                	repnz scas %es:(%rdi),%al
  402f84:	48 f7 d1             	not    %rcx
  402f87:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402f8c:	48 89 f1             	mov    %rsi,%rcx
  402f8f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402f94:	f2 ae                	repnz scas %es:(%rdi),%al
  402f96:	48 89 c8             	mov    %rcx,%rax
  402f99:	48 f7 d0             	not    %rax
  402f9c:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402fa1:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402fa6:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402fad:	00 
  402fae:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402fb4:	0f 87 f7 02 00 00    	ja     4032b1 <submitr+0x450>
  402fba:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402fc1:	00 
  402fc2:	b9 00 04 00 00       	mov    $0x400,%ecx
  402fc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402fcc:	48 89 f7             	mov    %rsi,%rdi
  402fcf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402fd2:	4c 89 f7             	mov    %r14,%rdi
  402fd5:	e8 77 fd ff ff       	call   402d51 <urlencode>
  402fda:	85 c0                	test   %eax,%eax
  402fdc:	0f 88 42 03 00 00    	js     403324 <submitr+0x4c3>
  402fe2:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402fe9:	00 
  402fea:	48 83 ec 08          	sub    $0x8,%rsp
  402fee:	41 54                	push   %r12
  402ff0:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402ff7:	00 
  402ff8:	50                   	push   %rax
  402ff9:	41 55                	push   %r13
  402ffb:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  403000:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  403005:	48 8d 0d 9c 17 00 00 	lea    0x179c(%rip),%rcx        # 4047a8 <trans_char+0x38>
  40300c:	ba 00 20 00 00       	mov    $0x2000,%edx
  403011:	be 01 00 00 00       	mov    $0x1,%esi
  403016:	4c 89 ff             	mov    %r15,%rdi
  403019:	b8 00 00 00 00       	mov    $0x0,%eax
  40301e:	e8 2d e4 ff ff       	call   401450 <__sprintf_chk@plt>
  403023:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40302a:	b8 00 00 00 00       	mov    $0x0,%eax
  40302f:	4c 89 ff             	mov    %r15,%rdi
  403032:	f2 ae                	repnz scas %es:(%rdi),%al
  403034:	48 f7 d1             	not    %rcx
  403037:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40303b:	48 83 c4 20          	add    $0x20,%rsp
  40303f:	4c 89 fe             	mov    %r15,%rsi
  403042:	89 df                	mov    %ebx,%edi
  403044:	e8 82 fb ff ff       	call   402bcb <rio_writen>
  403049:	48 85 c0             	test   %rax,%rax
  40304c:	0f 88 5d 03 00 00    	js     4033af <submitr+0x54e>
  403052:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  403057:	89 de                	mov    %ebx,%esi
  403059:	4c 89 e7             	mov    %r12,%rdi
  40305c:	e8 22 fb ff ff       	call   402b83 <rio_readinitb>
  403061:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403068:	00 
  403069:	ba 00 20 00 00       	mov    $0x2000,%edx
  40306e:	4c 89 e7             	mov    %r12,%rdi
  403071:	e8 3a fc ff ff       	call   402cb0 <rio_readlineb>
  403076:	48 85 c0             	test   %rax,%rax
  403079:	0f 8e 9c 03 00 00    	jle    40341b <submitr+0x5ba>
  40307f:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  403084:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  40308b:	00 
  40308c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  403093:	00 
  403094:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40309b:	00 
  40309c:	48 8d 35 99 17 00 00 	lea    0x1799(%rip),%rsi        # 40483c <trans_char+0xcc>
  4030a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4030a8:	e8 f3 e2 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  4030ad:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030b4:	00 
  4030b5:	b9 03 00 00 00       	mov    $0x3,%ecx
  4030ba:	48 8d 3d 92 17 00 00 	lea    0x1792(%rip),%rdi        # 404853 <trans_char+0xe3>
  4030c1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4030c3:	0f 97 c0             	seta   %al
  4030c6:	1c 00                	sbb    $0x0,%al
  4030c8:	84 c0                	test   %al,%al
  4030ca:	0f 84 cb 03 00 00    	je     40349b <submitr+0x63a>
  4030d0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030d7:	00 
  4030d8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4030dd:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030e2:	e8 c9 fb ff ff       	call   402cb0 <rio_readlineb>
  4030e7:	48 85 c0             	test   %rax,%rax
  4030ea:	7f c1                	jg     4030ad <submitr+0x24c>
  4030ec:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030f3:	3a 20 43 
  4030f6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030fd:	20 75 6e 
  403100:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403104:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403108:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40310f:	74 6f 20 
  403112:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  403119:	68 65 61 
  40311c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403120:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403124:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40312b:	66 72 6f 
  40312e:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  403135:	6f 6c 61 
  403138:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40313c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403140:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  403147:	76 65 72 
  40314a:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40314e:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  403152:	89 df                	mov    %ebx,%edi
  403154:	e8 a7 e1 ff ff       	call   401300 <close@plt>
  403159:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40315e:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  403165:	00 
  403166:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40316d:	00 00 
  40316f:	0f 85 96 04 00 00    	jne    40360b <submitr+0x7aa>
  403175:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40317c:	5b                   	pop    %rbx
  40317d:	5d                   	pop    %rbp
  40317e:	41 5c                	pop    %r12
  403180:	41 5d                	pop    %r13
  403182:	41 5e                	pop    %r14
  403184:	41 5f                	pop    %r15
  403186:	c3                   	ret    
  403187:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40318e:	3a 20 43 
  403191:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403198:	20 75 6e 
  40319b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40319f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031a3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031aa:	74 6f 20 
  4031ad:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4031b4:	65 20 73 
  4031b7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031bb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031bf:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4031c6:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4031cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d1:	eb 8b                	jmp    40315e <submitr+0x2fd>
  4031d3:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4031da:	3a 20 44 
  4031dd:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4031e4:	20 75 6e 
  4031e7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031eb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031ef:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031f6:	74 6f 20 
  4031f9:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403200:	76 65 20 
  403203:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403207:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40320b:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403212:	61 62 20 
  403215:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  40321c:	72 20 61 
  40321f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403223:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403227:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  40322e:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  403234:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  403238:	89 df                	mov    %ebx,%edi
  40323a:	e8 c1 e0 ff ff       	call   401300 <close@plt>
  40323f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403244:	e9 15 ff ff ff       	jmp    40315e <submitr+0x2fd>
  403249:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403250:	3a 20 55 
  403253:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40325a:	20 74 6f 
  40325d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403261:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403265:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40326c:	65 63 74 
  40326f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403276:	68 65 20 
  403279:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40327d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403281:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403288:	61 62 20 
  40328b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40328f:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403296:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  40329c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4032a0:	89 df                	mov    %ebx,%edi
  4032a2:	e8 59 e0 ff ff       	call   401300 <close@plt>
  4032a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ac:	e9 ad fe ff ff       	jmp    40315e <submitr+0x2fd>
  4032b1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4032b8:	3a 20 52 
  4032bb:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4032c2:	20 73 74 
  4032c5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032c9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032cd:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4032d4:	74 6f 6f 
  4032d7:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4032de:	65 2e 20 
  4032e1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032e5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032e9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4032f0:	61 73 65 
  4032f3:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4032fa:	49 54 52 
  4032fd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403301:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403305:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40330c:	55 46 00 
  40330f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403313:	89 df                	mov    %ebx,%edi
  403315:	e8 e6 df ff ff       	call   401300 <close@plt>
  40331a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40331f:	e9 3a fe ff ff       	jmp    40315e <submitr+0x2fd>
  403324:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40332b:	3a 20 52 
  40332e:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403335:	20 73 74 
  403338:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40333c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403340:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403347:	63 6f 6e 
  40334a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403351:	20 61 6e 
  403354:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403358:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40335c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403363:	67 61 6c 
  403366:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40336d:	6e 70 72 
  403370:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403374:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403378:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40337f:	6c 65 20 
  403382:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403389:	63 74 65 
  40338c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403390:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403394:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40339a:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  40339e:	89 df                	mov    %ebx,%edi
  4033a0:	e8 5b df ff ff       	call   401300 <close@plt>
  4033a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033aa:	e9 af fd ff ff       	jmp    40315e <submitr+0x2fd>
  4033af:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4033b6:	3a 20 43 
  4033b9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4033c0:	20 75 6e 
  4033c3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033c7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033cb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033d2:	74 6f 20 
  4033d5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4033dc:	20 74 6f 
  4033df:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033e3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033e7:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4033ee:	41 75 74 
  4033f1:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4033f8:	73 65 72 
  4033fb:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033ff:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403403:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  40340a:	89 df                	mov    %ebx,%edi
  40340c:	e8 ef de ff ff       	call   401300 <close@plt>
  403411:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403416:	e9 43 fd ff ff       	jmp    40315e <submitr+0x2fd>
  40341b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403422:	3a 20 43 
  403425:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40342c:	20 75 6e 
  40342f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403433:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403437:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40343e:	74 6f 20 
  403441:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403448:	66 69 72 
  40344b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40344f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403453:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40345a:	61 64 65 
  40345d:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403464:	6d 20 41 
  403467:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40346b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40346f:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403476:	62 20 73 
  403479:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40347d:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  403484:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  40348a:	89 df                	mov    %ebx,%edi
  40348c:	e8 6f de ff ff       	call   401300 <close@plt>
  403491:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403496:	e9 c3 fc ff ff       	jmp    40315e <submitr+0x2fd>
  40349b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4034a2:	00 
  4034a3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4034a8:	ba 00 20 00 00       	mov    $0x2000,%edx
  4034ad:	e8 fe f7 ff ff       	call   402cb0 <rio_readlineb>
  4034b2:	48 85 c0             	test   %rax,%rax
  4034b5:	0f 8e 96 00 00 00    	jle    403551 <submitr+0x6f0>
  4034bb:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4034c0:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4034c7:	0f 85 05 01 00 00    	jne    4035d2 <submitr+0x771>
  4034cd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4034d4:	00 
  4034d5:	48 89 ef             	mov    %rbp,%rdi
  4034d8:	e8 c3 dd ff ff       	call   4012a0 <strcpy@plt>
  4034dd:	89 df                	mov    %ebx,%edi
  4034df:	e8 1c de ff ff       	call   401300 <close@plt>
  4034e4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4034e9:	48 8d 3d 5d 13 00 00 	lea    0x135d(%rip),%rdi        # 40484d <trans_char+0xdd>
  4034f0:	48 89 ee             	mov    %rbp,%rsi
  4034f3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4034f5:	0f 97 c0             	seta   %al
  4034f8:	1c 00                	sbb    $0x0,%al
  4034fa:	0f be c0             	movsbl %al,%eax
  4034fd:	85 c0                	test   %eax,%eax
  4034ff:	0f 84 59 fc ff ff    	je     40315e <submitr+0x2fd>
  403505:	b9 05 00 00 00       	mov    $0x5,%ecx
  40350a:	48 8d 3d 40 13 00 00 	lea    0x1340(%rip),%rdi        # 404851 <trans_char+0xe1>
  403511:	48 89 ee             	mov    %rbp,%rsi
  403514:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403516:	0f 97 c0             	seta   %al
  403519:	1c 00                	sbb    $0x0,%al
  40351b:	0f be c0             	movsbl %al,%eax
  40351e:	85 c0                	test   %eax,%eax
  403520:	0f 84 38 fc ff ff    	je     40315e <submitr+0x2fd>
  403526:	b9 03 00 00 00       	mov    $0x3,%ecx
  40352b:	48 8d 3d 24 13 00 00 	lea    0x1324(%rip),%rdi        # 404856 <trans_char+0xe6>
  403532:	48 89 ee             	mov    %rbp,%rsi
  403535:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403537:	0f 97 c0             	seta   %al
  40353a:	1c 00                	sbb    $0x0,%al
  40353c:	0f be c0             	movsbl %al,%eax
  40353f:	85 c0                	test   %eax,%eax
  403541:	0f 84 17 fc ff ff    	je     40315e <submitr+0x2fd>
  403547:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40354c:	e9 0d fc ff ff       	jmp    40315e <submitr+0x2fd>
  403551:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403558:	3a 20 43 
  40355b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403562:	20 75 6e 
  403565:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403569:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40356d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403574:	74 6f 20 
  403577:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40357e:	73 74 61 
  403581:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403585:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403589:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403590:	65 73 73 
  403593:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40359a:	72 6f 6d 
  40359d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4035a1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4035a5:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4035ac:	6c 61 62 
  4035af:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4035b6:	65 72 00 
  4035b9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4035bd:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4035c1:	89 df                	mov    %ebx,%edi
  4035c3:	e8 38 dd ff ff       	call   401300 <close@plt>
  4035c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035cd:	e9 8c fb ff ff       	jmp    40315e <submitr+0x2fd>
  4035d2:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4035d9:	00 
  4035da:	48 8d 0d 27 12 00 00 	lea    0x1227(%rip),%rcx        # 404808 <trans_char+0x98>
  4035e1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4035e8:	be 01 00 00 00       	mov    $0x1,%esi
  4035ed:	48 89 ef             	mov    %rbp,%rdi
  4035f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f5:	e8 56 de ff ff       	call   401450 <__sprintf_chk@plt>
  4035fa:	89 df                	mov    %ebx,%edi
  4035fc:	e8 ff dc ff ff       	call   401300 <close@plt>
  403601:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403606:	e9 53 fb ff ff       	jmp    40315e <submitr+0x2fd>
  40360b:	e8 47 f3 ff ff       	call   402957 <__stack_chk_fail>

0000000000403610 <init_timeout>:
  403610:	f3 0f 1e fa          	endbr64 
  403614:	85 ff                	test   %edi,%edi
  403616:	74 26                	je     40363e <init_timeout+0x2e>
  403618:	53                   	push   %rbx
  403619:	89 fb                	mov    %edi,%ebx
  40361b:	78 1a                	js     403637 <init_timeout+0x27>
  40361d:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402b95 <sigalrm_handler>
  403624:	bf 0e 00 00 00       	mov    $0xe,%edi
  403629:	e8 02 dd ff ff       	call   401330 <signal@plt>
  40362e:	89 df                	mov    %ebx,%edi
  403630:	e8 bb dc ff ff       	call   4012f0 <alarm@plt>
  403635:	5b                   	pop    %rbx
  403636:	c3                   	ret    
  403637:	bb 00 00 00 00       	mov    $0x0,%ebx
  40363c:	eb df                	jmp    40361d <init_timeout+0xd>
  40363e:	c3                   	ret    

000000000040363f <init_driver>:
  40363f:	f3 0f 1e fa          	endbr64 
  403643:	41 54                	push   %r12
  403645:	55                   	push   %rbp
  403646:	53                   	push   %rbx
  403647:	48 83 ec 20          	sub    $0x20,%rsp
  40364b:	48 89 fd             	mov    %rdi,%rbp
  40364e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403655:	00 00 
  403657:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40365c:	31 c0                	xor    %eax,%eax
  40365e:	be 01 00 00 00       	mov    $0x1,%esi
  403663:	bf 0d 00 00 00       	mov    $0xd,%edi
  403668:	e8 c3 dc ff ff       	call   401330 <signal@plt>
  40366d:	be 01 00 00 00       	mov    $0x1,%esi
  403672:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403677:	e8 b4 dc ff ff       	call   401330 <signal@plt>
  40367c:	be 01 00 00 00       	mov    $0x1,%esi
  403681:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403686:	e8 a5 dc ff ff       	call   401330 <signal@plt>
  40368b:	ba 00 00 00 00       	mov    $0x0,%edx
  403690:	be 01 00 00 00       	mov    $0x1,%esi
  403695:	bf 02 00 00 00       	mov    $0x2,%edi
  40369a:	e8 c1 dd ff ff       	call   401460 <socket@plt>
  40369f:	85 c0                	test   %eax,%eax
  4036a1:	0f 88 9c 00 00 00    	js     403743 <init_driver+0x104>
  4036a7:	89 c3                	mov    %eax,%ebx
  4036a9:	48 8d 3d a9 11 00 00 	lea    0x11a9(%rip),%rdi        # 404859 <trans_char+0xe9>
  4036b0:	e8 8b dc ff ff       	call   401340 <gethostbyname@plt>
  4036b5:	48 85 c0             	test   %rax,%rax
  4036b8:	0f 84 d1 00 00 00    	je     40378f <init_driver+0x150>
  4036be:	49 89 e4             	mov    %rsp,%r12
  4036c1:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4036c8:	00 
  4036c9:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4036d0:	00 00 
  4036d2:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4036d8:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4036dc:	48 8b 40 18          	mov    0x18(%rax),%rax
  4036e0:	48 8b 30             	mov    (%rax),%rsi
  4036e3:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4036e8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4036ed:	e8 5e dc ff ff       	call   401350 <__memmove_chk@plt>
  4036f2:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4036f9:	ba 10 00 00 00       	mov    $0x10,%edx
  4036fe:	4c 89 e6             	mov    %r12,%rsi
  403701:	89 df                	mov    %ebx,%edi
  403703:	e8 18 dd ff ff       	call   401420 <connect@plt>
  403708:	85 c0                	test   %eax,%eax
  40370a:	0f 88 e7 00 00 00    	js     4037f7 <init_driver+0x1b8>
  403710:	89 df                	mov    %ebx,%edi
  403712:	e8 e9 db ff ff       	call   401300 <close@plt>
  403717:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40371d:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403721:	b8 00 00 00 00       	mov    $0x0,%eax
  403726:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40372b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403732:	00 00 
  403734:	0f 85 10 01 00 00    	jne    40384a <init_driver+0x20b>
  40373a:	48 83 c4 20          	add    $0x20,%rsp
  40373e:	5b                   	pop    %rbx
  40373f:	5d                   	pop    %rbp
  403740:	41 5c                	pop    %r12
  403742:	c3                   	ret    
  403743:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40374a:	3a 20 43 
  40374d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403754:	20 75 6e 
  403757:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40375b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40375f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403766:	74 6f 20 
  403769:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403770:	65 20 73 
  403773:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403777:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40377b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403782:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403788:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40378d:	eb 97                	jmp    403726 <init_driver+0xe7>
  40378f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403796:	3a 20 44 
  403799:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4037a0:	20 75 6e 
  4037a3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4037a7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4037ab:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4037b2:	74 6f 20 
  4037b5:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4037bc:	76 65 20 
  4037bf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4037c3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037c7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4037ce:	72 20 61 
  4037d1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4037d5:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4037dc:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4037e2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4037e6:	89 df                	mov    %ebx,%edi
  4037e8:	e8 13 db ff ff       	call   401300 <close@plt>
  4037ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4037f2:	e9 2f ff ff ff       	jmp    403726 <init_driver+0xe7>
  4037f7:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4037fe:	3a 20 55 
  403801:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403808:	20 74 6f 
  40380b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40380f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403813:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40381a:	65 63 74 
  40381d:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403824:	65 72 76 
  403827:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40382b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40382f:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403835:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  403839:	89 df                	mov    %ebx,%edi
  40383b:	e8 c0 da ff ff       	call   401300 <close@plt>
  403840:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403845:	e9 dc fe ff ff       	jmp    403726 <init_driver+0xe7>
  40384a:	e8 08 f1 ff ff       	call   402957 <__stack_chk_fail>

000000000040384f <driver_post>:
  40384f:	f3 0f 1e fa          	endbr64 
  403853:	53                   	push   %rbx
  403854:	4c 89 cb             	mov    %r9,%rbx
  403857:	45 85 c0             	test   %r8d,%r8d
  40385a:	75 18                	jne    403874 <driver_post+0x25>
  40385c:	48 85 ff             	test   %rdi,%rdi
  40385f:	74 05                	je     403866 <driver_post+0x17>
  403861:	80 3f 00             	cmpb   $0x0,(%rdi)
  403864:	75 37                	jne    40389d <driver_post+0x4e>
  403866:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40386b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40386f:	44 89 c0             	mov    %r8d,%eax
  403872:	5b                   	pop    %rbx
  403873:	c3                   	ret    
  403874:	48 89 ca             	mov    %rcx,%rdx
  403877:	48 8d 35 eb 0f 00 00 	lea    0xfeb(%rip),%rsi        # 404869 <trans_char+0xf9>
  40387e:	bf 01 00 00 00       	mov    $0x1,%edi
  403883:	b8 00 00 00 00       	mov    $0x0,%eax
  403888:	e8 33 db ff ff       	call   4013c0 <__printf_chk@plt>
  40388d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403892:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403896:	b8 00 00 00 00       	mov    $0x0,%eax
  40389b:	eb d5                	jmp    403872 <driver_post+0x23>
  40389d:	48 83 ec 08          	sub    $0x8,%rsp
  4038a1:	41 51                	push   %r9
  4038a3:	49 89 c9             	mov    %rcx,%r9
  4038a6:	49 89 d0             	mov    %rdx,%r8
  4038a9:	48 89 f9             	mov    %rdi,%rcx
  4038ac:	48 89 f2             	mov    %rsi,%rdx
  4038af:	be 39 30 00 00       	mov    $0x3039,%esi
  4038b4:	48 8d 3d 9e 0f 00 00 	lea    0xf9e(%rip),%rdi        # 404859 <trans_char+0xe9>
  4038bb:	e8 a1 f5 ff ff       	call   402e61 <submitr>
  4038c0:	48 83 c4 10          	add    $0x10,%rsp
  4038c4:	eb ac                	jmp    403872 <driver_post+0x23>

00000000004038c6 <check>:
  4038c6:	f3 0f 1e fa          	endbr64 
  4038ca:	89 f8                	mov    %edi,%eax
  4038cc:	c1 e8 1c             	shr    $0x1c,%eax
  4038cf:	74 1d                	je     4038ee <check+0x28>
  4038d1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4038d6:	83 f9 1f             	cmp    $0x1f,%ecx
  4038d9:	7f 0d                	jg     4038e8 <check+0x22>
  4038db:	89 f8                	mov    %edi,%eax
  4038dd:	d3 e8                	shr    %cl,%eax
  4038df:	3c 0a                	cmp    $0xa,%al
  4038e1:	74 11                	je     4038f4 <check+0x2e>
  4038e3:	83 c1 08             	add    $0x8,%ecx
  4038e6:	eb ee                	jmp    4038d6 <check+0x10>
  4038e8:	b8 01 00 00 00       	mov    $0x1,%eax
  4038ed:	c3                   	ret    
  4038ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4038f3:	c3                   	ret    
  4038f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4038f9:	c3                   	ret    

00000000004038fa <gencookie>:
  4038fa:	f3 0f 1e fa          	endbr64 
  4038fe:	53                   	push   %rbx
  4038ff:	83 c7 01             	add    $0x1,%edi
  403902:	e8 69 d9 ff ff       	call   401270 <srandom@plt>
  403907:	e8 84 da ff ff       	call   401390 <random@plt>
  40390c:	48 89 c7             	mov    %rax,%rdi
  40390f:	89 c3                	mov    %eax,%ebx
  403911:	e8 b0 ff ff ff       	call   4038c6 <check>
  403916:	85 c0                	test   %eax,%eax
  403918:	74 ed                	je     403907 <gencookie+0xd>
  40391a:	89 d8                	mov    %ebx,%eax
  40391c:	5b                   	pop    %rbx
  40391d:	c3                   	ret    
  40391e:	66 90                	xchg   %ax,%ax

0000000000403920 <__libc_csu_init>:
  403920:	f3 0f 1e fa          	endbr64 
  403924:	41 57                	push   %r15
  403926:	4c 8d 3d e3 34 00 00 	lea    0x34e3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40392d:	41 56                	push   %r14
  40392f:	49 89 d6             	mov    %rdx,%r14
  403932:	41 55                	push   %r13
  403934:	49 89 f5             	mov    %rsi,%r13
  403937:	41 54                	push   %r12
  403939:	41 89 fc             	mov    %edi,%r12d
  40393c:	55                   	push   %rbp
  40393d:	48 8d 2d d4 34 00 00 	lea    0x34d4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403944:	53                   	push   %rbx
  403945:	4c 29 fd             	sub    %r15,%rbp
  403948:	48 83 ec 08          	sub    $0x8,%rsp
  40394c:	e8 af d6 ff ff       	call   401000 <_init>
  403951:	48 c1 fd 03          	sar    $0x3,%rbp
  403955:	74 1f                	je     403976 <__libc_csu_init+0x56>
  403957:	31 db                	xor    %ebx,%ebx
  403959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403960:	4c 89 f2             	mov    %r14,%rdx
  403963:	4c 89 ee             	mov    %r13,%rsi
  403966:	44 89 e7             	mov    %r12d,%edi
  403969:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40396d:	48 83 c3 01          	add    $0x1,%rbx
  403971:	48 39 dd             	cmp    %rbx,%rbp
  403974:	75 ea                	jne    403960 <__libc_csu_init+0x40>
  403976:	48 83 c4 08          	add    $0x8,%rsp
  40397a:	5b                   	pop    %rbx
  40397b:	5d                   	pop    %rbp
  40397c:	41 5c                	pop    %r12
  40397e:	41 5d                	pop    %r13
  403980:	41 5e                	pop    %r14
  403982:	41 5f                	pop    %r15
  403984:	c3                   	ret    
  403985:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40398c:	00 00 00 00 

0000000000403990 <__libc_csu_fini>:
  403990:	f3 0f 1e fa          	endbr64 
  403994:	c3                   	ret    

Disassembly of section .fini:

0000000000403998 <_fini>:
  403998:	f3 0f 1e fa          	endbr64 
  40399c:	48 83 ec 08          	sub    $0x8,%rsp
  4039a0:	48 83 c4 08          	add    $0x8,%rsp
  4039a4:	c3                   	ret    
