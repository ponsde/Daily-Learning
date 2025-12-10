
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ba 5e 00 00    	push   0x5eba(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 bb 5e 00 00 	bnd jmp *0x5ebb(%rip)        # 6ee8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <.plt>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <.plt>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <.plt>
    11ff:	90                   	nop

Disassembly of section .plt.got:

0000000000001200 <__cxa_finalize@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 ed 5d 00 00 	bnd jmp *0x5ded(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001210 <getenv@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 6ef0 <getenv@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <free@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 6ef8 <free@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strcasecmp@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 6f00 <strcasecmp@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6f08 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6f10 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <puts@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6f18 <puts@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <write@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f20 <write@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <__stack_chk_fail@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <alarm@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <close@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <read@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f40 <read@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <fgets@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f48 <fgets@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <signal@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f50 <signal@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <gethostbyname@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f58 <gethostbyname@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__memmove_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f60 <__memmove_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <memcpy@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f68 <memcpy@GLIBC_2.14>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <malloc@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f70 <malloc@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fflush@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f78 <fflush@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__isoc99_sscanf@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f80 <__isoc99_sscanf@GLIBC_2.7>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__printf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <fopen@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <gethostname@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <exit@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <connect@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <__fprintf_chk@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <sleep@plt>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__ctype_b_loc@plt>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <__sprintf_chk@plt>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <socket@plt>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013e0 <_start>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	31 ed                	xor    %ebp,%ebp
    13e6:	49 89 d1             	mov    %rdx,%r9
    13e9:	5e                   	pop    %rsi
    13ea:	48 89 e2             	mov    %rsp,%rdx
    13ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13f1:	50                   	push   %rax
    13f2:	54                   	push   %rsp
    13f3:	4c 8d 05 26 1f 00 00 	lea    0x1f26(%rip),%r8        # 3320 <__libc_csu_fini>
    13fa:	48 8d 0d af 1e 00 00 	lea    0x1eaf(%rip),%rcx        # 32b0 <__libc_csu_init>
    1401:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 14c9 <main>
    1408:	ff 15 d2 5b 00 00    	call   *0x5bd2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    140e:	f4                   	hlt    
    140f:	90                   	nop

0000000000001410 <deregister_tm_clones>:
    1410:	48 8d 3d 49 70 00 00 	lea    0x7049(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1417:	48 8d 05 42 70 00 00 	lea    0x7042(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    141e:	48 39 f8             	cmp    %rdi,%rax
    1421:	74 15                	je     1438 <deregister_tm_clones+0x28>
    1423:	48 8b 05 ae 5b 00 00 	mov    0x5bae(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    142a:	48 85 c0             	test   %rax,%rax
    142d:	74 09                	je     1438 <deregister_tm_clones+0x28>
    142f:	ff e0                	jmp    *%rax
    1431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <register_tm_clones>:
    1440:	48 8d 3d 19 70 00 00 	lea    0x7019(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1447:	48 8d 35 12 70 00 00 	lea    0x7012(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    144e:	48 29 fe             	sub    %rdi,%rsi
    1451:	48 89 f0             	mov    %rsi,%rax
    1454:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1458:	48 c1 f8 03          	sar    $0x3,%rax
    145c:	48 01 c6             	add    %rax,%rsi
    145f:	48 d1 fe             	sar    %rsi
    1462:	74 14                	je     1478 <register_tm_clones+0x38>
    1464:	48 8b 05 85 5b 00 00 	mov    0x5b85(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    146b:	48 85 c0             	test   %rax,%rax
    146e:	74 08                	je     1478 <register_tm_clones+0x38>
    1470:	ff e0                	jmp    *%rax
    1472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <__do_global_dtors_aux>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	80 3d fd 6f 00 00 00 	cmpb   $0x0,0x6ffd(%rip)        # 8488 <completed.8060>
    148b:	75 2b                	jne    14b8 <__do_global_dtors_aux+0x38>
    148d:	55                   	push   %rbp
    148e:	48 83 3d 62 5b 00 00 	cmpq   $0x0,0x5b62(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    1495:	00 
    1496:	48 89 e5             	mov    %rsp,%rbp
    1499:	74 0c                	je     14a7 <__do_global_dtors_aux+0x27>
    149b:	48 8b 3d 66 5b 00 00 	mov    0x5b66(%rip),%rdi        # 7008 <__dso_handle>
    14a2:	e8 59 fd ff ff       	call   1200 <__cxa_finalize@plt>
    14a7:	e8 64 ff ff ff       	call   1410 <deregister_tm_clones>
    14ac:	c6 05 d5 6f 00 00 01 	movb   $0x1,0x6fd5(%rip)        # 8488 <completed.8060>
    14b3:	5d                   	pop    %rbp
    14b4:	c3                   	ret    
    14b5:	0f 1f 00             	nopl   (%rax)
    14b8:	c3                   	ret    
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <frame_dummy>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	e9 77 ff ff ff       	jmp    1440 <register_tm_clones>

00000000000014c9 <main>:
    14c9:	f3 0f 1e fa          	endbr64 
    14cd:	53                   	push   %rbx
    14ce:	83 ff 01             	cmp    $0x1,%edi
    14d1:	74 51                	je     1524 <main+0x5b>
    14d3:	48 89 f3             	mov    %rsi,%rbx
    14d6:	83 ff 02             	cmp    $0x2,%edi
    14d9:	75 7b                	jne    1556 <main+0x8d>
    14db:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14df:	48 8d 35 d0 32 00 00 	lea    0x32d0(%rip),%rsi        # 47b6 <transition_table+0x3d6>
    14e6:	e8 65 fe ff ff       	call   1350 <fopen@plt>
    14eb:	48 89 05 9e 6f 00 00 	mov    %rax,0x6f9e(%rip)        # 8490 <infile>
    14f2:	48 85 c0             	test   %rax,%rax
    14f5:	74 3d                	je     1534 <main+0x6b>
    14f7:	e8 1f 09 00 00       	call   1e1b <initialize_bomb>
    14fc:	48 89 c3             	mov    %rax,%rbx
    14ff:	81 38 11 fa 22 20    	cmpl   $0x2022fa11,(%rax)
    1505:	eb 72                	jmp    1579 <main+0xb0>
    1507:	48 8d 35 7a 2b 00 00 	lea    0x2b7a(%rip),%rsi        # 4088 <_IO_stdin_used+0x88>
    150e:	bf 01 00 00 00       	mov    $0x1,%edi
    1513:	b8 00 00 00 00       	mov    $0x0,%eax
    1518:	e8 23 fe ff ff       	call   1340 <__printf_chk@plt>
    151d:	b8 00 00 00 00       	mov    $0x0,%eax
    1522:	5b                   	pop    %rbx
    1523:	c3                   	ret    
    1524:	48 8b 05 45 6f 00 00 	mov    0x6f45(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    152b:	48 89 05 5e 6f 00 00 	mov    %rax,0x6f5e(%rip)        # 8490 <infile>
    1532:	eb c3                	jmp    14f7 <main+0x2e>
    1534:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1538:	48 8b 13             	mov    (%rbx),%rdx
    153b:	48 8d 35 c2 2a 00 00 	lea    0x2ac2(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    1542:	bf 01 00 00 00       	mov    $0x1,%edi
    1547:	e8 f4 fd ff ff       	call   1340 <__printf_chk@plt>
    154c:	bf 08 00 00 00       	mov    $0x8,%edi
    1551:	e8 1a fe ff ff       	call   1370 <exit@plt>
    1556:	48 8b 16             	mov    (%rsi),%rdx
    1559:	48 8d 35 c1 2a 00 00 	lea    0x2ac1(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    1560:	bf 01 00 00 00       	mov    $0x1,%edi
    1565:	b8 00 00 00 00       	mov    $0x0,%eax
    156a:	e8 d1 fd ff ff       	call   1340 <__printf_chk@plt>
    156f:	bf 08 00 00 00       	mov    $0x8,%edi
    1574:	e8 f7 fd ff ff       	call   1370 <exit@plt>
    1579:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    1580:	e8 db fc ff ff       	call   1260 <puts@plt>
    1585:	48 8d 3d 7c 2b 00 00 	lea    0x2b7c(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    158c:	e8 cf fc ff ff       	call   1260 <puts@plt>
    1591:	e8 3e 0d 00 00       	call   22d4 <read_line>
    1596:	48 89 c7             	mov    %rax,%rdi
    1599:	e8 da 01 00 00       	call   1778 <phase_1>
    159e:	48 89 df             	mov    %rbx,%rdi
    15a1:	e8 79 0e 00 00       	call   241f <phase_defused>
    15a6:	48 8d 3d 9b 2b 00 00 	lea    0x2b9b(%rip),%rdi        # 4148 <_IO_stdin_used+0x148>
    15ad:	e8 ae fc ff ff       	call   1260 <puts@plt>
    15b2:	e8 1d 0d 00 00       	call   22d4 <read_line>
    15b7:	48 89 c7             	mov    %rax,%rdi
    15ba:	e8 dd 01 00 00       	call   179c <phase_2>
    15bf:	48 89 df             	mov    %rbx,%rdi
    15c2:	e8 58 0e 00 00       	call   241f <phase_defused>
    15c7:	48 8d 3d 6d 2a 00 00 	lea    0x2a6d(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    15ce:	e8 8d fc ff ff       	call   1260 <puts@plt>
    15d3:	e8 fc 0c 00 00       	call   22d4 <read_line>
    15d8:	48 89 c7             	mov    %rax,%rdi
    15db:	e8 39 02 00 00       	call   1819 <phase_3>
    15e0:	48 89 df             	mov    %rbx,%rdi
    15e3:	e8 37 0e 00 00       	call   241f <phase_defused>
    15e8:	48 8d 3d 69 2a 00 00 	lea    0x2a69(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15ef:	e8 6c fc ff ff       	call   1260 <puts@plt>
    15f4:	e8 db 0c 00 00       	call   22d4 <read_line>
    15f9:	48 89 c7             	mov    %rax,%rdi
    15fc:	e8 dd 03 00 00       	call   19de <phase_4>
    1601:	48 89 df             	mov    %rbx,%rdi
    1604:	e8 16 0e 00 00       	call   241f <phase_defused>
    1609:	48 8d 3d 68 2b 00 00 	lea    0x2b68(%rip),%rdi        # 4178 <_IO_stdin_used+0x178>
    1610:	e8 4b fc ff ff       	call   1260 <puts@plt>
    1615:	e8 ba 0c 00 00       	call   22d4 <read_line>
    161a:	48 89 c7             	mov    %rax,%rdi
    161d:	e8 40 04 00 00       	call   1a62 <phase_5>
    1622:	48 89 df             	mov    %rbx,%rdi
    1625:	e8 f5 0d 00 00       	call   241f <phase_defused>
    162a:	48 8d 3d 36 2a 00 00 	lea    0x2a36(%rip),%rdi        # 4067 <_IO_stdin_used+0x67>
    1631:	e8 2a fc ff ff       	call   1260 <puts@plt>
    1636:	e8 99 0c 00 00       	call   22d4 <read_line>
    163b:	48 89 c7             	mov    %rax,%rdi
    163e:	e8 6e 04 00 00       	call   1ab1 <phase_6>
    1643:	48 89 df             	mov    %rbx,%rdi
    1646:	e8 d4 0d 00 00       	call   241f <phase_defused>
    164b:	48 89 df             	mov    %rbx,%rdi
    164e:	e8 cd fb ff ff       	call   1220 <free@plt>
    1653:	e9 c5 fe ff ff       	jmp    151d <main+0x54>

0000000000001658 <abracadabra>:
    1658:	f3 0f 1e fa          	endbr64 
    165c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1663:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    166a:	00 00 
    166c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1673:	00 
    1674:	31 c0                	xor    %eax,%eax
    1676:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    167b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1680:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1685:	48 8d 35 10 2b 00 00 	lea    0x2b10(%rip),%rsi        # 419c <_IO_stdin_used+0x19c>
    168c:	48 8d 3d 75 6f 00 00 	lea    0x6f75(%rip),%rdi        # 8608 <input_strings+0x168>
    1693:	e8 98 fc ff ff       	call   1330 <__isoc99_sscanf@plt>
    1698:	83 f8 03             	cmp    $0x3,%eax
    169b:	74 20                	je     16bd <abracadabra+0x65>
    169d:	b8 00 00 00 00       	mov    $0x0,%eax
    16a2:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    16a9:	00 
    16aa:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16b1:	00 00 
    16b3:	75 2b                	jne    16e0 <abracadabra+0x88>
    16b5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16bc:	c3                   	ret    
    16bd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16c2:	48 8d 35 ff 2a 00 00 	lea    0x2aff(%rip),%rsi        # 41c8 <_IO_stdin_used+0x1c8>
    16c9:	e8 fc 06 00 00       	call   1dca <strings_not_equal>
    16ce:	85 c0                	test   %eax,%eax
    16d0:	74 07                	je     16d9 <abracadabra+0x81>
    16d2:	b8 00 00 00 00       	mov    $0x0,%eax
    16d7:	eb c9                	jmp    16a2 <abracadabra+0x4a>
    16d9:	b8 01 00 00 00       	mov    $0x1,%eax
    16de:	eb c2                	jmp    16a2 <abracadabra+0x4a>
    16e0:	e8 9b fb ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000016e5 <alohomora>:
    16e5:	f3 0f 1e fa          	endbr64 
    16e9:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    16f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16f7:	00 00 
    16f9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    16fe:	31 c0                	xor    %eax,%eax
    1700:	48 8d 05 11 6e 00 00 	lea    0x6e11(%rip),%rax        # 8518 <input_strings+0x78>
    1707:	80 38 00             	cmpb   $0x0,(%rax)
    170a:	74 06                	je     1712 <alohomora+0x2d>
    170c:	48 83 c0 01          	add    $0x1,%rax
    1710:	eb f5                	jmp    1707 <alohomora+0x22>
    1712:	48 83 e8 01          	sub    $0x1,%rax
    1716:	48 89 e2             	mov    %rsp,%rdx
    1719:	eb 0a                	jmp    1725 <alohomora+0x40>
    171b:	88 0a                	mov    %cl,(%rdx)
    171d:	48 83 c2 01          	add    $0x1,%rdx
    1721:	48 83 e8 01          	sub    $0x1,%rax
    1725:	0f b6 08             	movzbl (%rax),%ecx
    1728:	80 f9 20             	cmp    $0x20,%cl
    172b:	74 0c                	je     1739 <alohomora+0x54>
    172d:	48 8d 35 e4 6d 00 00 	lea    0x6de4(%rip),%rsi        # 8518 <input_strings+0x78>
    1734:	48 39 f0             	cmp    %rsi,%rax
    1737:	75 e2                	jne    171b <alohomora+0x36>
    1739:	c6 02 00             	movb   $0x0,(%rdx)
    173c:	48 89 e7             	mov    %rsp,%rdi
    173f:	48 8d 35 aa 2a 00 00 	lea    0x2aaa(%rip),%rsi        # 41f0 <_IO_stdin_used+0x1f0>
    1746:	e8 7f 06 00 00       	call   1dca <strings_not_equal>
    174b:	85 c0                	test   %eax,%eax
    174d:	74 1d                	je     176c <alohomora+0x87>
    174f:	b8 00 00 00 00       	mov    $0x0,%eax
    1754:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    1759:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1760:	00 00 
    1762:	75 0f                	jne    1773 <alohomora+0x8e>
    1764:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    176b:	c3                   	ret    
    176c:	b8 01 00 00 00       	mov    $0x1,%eax
    1771:	eb e1                	jmp    1754 <alohomora+0x6f>
    1773:	e8 08 fb ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001778 <phase_1>:
    1778:	f3 0f 1e fa          	endbr64 
    177c:	48 83 ec 08          	sub    $0x8,%rsp
    1780:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 4220 <_IO_stdin_used+0x220>
    1787:	e8 3e 06 00 00       	call   1dca <strings_not_equal>
    178c:	85 c0                	test   %eax,%eax
    178e:	75 05                	jne    1795 <phase_1+0x1d>
    1790:	48 83 c4 08          	add    $0x8,%rsp
    1794:	c3                   	ret    
    1795:	e8 07 0a 00 00       	call   21a1 <explode_bomb>
    179a:	eb f4                	jmp    1790 <phase_1+0x18>

000000000000179c <phase_2>:
    179c:	f3 0f 1e fa          	endbr64 
    17a0:	53                   	push   %rbx
    17a1:	48 83 ec 20          	sub    $0x20,%rsp
    17a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17ac:	00 00 
    17ae:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17b3:	31 c0                	xor    %eax,%eax
    17b5:	48 89 e6             	mov    %rsp,%rsi
    17b8:	e8 d2 0a 00 00       	call   228f <read_six_numbers>
    17bd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    17c1:	75 07                	jne    17ca <phase_2+0x2e>
    17c3:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    17c8:	74 05                	je     17cf <phase_2+0x33>
    17ca:	e8 d2 09 00 00       	call   21a1 <explode_bomb>
    17cf:	bb 02 00 00 00       	mov    $0x2,%ebx
    17d4:	eb 08                	jmp    17de <phase_2+0x42>
    17d6:	e8 c6 09 00 00       	call   21a1 <explode_bomb>
    17db:	83 c3 01             	add    $0x1,%ebx
    17de:	83 fb 05             	cmp    $0x5,%ebx
    17e1:	7f 1b                	jg     17fe <phase_2+0x62>
    17e3:	48 63 d3             	movslq %ebx,%rdx
    17e6:	8d 4b fe             	lea    -0x2(%rbx),%ecx
    17e9:	48 63 c9             	movslq %ecx,%rcx
    17ec:	8d 43 ff             	lea    -0x1(%rbx),%eax
    17ef:	48 98                	cltq   
    17f1:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    17f4:	03 04 8c             	add    (%rsp,%rcx,4),%eax
    17f7:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    17fa:	74 df                	je     17db <phase_2+0x3f>
    17fc:	eb d8                	jmp    17d6 <phase_2+0x3a>
    17fe:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1803:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    180a:	00 00 
    180c:	75 06                	jne    1814 <phase_2+0x78>
    180e:	48 83 c4 20          	add    $0x20,%rsp
    1812:	5b                   	pop    %rbx
    1813:	c3                   	ret    
    1814:	e8 67 fa ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001819 <phase_3>:
    1819:	f3 0f 1e fa          	endbr64 
    181d:	48 83 ec 28          	sub    $0x28,%rsp
    1821:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1828:	00 00 
    182a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    182f:	31 c0                	xor    %eax,%eax
    1831:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    1836:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    183b:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1840:	48 8d 35 5e 29 00 00 	lea    0x295e(%rip),%rsi        # 41a5 <_IO_stdin_used+0x1a5>
    1847:	e8 e4 fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    184c:	83 f8 02             	cmp    $0x2,%eax
    184f:	7e 20                	jle    1871 <phase_3+0x58>
    1851:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1855:	83 f8 07             	cmp    $0x7,%eax
    1858:	0f 87 14 01 00 00    	ja     1972 <phase_3+0x159>
    185e:	89 c0                	mov    %eax,%eax
    1860:	48 8d 15 19 2b 00 00 	lea    0x2b19(%rip),%rdx        # 4380 <_IO_stdin_used+0x380>
    1867:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    186b:	48 01 d0             	add    %rdx,%rax
    186e:	3e ff e0             	notrack jmp *%rax
    1871:	e8 2b 09 00 00       	call   21a1 <explode_bomb>
    1876:	eb d9                	jmp    1851 <phase_3+0x38>
    1878:	81 7c 24 14 ba 02 00 	cmpl   $0x2ba,0x14(%rsp)
    187f:	00 
    1880:	75 0a                	jne    188c <phase_3+0x73>
    1882:	b8 62 00 00 00       	mov    $0x62,%eax
    1887:	e9 f0 00 00 00       	jmp    197c <phase_3+0x163>
    188c:	e8 10 09 00 00       	call   21a1 <explode_bomb>
    1891:	b8 62 00 00 00       	mov    $0x62,%eax
    1896:	e9 e1 00 00 00       	jmp    197c <phase_3+0x163>
    189b:	81 7c 24 14 01 02 00 	cmpl   $0x201,0x14(%rsp)
    18a2:	00 
    18a3:	75 0a                	jne    18af <phase_3+0x96>
    18a5:	b8 61 00 00 00       	mov    $0x61,%eax
    18aa:	e9 cd 00 00 00       	jmp    197c <phase_3+0x163>
    18af:	e8 ed 08 00 00       	call   21a1 <explode_bomb>
    18b4:	b8 61 00 00 00       	mov    $0x61,%eax
    18b9:	e9 be 00 00 00       	jmp    197c <phase_3+0x163>
    18be:	81 7c 24 14 bc 01 00 	cmpl   $0x1bc,0x14(%rsp)
    18c5:	00 
    18c6:	75 0a                	jne    18d2 <phase_3+0xb9>
    18c8:	b8 65 00 00 00       	mov    $0x65,%eax
    18cd:	e9 aa 00 00 00       	jmp    197c <phase_3+0x163>
    18d2:	e8 ca 08 00 00       	call   21a1 <explode_bomb>
    18d7:	b8 65 00 00 00       	mov    $0x65,%eax
    18dc:	e9 9b 00 00 00       	jmp    197c <phase_3+0x163>
    18e1:	81 7c 24 14 99 03 00 	cmpl   $0x399,0x14(%rsp)
    18e8:	00 
    18e9:	75 0a                	jne    18f5 <phase_3+0xdc>
    18eb:	b8 70 00 00 00       	mov    $0x70,%eax
    18f0:	e9 87 00 00 00       	jmp    197c <phase_3+0x163>
    18f5:	e8 a7 08 00 00       	call   21a1 <explode_bomb>
    18fa:	b8 70 00 00 00       	mov    $0x70,%eax
    18ff:	eb 7b                	jmp    197c <phase_3+0x163>
    1901:	81 7c 24 14 4f 03 00 	cmpl   $0x34f,0x14(%rsp)
    1908:	00 
    1909:	75 07                	jne    1912 <phase_3+0xf9>
    190b:	b8 72 00 00 00       	mov    $0x72,%eax
    1910:	eb 6a                	jmp    197c <phase_3+0x163>
    1912:	e8 8a 08 00 00       	call   21a1 <explode_bomb>
    1917:	b8 72 00 00 00       	mov    $0x72,%eax
    191c:	eb 5e                	jmp    197c <phase_3+0x163>
    191e:	81 7c 24 14 59 03 00 	cmpl   $0x359,0x14(%rsp)
    1925:	00 
    1926:	75 07                	jne    192f <phase_3+0x116>
    1928:	b8 61 00 00 00       	mov    $0x61,%eax
    192d:	eb 4d                	jmp    197c <phase_3+0x163>
    192f:	e8 6d 08 00 00       	call   21a1 <explode_bomb>
    1934:	b8 61 00 00 00       	mov    $0x61,%eax
    1939:	eb 41                	jmp    197c <phase_3+0x163>
    193b:	81 7c 24 14 d5 02 00 	cmpl   $0x2d5,0x14(%rsp)
    1942:	00 
    1943:	75 07                	jne    194c <phase_3+0x133>
    1945:	b8 65 00 00 00       	mov    $0x65,%eax
    194a:	eb 30                	jmp    197c <phase_3+0x163>
    194c:	e8 50 08 00 00       	call   21a1 <explode_bomb>
    1951:	b8 65 00 00 00       	mov    $0x65,%eax
    1956:	eb 24                	jmp    197c <phase_3+0x163>
    1958:	83 7c 24 14 76       	cmpl   $0x76,0x14(%rsp)
    195d:	75 07                	jne    1966 <phase_3+0x14d>
    195f:	b8 72 00 00 00       	mov    $0x72,%eax
    1964:	eb 16                	jmp    197c <phase_3+0x163>
    1966:	e8 36 08 00 00       	call   21a1 <explode_bomb>
    196b:	b8 72 00 00 00       	mov    $0x72,%eax
    1970:	eb 0a                	jmp    197c <phase_3+0x163>
    1972:	e8 2a 08 00 00       	call   21a1 <explode_bomb>
    1977:	b8 70 00 00 00       	mov    $0x70,%eax
    197c:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    1980:	75 15                	jne    1997 <phase_3+0x17e>
    1982:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1987:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    198e:	00 00 
    1990:	75 0c                	jne    199e <phase_3+0x185>
    1992:	48 83 c4 28          	add    $0x28,%rsp
    1996:	c3                   	ret    
    1997:	e8 05 08 00 00       	call   21a1 <explode_bomb>
    199c:	eb e4                	jmp    1982 <phase_3+0x169>
    199e:	e8 dd f8 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000019a3 <func4>:
    19a3:	f3 0f 1e fa          	endbr64 
    19a7:	85 ff                	test   %edi,%edi
    19a9:	7e 29                	jle    19d4 <func4+0x31>
    19ab:	55                   	push   %rbp
    19ac:	53                   	push   %rbx
    19ad:	48 83 ec 08          	sub    $0x8,%rsp
    19b1:	89 fb                	mov    %edi,%ebx
    19b3:	83 ff 01             	cmp    $0x1,%edi
    19b6:	74 22                	je     19da <func4+0x37>
    19b8:	8d 7f ff             	lea    -0x1(%rdi),%edi
    19bb:	e8 e3 ff ff ff       	call   19a3 <func4>
    19c0:	8d 2c 00             	lea    (%rax,%rax,1),%ebp
    19c3:	8d 7b fe             	lea    -0x2(%rbx),%edi
    19c6:	e8 d8 ff ff ff       	call   19a3 <func4>
    19cb:	01 e8                	add    %ebp,%eax
    19cd:	48 83 c4 08          	add    $0x8,%rsp
    19d1:	5b                   	pop    %rbx
    19d2:	5d                   	pop    %rbp
    19d3:	c3                   	ret    
    19d4:	b8 00 00 00 00       	mov    $0x0,%eax
    19d9:	c3                   	ret    
    19da:	89 f8                	mov    %edi,%eax
    19dc:	eb ef                	jmp    19cd <func4+0x2a>

00000000000019de <phase_4>:
    19de:	f3 0f 1e fa          	endbr64 
    19e2:	55                   	push   %rbp
    19e3:	53                   	push   %rbx
    19e4:	48 83 ec 18          	sub    $0x18,%rsp
    19e8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19ef:	00 00 
    19f1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    19f6:	31 c0                	xor    %eax,%eax
    19f8:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    19fd:	48 89 e2             	mov    %rsp,%rdx
    1a00:	48 8d 35 11 2d 00 00 	lea    0x2d11(%rip),%rsi        # 4718 <transition_table+0x338>
    1a07:	e8 24 f9 ff ff       	call   1330 <__isoc99_sscanf@plt>
    1a0c:	83 f8 02             	cmp    $0x2,%eax
    1a0f:	75 06                	jne    1a17 <phase_4+0x39>
    1a11:	83 3c 24 06          	cmpl   $0x6,(%rsp)
    1a15:	74 05                	je     1a1c <phase_4+0x3e>
    1a17:	e8 85 07 00 00       	call   21a1 <explode_bomb>
    1a1c:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a21:	bb 00 00 00 00       	mov    $0x0,%ebx
    1a26:	39 1c 24             	cmp    %ebx,(%rsp)
    1a29:	7e 0e                	jle    1a39 <phase_4+0x5b>
    1a2b:	89 df                	mov    %ebx,%edi
    1a2d:	e8 71 ff ff ff       	call   19a3 <func4>
    1a32:	01 c5                	add    %eax,%ebp
    1a34:	83 c3 01             	add    $0x1,%ebx
    1a37:	eb ed                	jmp    1a26 <phase_4+0x48>
    1a39:	39 6c 24 04          	cmp    %ebp,0x4(%rsp)
    1a3d:	75 17                	jne    1a56 <phase_4+0x78>
    1a3f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a44:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a4b:	00 00 
    1a4d:	75 0e                	jne    1a5d <phase_4+0x7f>
    1a4f:	48 83 c4 18          	add    $0x18,%rsp
    1a53:	5b                   	pop    %rbx
    1a54:	5d                   	pop    %rbp
    1a55:	c3                   	ret    
    1a56:	e8 46 07 00 00       	call   21a1 <explode_bomb>
    1a5b:	eb e2                	jmp    1a3f <phase_4+0x61>
    1a5d:	e8 1e f8 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001a62 <phase_5>:
    1a62:	f3 0f 1e fa          	endbr64 
    1a66:	53                   	push   %rbx
    1a67:	48 89 fb             	mov    %rdi,%rbx
    1a6a:	e8 43 03 00 00       	call   1db2 <string_length>
    1a6f:	83 f8 06             	cmp    $0x6,%eax
    1a72:	75 28                	jne    1a9c <phase_5+0x3a>
    1a74:	b9 00 00 00 00       	mov    $0x0,%ecx
    1a79:	b8 00 00 00 00       	mov    $0x0,%eax
    1a7e:	83 f8 05             	cmp    $0x5,%eax
    1a81:	7f 20                	jg     1aa3 <phase_5+0x41>
    1a83:	48 63 d0             	movslq %eax,%rdx
    1a86:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    1a8a:	83 e2 0f             	and    $0xf,%edx
    1a8d:	48 8d 35 0c 29 00 00 	lea    0x290c(%rip),%rsi        # 43a0 <array.3498>
    1a94:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1a97:	83 c0 01             	add    $0x1,%eax
    1a9a:	eb e2                	jmp    1a7e <phase_5+0x1c>
    1a9c:	e8 00 07 00 00       	call   21a1 <explode_bomb>
    1aa1:	eb d1                	jmp    1a74 <phase_5+0x12>
    1aa3:	83 f9 32             	cmp    $0x32,%ecx
    1aa6:	75 02                	jne    1aaa <phase_5+0x48>
    1aa8:	5b                   	pop    %rbx
    1aa9:	c3                   	ret    
    1aaa:	e8 f2 06 00 00       	call   21a1 <explode_bomb>
    1aaf:	eb f7                	jmp    1aa8 <phase_5+0x46>

0000000000001ab1 <phase_6>:
    1ab1:	f3 0f 1e fa          	endbr64 
    1ab5:	41 54                	push   %r12
    1ab7:	55                   	push   %rbp
    1ab8:	53                   	push   %rbx
    1ab9:	48 83 ec 60          	sub    $0x60,%rsp
    1abd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ac4:	00 00 
    1ac6:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1acb:	31 c0                	xor    %eax,%eax
    1acd:	48 89 e6             	mov    %rsp,%rsi
    1ad0:	e8 ba 07 00 00       	call   228f <read_six_numbers>
    1ad5:	bd 00 00 00 00       	mov    $0x0,%ebp
    1ada:	eb 27                	jmp    1b03 <phase_6+0x52>
    1adc:	e8 c0 06 00 00       	call   21a1 <explode_bomb>
    1ae1:	eb 33                	jmp    1b16 <phase_6+0x65>
    1ae3:	83 c3 01             	add    $0x1,%ebx
    1ae6:	83 fb 05             	cmp    $0x5,%ebx
    1ae9:	7f 15                	jg     1b00 <phase_6+0x4f>
    1aeb:	48 63 c5             	movslq %ebp,%rax
    1aee:	48 63 d3             	movslq %ebx,%rdx
    1af1:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1af4:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1af7:	75 ea                	jne    1ae3 <phase_6+0x32>
    1af9:	e8 a3 06 00 00       	call   21a1 <explode_bomb>
    1afe:	eb e3                	jmp    1ae3 <phase_6+0x32>
    1b00:	44 89 e5             	mov    %r12d,%ebp
    1b03:	83 fd 05             	cmp    $0x5,%ebp
    1b06:	7f 17                	jg     1b1f <phase_6+0x6e>
    1b08:	48 63 c5             	movslq %ebp,%rax
    1b0b:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1b0e:	83 e8 01             	sub    $0x1,%eax
    1b11:	83 f8 05             	cmp    $0x5,%eax
    1b14:	77 c6                	ja     1adc <phase_6+0x2b>
    1b16:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1b1a:	44 89 e3             	mov    %r12d,%ebx
    1b1d:	eb c7                	jmp    1ae6 <phase_6+0x35>
    1b1f:	be 00 00 00 00       	mov    $0x0,%esi
    1b24:	eb 08                	jmp    1b2e <phase_6+0x7d>
    1b26:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1b2b:	83 c6 01             	add    $0x1,%esi
    1b2e:	83 fe 05             	cmp    $0x5,%esi
    1b31:	7f 1d                	jg     1b50 <phase_6+0x9f>
    1b33:	b8 01 00 00 00       	mov    $0x1,%eax
    1b38:	48 8d 15 11 65 00 00 	lea    0x6511(%rip),%rdx        # 8050 <node1>
    1b3f:	48 63 ce             	movslq %esi,%rcx
    1b42:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1b45:	7e df                	jle    1b26 <phase_6+0x75>
    1b47:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1b4b:	83 c0 01             	add    $0x1,%eax
    1b4e:	eb ef                	jmp    1b3f <phase_6+0x8e>
    1b50:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1b55:	48 89 d9             	mov    %rbx,%rcx
    1b58:	b8 01 00 00 00       	mov    $0x1,%eax
    1b5d:	eb 12                	jmp    1b71 <phase_6+0xc0>
    1b5f:	48 63 d0             	movslq %eax,%rdx
    1b62:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1b67:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1b6b:	83 c0 01             	add    $0x1,%eax
    1b6e:	48 89 d1             	mov    %rdx,%rcx
    1b71:	83 f8 05             	cmp    $0x5,%eax
    1b74:	7e e9                	jle    1b5f <phase_6+0xae>
    1b76:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1b7d:	00 
    1b7e:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b83:	eb 07                	jmp    1b8c <phase_6+0xdb>
    1b85:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1b89:	83 c5 01             	add    $0x1,%ebp
    1b8c:	83 fd 04             	cmp    $0x4,%ebp
    1b8f:	7f 11                	jg     1ba2 <phase_6+0xf1>
    1b91:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1b95:	8b 00                	mov    (%rax),%eax
    1b97:	39 03                	cmp    %eax,(%rbx)
    1b99:	7e ea                	jle    1b85 <phase_6+0xd4>
    1b9b:	e8 01 06 00 00       	call   21a1 <explode_bomb>
    1ba0:	eb e3                	jmp    1b85 <phase_6+0xd4>
    1ba2:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1ba7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1bae:	00 00 
    1bb0:	75 09                	jne    1bbb <phase_6+0x10a>
    1bb2:	48 83 c4 60          	add    $0x60,%rsp
    1bb6:	5b                   	pop    %rbx
    1bb7:	5d                   	pop    %rbp
    1bb8:	41 5c                	pop    %r12
    1bba:	c3                   	ret    
    1bbb:	e8 c0 f6 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001bc0 <emulate_fsm>:
    1bc0:	f3 0f 1e fa          	endbr64 
    1bc4:	55                   	push   %rbp
    1bc5:	53                   	push   %rbx
    1bc6:	48 83 ec 08          	sub    $0x8,%rsp
    1bca:	89 fd                	mov    %edi,%ebp
    1bcc:	48 89 f3             	mov    %rsi,%rbx
    1bcf:	eb 27                	jmp    1bf8 <emulate_fsm+0x38>
    1bd1:	0f be 03             	movsbl (%rbx),%eax
    1bd4:	83 e8 30             	sub    $0x30,%eax
    1bd7:	48 63 ed             	movslq %ebp,%rbp
    1bda:	48 98                	cltq   
    1bdc:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
    1be3:	00 
    1be4:	48 29 c7             	sub    %rax,%rdi
    1be7:	48 01 ef             	add    %rbp,%rdi
    1bea:	48 8d 05 ef 27 00 00 	lea    0x27ef(%rip),%rax        # 43e0 <transition_table>
    1bf1:	8b 2c b8             	mov    (%rax,%rdi,4),%ebp
    1bf4:	48 83 c3 01          	add    $0x1,%rbx
    1bf8:	0f b6 03             	movzbl (%rbx),%eax
    1bfb:	84 c0                	test   %al,%al
    1bfd:	74 0e                	je     1c0d <emulate_fsm+0x4d>
    1bff:	83 e8 30             	sub    $0x30,%eax
    1c02:	3c 01                	cmp    $0x1,%al
    1c04:	76 cb                	jbe    1bd1 <emulate_fsm+0x11>
    1c06:	e8 96 05 00 00       	call   21a1 <explode_bomb>
    1c0b:	eb c4                	jmp    1bd1 <emulate_fsm+0x11>
    1c0d:	89 e8                	mov    %ebp,%eax
    1c0f:	48 83 c4 08          	add    $0x8,%rsp
    1c13:	5b                   	pop    %rbx
    1c14:	5d                   	pop    %rbp
    1c15:	c3                   	ret    

0000000000001c16 <check_synchronizing_sequence>:
    1c16:	f3 0f 1e fa          	endbr64 
    1c1a:	41 54                	push   %r12
    1c1c:	55                   	push   %rbp
    1c1d:	53                   	push   %rbx
    1c1e:	48 89 fd             	mov    %rdi,%rbp
    1c21:	48 89 fe             	mov    %rdi,%rsi
    1c24:	bf 00 00 00 00       	mov    $0x0,%edi
    1c29:	e8 92 ff ff ff       	call   1bc0 <emulate_fsm>
    1c2e:	41 89 c4             	mov    %eax,%r12d
    1c31:	bb 01 00 00 00       	mov    $0x1,%ebx
    1c36:	83 fb 06             	cmp    $0x6,%ebx
    1c39:	7f 14                	jg     1c4f <check_synchronizing_sequence+0x39>
    1c3b:	48 89 ee             	mov    %rbp,%rsi
    1c3e:	89 df                	mov    %ebx,%edi
    1c40:	e8 7b ff ff ff       	call   1bc0 <emulate_fsm>
    1c45:	44 39 e0             	cmp    %r12d,%eax
    1c48:	75 0f                	jne    1c59 <check_synchronizing_sequence+0x43>
    1c4a:	83 c3 01             	add    $0x1,%ebx
    1c4d:	eb e7                	jmp    1c36 <check_synchronizing_sequence+0x20>
    1c4f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c54:	5b                   	pop    %rbx
    1c55:	5d                   	pop    %rbp
    1c56:	41 5c                	pop    %r12
    1c58:	c3                   	ret    
    1c59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c5e:	eb f4                	jmp    1c54 <check_synchronizing_sequence+0x3e>

0000000000001c60 <secret_phase>:
    1c60:	f3 0f 1e fa          	endbr64 
    1c64:	55                   	push   %rbp
    1c65:	53                   	push   %rbx
    1c66:	48 83 ec 18          	sub    $0x18,%rsp
    1c6a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c71:	00 00 
    1c73:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1c78:	31 c0                	xor    %eax,%eax
    1c7a:	e8 55 06 00 00       	call   22d4 <read_line>
    1c7f:	48 89 c5             	mov    %rax,%rbp
    1c82:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c87:	eb 08                	jmp    1c91 <secret_phase+0x31>
    1c89:	e8 13 05 00 00       	call   21a1 <explode_bomb>
    1c8e:	83 c3 01             	add    $0x1,%ebx
    1c91:	48 63 c3             	movslq %ebx,%rax
    1c94:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1c99:	74 07                	je     1ca2 <secret_phase+0x42>
    1c9b:	83 fb 18             	cmp    $0x18,%ebx
    1c9e:	7e ee                	jle    1c8e <secret_phase+0x2e>
    1ca0:	eb e7                	jmp    1c89 <secret_phase+0x29>
    1ca2:	48 89 ef             	mov    %rbp,%rdi
    1ca5:	e8 6c ff ff ff       	call   1c16 <check_synchronizing_sequence>
    1caa:	85 c0                	test   %eax,%eax
    1cac:	75 69                	jne    1d17 <secret_phase+0xb7>
    1cae:	48 8d 3d b3 25 00 00 	lea    0x25b3(%rip),%rdi        # 4268 <_IO_stdin_used+0x268>
    1cb5:	e8 a6 f5 ff ff       	call   1260 <puts@plt>
    1cba:	48 8d 3d df 25 00 00 	lea    0x25df(%rip),%rdi        # 42a0 <_IO_stdin_used+0x2a0>
    1cc1:	e8 9a f5 ff ff       	call   1260 <puts@plt>
    1cc6:	48 8d 3d 13 26 00 00 	lea    0x2613(%rip),%rdi        # 42e0 <_IO_stdin_used+0x2e0>
    1ccd:	e8 8e f5 ff ff       	call   1260 <puts@plt>
    1cd2:	48 8d 3d 3f 26 00 00 	lea    0x263f(%rip),%rdi        # 4318 <_IO_stdin_used+0x318>
    1cd9:	e8 82 f5 ff ff       	call   1260 <puts@plt>
    1cde:	48 8d 3d 73 26 00 00 	lea    0x2673(%rip),%rdi        # 4358 <_IO_stdin_used+0x358>
    1ce5:	e8 76 f5 ff ff       	call   1260 <puts@plt>
    1cea:	48 8d 3d bd 24 00 00 	lea    0x24bd(%rip),%rdi        # 41ae <_IO_stdin_used+0x1ae>
    1cf1:	e8 6a f5 ff ff       	call   1260 <puts@plt>
    1cf6:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1cfb:	e8 1f 07 00 00       	call   241f <phase_defused>
    1d00:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1d05:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d0c:	00 00 
    1d0e:	75 0e                	jne    1d1e <secret_phase+0xbe>
    1d10:	48 83 c4 18          	add    $0x18,%rsp
    1d14:	5b                   	pop    %rbx
    1d15:	5d                   	pop    %rbp
    1d16:	c3                   	ret    
    1d17:	e8 85 04 00 00       	call   21a1 <explode_bomb>
    1d1c:	eb 90                	jmp    1cae <secret_phase+0x4e>
    1d1e:	e8 5d f5 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001d23 <sig_handler>:
    1d23:	f3 0f 1e fa          	endbr64 
    1d27:	50                   	push   %rax
    1d28:	58                   	pop    %rax
    1d29:	48 83 ec 08          	sub    $0x8,%rsp
    1d2d:	48 8d 3d e4 26 00 00 	lea    0x26e4(%rip),%rdi        # 4418 <transition_table+0x38>
    1d34:	e8 27 f5 ff ff       	call   1260 <puts@plt>
    1d39:	bf 03 00 00 00       	mov    $0x3,%edi
    1d3e:	e8 5d f6 ff ff       	call   13a0 <sleep@plt>
    1d43:	48 8d 35 47 29 00 00 	lea    0x2947(%rip),%rsi        # 4691 <transition_table+0x2b1>
    1d4a:	bf 01 00 00 00       	mov    $0x1,%edi
    1d4f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d54:	e8 e7 f5 ff ff       	call   1340 <__printf_chk@plt>
    1d59:	48 8b 3d 00 67 00 00 	mov    0x6700(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1d60:	e8 bb f5 ff ff       	call   1320 <fflush@plt>
    1d65:	bf 01 00 00 00       	mov    $0x1,%edi
    1d6a:	e8 31 f6 ff ff       	call   13a0 <sleep@plt>
    1d6f:	48 8d 3d 23 29 00 00 	lea    0x2923(%rip),%rdi        # 4699 <transition_table+0x2b9>
    1d76:	e8 e5 f4 ff ff       	call   1260 <puts@plt>
    1d7b:	bf 10 00 00 00       	mov    $0x10,%edi
    1d80:	e8 eb f5 ff ff       	call   1370 <exit@plt>

0000000000001d85 <invalid_phase>:
    1d85:	f3 0f 1e fa          	endbr64 
    1d89:	50                   	push   %rax
    1d8a:	58                   	pop    %rax
    1d8b:	48 83 ec 08          	sub    $0x8,%rsp
    1d8f:	48 89 fa             	mov    %rdi,%rdx
    1d92:	48 8d 35 08 29 00 00 	lea    0x2908(%rip),%rsi        # 46a1 <transition_table+0x2c1>
    1d99:	bf 01 00 00 00       	mov    $0x1,%edi
    1d9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1da3:	e8 98 f5 ff ff       	call   1340 <__printf_chk@plt>
    1da8:	bf 08 00 00 00       	mov    $0x8,%edi
    1dad:	e8 be f5 ff ff       	call   1370 <exit@plt>

0000000000001db2 <string_length>:
    1db2:	f3 0f 1e fa          	endbr64 
    1db6:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbb:	80 3f 00             	cmpb   $0x0,(%rdi)
    1dbe:	74 09                	je     1dc9 <string_length+0x17>
    1dc0:	48 83 c7 01          	add    $0x1,%rdi
    1dc4:	83 c0 01             	add    $0x1,%eax
    1dc7:	eb f2                	jmp    1dbb <string_length+0x9>
    1dc9:	c3                   	ret    

0000000000001dca <strings_not_equal>:
    1dca:	f3 0f 1e fa          	endbr64 
    1dce:	41 54                	push   %r12
    1dd0:	55                   	push   %rbp
    1dd1:	53                   	push   %rbx
    1dd2:	48 89 fb             	mov    %rdi,%rbx
    1dd5:	48 89 f5             	mov    %rsi,%rbp
    1dd8:	e8 d5 ff ff ff       	call   1db2 <string_length>
    1ddd:	41 89 c4             	mov    %eax,%r12d
    1de0:	48 89 ef             	mov    %rbp,%rdi
    1de3:	e8 ca ff ff ff       	call   1db2 <string_length>
    1de8:	41 39 c4             	cmp    %eax,%r12d
    1deb:	75 1d                	jne    1e0a <strings_not_equal+0x40>
    1ded:	0f b6 03             	movzbl (%rbx),%eax
    1df0:	84 c0                	test   %al,%al
    1df2:	74 0f                	je     1e03 <strings_not_equal+0x39>
    1df4:	38 45 00             	cmp    %al,0x0(%rbp)
    1df7:	75 1b                	jne    1e14 <strings_not_equal+0x4a>
    1df9:	48 83 c3 01          	add    $0x1,%rbx
    1dfd:	48 83 c5 01          	add    $0x1,%rbp
    1e01:	eb ea                	jmp    1ded <strings_not_equal+0x23>
    1e03:	b8 00 00 00 00       	mov    $0x0,%eax
    1e08:	eb 05                	jmp    1e0f <strings_not_equal+0x45>
    1e0a:	b8 01 00 00 00       	mov    $0x1,%eax
    1e0f:	5b                   	pop    %rbx
    1e10:	5d                   	pop    %rbp
    1e11:	41 5c                	pop    %r12
    1e13:	c3                   	ret    
    1e14:	b8 01 00 00 00       	mov    $0x1,%eax
    1e19:	eb f4                	jmp    1e0f <strings_not_equal+0x45>

0000000000001e1b <initialize_bomb>:
    1e1b:	f3 0f 1e fa          	endbr64 
    1e1f:	55                   	push   %rbp
    1e20:	53                   	push   %rbx
    1e21:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1e28:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1e2d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1e34:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1e39:	48 83 ec 58          	sub    $0x58,%rsp
    1e3d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e44:	00 00 
    1e46:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1e4d:	00 
    1e4e:	31 c0                	xor    %eax,%eax
    1e50:	48 8d 35 cc fe ff ff 	lea    -0x134(%rip),%rsi        # 1d23 <sig_handler>
    1e57:	bf 02 00 00 00       	mov    $0x2,%edi
    1e5c:	e8 6f f4 ff ff       	call   12d0 <signal@plt>
    1e61:	48 89 e7             	mov    %rsp,%rdi
    1e64:	be 40 00 00 00       	mov    $0x40,%esi
    1e69:	e8 f2 f4 ff ff       	call   1360 <gethostname@plt>
    1e6e:	85 c0                	test   %eax,%eax
    1e70:	75 06                	jne    1e78 <initialize_bomb+0x5d>
    1e72:	89 c5                	mov    %eax,%ebp
    1e74:	89 c3                	mov    %eax,%ebx
    1e76:	eb 19                	jmp    1e91 <initialize_bomb+0x76>
    1e78:	48 8d 3d d1 25 00 00 	lea    0x25d1(%rip),%rdi        # 4450 <transition_table+0x70>
    1e7f:	e8 dc f3 ff ff       	call   1260 <puts@plt>
    1e84:	bf 08 00 00 00       	mov    $0x8,%edi
    1e89:	e8 e2 f4 ff ff       	call   1370 <exit@plt>
    1e8e:	83 c3 01             	add    $0x1,%ebx
    1e91:	48 63 c3             	movslq %ebx,%rax
    1e94:	48 8d 15 05 62 00 00 	lea    0x6205(%rip),%rdx        # 80a0 <host_table>
    1e9b:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    1e9f:	48 85 ff             	test   %rdi,%rdi
    1ea2:	74 11                	je     1eb5 <initialize_bomb+0x9a>
    1ea4:	48 89 e6             	mov    %rsp,%rsi
    1ea7:	e8 84 f3 ff ff       	call   1230 <strcasecmp@plt>
    1eac:	85 c0                	test   %eax,%eax
    1eae:	75 de                	jne    1e8e <initialize_bomb+0x73>
    1eb0:	bd 01 00 00 00       	mov    $0x1,%ebp
    1eb5:	85 ed                	test   %ebp,%ebp
    1eb7:	90                   	nop
    1eb8:	90                   	nop
    1eb9:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1ebe:	e8 60 11 00 00       	call   3023 <init_driver>
    1ec3:	85 c0                	test   %eax,%eax
    1ec5:	78 43                	js     1f0a <initialize_bomb+0xef>
    1ec7:	bf 04 00 00 00       	mov    $0x4,%edi
    1ecc:	e8 3f f4 ff ff       	call   1310 <malloc@plt>
    1ed1:	c7 00 11 fa 22 20    	movl   $0x2022fa11,(%rax)
    1ed7:	48 8b 8c 24 48 20 00 	mov    0x2048(%rsp),%rcx
    1ede:	00 
    1edf:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1ee6:	00 00 
    1ee8:	75 45                	jne    1f2f <initialize_bomb+0x114>
    1eea:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1ef1:	5b                   	pop    %rbx
    1ef2:	5d                   	pop    %rbp
    1ef3:	c3                   	ret    
    1ef4:	48 8d 3d 8d 25 00 00 	lea    0x258d(%rip),%rdi        # 4488 <transition_table+0xa8>
    1efb:	e8 60 f3 ff ff       	call   1260 <puts@plt>
    1f00:	bf 08 00 00 00       	mov    $0x8,%edi
    1f05:	e8 66 f4 ff ff       	call   1370 <exit@plt>
    1f0a:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1f0f:	48 8d 35 9c 27 00 00 	lea    0x279c(%rip),%rsi        # 46b2 <transition_table+0x2d2>
    1f16:	bf 01 00 00 00       	mov    $0x1,%edi
    1f1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f20:	e8 1b f4 ff ff       	call   1340 <__printf_chk@plt>
    1f25:	bf 08 00 00 00       	mov    $0x8,%edi
    1f2a:	e8 41 f4 ff ff       	call   1370 <exit@plt>
    1f2f:	e8 4c f3 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001f34 <initialize_bomb_solve>:
    1f34:	f3 0f 1e fa          	endbr64 
    1f38:	c3                   	ret    

0000000000001f39 <blank_line>:
    1f39:	f3 0f 1e fa          	endbr64 
    1f3d:	55                   	push   %rbp
    1f3e:	53                   	push   %rbx
    1f3f:	48 83 ec 08          	sub    $0x8,%rsp
    1f43:	48 89 fd             	mov    %rdi,%rbp
    1f46:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1f4a:	84 db                	test   %bl,%bl
    1f4c:	74 1e                	je     1f6c <blank_line+0x33>
    1f4e:	e8 5d f4 ff ff       	call   13b0 <__ctype_b_loc@plt>
    1f53:	48 8b 00             	mov    (%rax),%rax
    1f56:	48 83 c5 01          	add    $0x1,%rbp
    1f5a:	48 0f be db          	movsbq %bl,%rbx
    1f5e:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1f63:	75 e1                	jne    1f46 <blank_line+0xd>
    1f65:	b8 00 00 00 00       	mov    $0x0,%eax
    1f6a:	eb 05                	jmp    1f71 <blank_line+0x38>
    1f6c:	b8 01 00 00 00       	mov    $0x1,%eax
    1f71:	48 83 c4 08          	add    $0x8,%rsp
    1f75:	5b                   	pop    %rbx
    1f76:	5d                   	pop    %rbp
    1f77:	c3                   	ret    

0000000000001f78 <skip>:
    1f78:	f3 0f 1e fa          	endbr64 
    1f7c:	53                   	push   %rbx
    1f7d:	48 63 15 08 65 00 00 	movslq 0x6508(%rip),%rdx        # 848c <num_input_strings>
    1f84:	48 89 d0             	mov    %rdx,%rax
    1f87:	48 c1 e0 04          	shl    $0x4,%rax
    1f8b:	48 29 d0             	sub    %rdx,%rax
    1f8e:	48 8d 15 0b 65 00 00 	lea    0x650b(%rip),%rdx        # 84a0 <input_strings>
    1f95:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1f99:	48 8b 15 f0 64 00 00 	mov    0x64f0(%rip),%rdx        # 8490 <infile>
    1fa0:	be 78 00 00 00       	mov    $0x78,%esi
    1fa5:	e8 16 f3 ff ff       	call   12c0 <fgets@plt>
    1faa:	48 89 c3             	mov    %rax,%rbx
    1fad:	48 85 c0             	test   %rax,%rax
    1fb0:	74 0c                	je     1fbe <skip+0x46>
    1fb2:	48 89 c7             	mov    %rax,%rdi
    1fb5:	e8 7f ff ff ff       	call   1f39 <blank_line>
    1fba:	85 c0                	test   %eax,%eax
    1fbc:	75 bf                	jne    1f7d <skip+0x5>
    1fbe:	48 89 d8             	mov    %rbx,%rax
    1fc1:	5b                   	pop    %rbx
    1fc2:	c3                   	ret    

0000000000001fc3 <send_msg>:
    1fc3:	f3 0f 1e fa          	endbr64 
    1fc7:	41 55                	push   %r13
    1fc9:	41 54                	push   %r12
    1fcb:	55                   	push   %rbp
    1fcc:	53                   	push   %rbx
    1fcd:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1fd4:	ff 
    1fd5:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1fdc:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1fe1:	4c 39 dc             	cmp    %r11,%rsp
    1fe4:	75 ef                	jne    1fd5 <send_msg+0x12>
    1fe6:	48 83 ec 58          	sub    $0x58,%rsp
    1fea:	89 fa                	mov    %edi,%edx
    1fec:	49 89 f4             	mov    %rsi,%r12
    1fef:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ff6:	00 00 
    1ff8:	48 89 84 24 48 40 00 	mov    %rax,0x4048(%rsp)
    1fff:	00 
    2000:	31 c0                	xor    %eax,%eax
    2002:	8b 35 84 64 00 00    	mov    0x6484(%rip),%esi        # 848c <num_input_strings>
    2008:	8d 46 ff             	lea    -0x1(%rsi),%eax
    200b:	48 98                	cltq   
    200d:	48 89 c1             	mov    %rax,%rcx
    2010:	48 c1 e1 04          	shl    $0x4,%rcx
    2014:	48 29 c1             	sub    %rax,%rcx
    2017:	48 89 c8             	mov    %rcx,%rax
    201a:	48 8d 0d 7f 64 00 00 	lea    0x647f(%rip),%rcx        # 84a0 <input_strings>
    2021:	4c 8d 04 c1          	lea    (%rcx,%rax,8),%r8
    2025:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    202c:	b8 00 00 00 00       	mov    $0x0,%eax
    2031:	4c 89 c7             	mov    %r8,%rdi
    2034:	f2 ae                	repnz scas %es:(%rdi),%al
    2036:	48 89 c8             	mov    %rcx,%rax
    2039:	48 f7 d0             	not    %rax
    203c:	48 83 c0 63          	add    $0x63,%rax
    2040:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2046:	0f 87 b3 00 00 00    	ja     20ff <send_msg+0x13c>
    204c:	85 d2                	test   %edx,%edx
    204e:	0f 84 cb 00 00 00    	je     211f <send_msg+0x15c>
    2054:	48 8d 05 7a 26 00 00 	lea    0x267a(%rip),%rax        # 46d5 <transition_table+0x2f5>
    205b:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
    2060:	48 83 ec 08          	sub    $0x8,%rsp
    2064:	41 50                	push   %r8
    2066:	56                   	push   %rsi
    2067:	50                   	push   %rax
    2068:	4c 8d 0d d1 57 00 00 	lea    0x57d1(%rip),%r9        # 7840 <authkey>
    206f:	44 8b 05 ca 5f 00 00 	mov    0x5fca(%rip),%r8d        # 8040 <bomb_id>
    2076:	48 8d 0d 60 26 00 00 	lea    0x2660(%rip),%rcx        # 46dd <transition_table+0x2fd>
    207d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2082:	be 01 00 00 00       	mov    $0x1,%esi
    2087:	48 89 df             	mov    %rbx,%rdi
    208a:	b8 00 00 00 00       	mov    $0x0,%eax
    208f:	e8 2c f3 ff ff       	call   13c0 <__sprintf_chk@plt>
    2094:	48 83 c4 20          	add    $0x20,%rsp
    2098:	4c 8d 8c 24 40 20 00 	lea    0x2040(%rsp),%r9
    209f:	00 
    20a0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    20a6:	48 89 d9             	mov    %rbx,%rcx
    20a9:	48 8d 15 90 4f 00 00 	lea    0x4f90(%rip),%rdx        # 7040 <lab>
    20b0:	48 8d 35 89 53 00 00 	lea    0x5389(%rip),%rsi        # 7440 <course>
    20b7:	48 8d 3d 82 5b 00 00 	lea    0x5b82(%rip),%rdi        # 7c40 <userid>
    20be:	e8 70 11 00 00       	call   3233 <driver_post>
    20c3:	89 c5                	mov    %eax,%ebp
    20c5:	48 89 e7             	mov    %rsp,%rdi
    20c8:	be 40 00 00 00       	mov    $0x40,%esi
    20cd:	e8 8e f2 ff ff       	call   1360 <gethostname@plt>
    20d2:	41 89 c5             	mov    %eax,%r13d
    20d5:	85 c0                	test   %eax,%eax
    20d7:	75 52                	jne    212b <send_msg+0x168>
    20d9:	89 c3                	mov    %eax,%ebx
    20db:	48 63 c3             	movslq %ebx,%rax
    20de:	48 8d 15 bb 5f 00 00 	lea    0x5fbb(%rip),%rdx        # 80a0 <host_table>
    20e5:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    20e9:	48 85 ff             	test   %rdi,%rdi
    20ec:	74 59                	je     2147 <send_msg+0x184>
    20ee:	48 89 e6             	mov    %rsp,%rsi
    20f1:	e8 3a f1 ff ff       	call   1230 <strcasecmp@plt>
    20f6:	85 c0                	test   %eax,%eax
    20f8:	74 47                	je     2141 <send_msg+0x17e>
    20fa:	83 c3 01             	add    $0x1,%ebx
    20fd:	eb dc                	jmp    20db <send_msg+0x118>
    20ff:	48 8d 35 ba 23 00 00 	lea    0x23ba(%rip),%rsi        # 44c0 <transition_table+0xe0>
    2106:	bf 01 00 00 00       	mov    $0x1,%edi
    210b:	b8 00 00 00 00       	mov    $0x0,%eax
    2110:	e8 2b f2 ff ff       	call   1340 <__printf_chk@plt>
    2115:	bf 08 00 00 00       	mov    $0x8,%edi
    211a:	e8 51 f2 ff ff       	call   1370 <exit@plt>
    211f:	48 8d 05 a6 25 00 00 	lea    0x25a6(%rip),%rax        # 46cc <transition_table+0x2ec>
    2126:	e9 30 ff ff ff       	jmp    205b <send_msg+0x98>
    212b:	48 8d 3d b6 23 00 00 	lea    0x23b6(%rip),%rdi        # 44e8 <transition_table+0x108>
    2132:	e8 29 f1 ff ff       	call   1260 <puts@plt>
    2137:	bf 08 00 00 00       	mov    $0x8,%edi
    213c:	e8 2f f2 ff ff       	call   1370 <exit@plt>
    2141:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2147:	41 83 fd 01          	cmp    $0x1,%r13d
    214b:	74 25                	je     2172 <send_msg+0x1af>
    214d:	85 ed                	test   %ebp,%ebp
    214f:	78 34                	js     2185 <send_msg+0x1c2>
    2151:	48 8b 84 24 48 40 00 	mov    0x4048(%rsp),%rax
    2158:	00 
    2159:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2160:	00 00 
    2162:	75 38                	jne    219c <send_msg+0x1d9>
    2164:	48 81 c4 58 40 00 00 	add    $0x4058,%rsp
    216b:	5b                   	pop    %rbx
    216c:	5d                   	pop    %rbp
    216d:	41 5c                	pop    %r12
    216f:	41 5d                	pop    %r13
    2171:	c3                   	ret    
    2172:	48 63 db             	movslq %ebx,%rbx
    2175:	48 8d 05 44 26 00 00 	lea    0x2644(%rip),%rax        # 47c0 <secret_tokens>
    217c:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    217f:	41 89 04 24          	mov    %eax,(%r12)
    2183:	eb c8                	jmp    214d <send_msg+0x18a>
    2185:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
    218c:	00 
    218d:	e8 ce f0 ff ff       	call   1260 <puts@plt>
    2192:	bf 00 00 00 00       	mov    $0x0,%edi
    2197:	e8 d4 f1 ff ff       	call   1370 <exit@plt>
    219c:	e8 df f0 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000021a1 <explode_bomb>:
    21a1:	f3 0f 1e fa          	endbr64 
    21a5:	55                   	push   %rbp
    21a6:	53                   	push   %rbx
    21a7:	48 83 ec 68          	sub    $0x68,%rsp
    21ab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    21b2:	00 00 
    21b4:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    21b9:	31 c0                	xor    %eax,%eax
    21bb:	48 8d 3d 2a 25 00 00 	lea    0x252a(%rip),%rdi        # 46ec <transition_table+0x30c>
    21c2:	e8 99 f0 ff ff       	call   1260 <puts@plt>
    21c7:	48 8d 3d 27 25 00 00 	lea    0x2527(%rip),%rdi        # 46f5 <transition_table+0x315>
    21ce:	e8 8d f0 ff ff       	call   1260 <puts@plt>
    21d3:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    21d8:	be 40 00 00 00       	mov    $0x40,%esi
    21dd:	e8 7e f1 ff ff       	call   1360 <gethostname@plt>
    21e2:	85 c0                	test   %eax,%eax
    21e4:	75 2a                	jne    2210 <explode_bomb+0x6f>
    21e6:	89 c5                	mov    %eax,%ebp
    21e8:	89 c3                	mov    %eax,%ebx
    21ea:	48 63 c3             	movslq %ebx,%rax
    21ed:	48 8d 15 ac 5e 00 00 	lea    0x5eac(%rip),%rdx        # 80a0 <host_table>
    21f4:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    21f8:	48 85 ff             	test   %rdi,%rdi
    21fb:	74 2e                	je     222b <explode_bomb+0x8a>
    21fd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    2202:	e8 29 f0 ff ff       	call   1230 <strcasecmp@plt>
    2207:	85 c0                	test   %eax,%eax
    2209:	74 1b                	je     2226 <explode_bomb+0x85>
    220b:	83 c3 01             	add    $0x1,%ebx
    220e:	eb da                	jmp    21ea <explode_bomb+0x49>
    2210:	48 8d 3d d1 22 00 00 	lea    0x22d1(%rip),%rdi        # 44e8 <transition_table+0x108>
    2217:	e8 44 f0 ff ff       	call   1260 <puts@plt>
    221c:	bf 08 00 00 00       	mov    $0x8,%edi
    2221:	e8 4a f1 ff ff       	call   1370 <exit@plt>
    2226:	bd 01 00 00 00       	mov    $0x1,%ebp
    222b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    2232:	00 
    2233:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    2238:	bf 00 00 00 00       	mov    $0x0,%edi
    223d:	e8 81 fd ff ff       	call   1fc3 <send_msg>
    2242:	48 63 db             	movslq %ebx,%rbx
    2245:	48 8d 05 74 25 00 00 	lea    0x2574(%rip),%rax        # 47c0 <secret_tokens>
    224c:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    2250:	39 0c 98             	cmp    %ecx,(%rax,%rbx,4)
    2253:	75 04                	jne    2259 <explode_bomb+0xb8>
    2255:	85 ed                	test   %ebp,%ebp
    2257:	75 20                	jne    2279 <explode_bomb+0xd8>
    2259:	48 8d 35 b0 22 00 00 	lea    0x22b0(%rip),%rsi        # 4510 <transition_table+0x130>
    2260:	bf 01 00 00 00       	mov    $0x1,%edi
    2265:	b8 00 00 00 00       	mov    $0x0,%eax
    226a:	e8 d1 f0 ff ff       	call   1340 <__printf_chk@plt>
    226f:	bf 08 00 00 00       	mov    $0x8,%edi
    2274:	e8 f7 f0 ff ff       	call   1370 <exit@plt>
    2279:	48 8d 3d d8 22 00 00 	lea    0x22d8(%rip),%rdi        # 4558 <transition_table+0x178>
    2280:	e8 db ef ff ff       	call   1260 <puts@plt>
    2285:	bf 08 00 00 00       	mov    $0x8,%edi
    228a:	e8 e1 f0 ff ff       	call   1370 <exit@plt>

000000000000228f <read_six_numbers>:
    228f:	f3 0f 1e fa          	endbr64 
    2293:	48 83 ec 08          	sub    $0x8,%rsp
    2297:	48 89 f2             	mov    %rsi,%rdx
    229a:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    229e:	48 8d 46 14          	lea    0x14(%rsi),%rax
    22a2:	50                   	push   %rax
    22a3:	48 8d 46 10          	lea    0x10(%rsi),%rax
    22a7:	50                   	push   %rax
    22a8:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    22ac:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    22b0:	48 8d 35 55 24 00 00 	lea    0x2455(%rip),%rsi        # 470c <transition_table+0x32c>
    22b7:	b8 00 00 00 00       	mov    $0x0,%eax
    22bc:	e8 6f f0 ff ff       	call   1330 <__isoc99_sscanf@plt>
    22c1:	48 83 c4 10          	add    $0x10,%rsp
    22c5:	83 f8 05             	cmp    $0x5,%eax
    22c8:	7e 05                	jle    22cf <read_six_numbers+0x40>
    22ca:	48 83 c4 08          	add    $0x8,%rsp
    22ce:	c3                   	ret    
    22cf:	e8 cd fe ff ff       	call   21a1 <explode_bomb>

00000000000022d4 <read_line>:
    22d4:	f3 0f 1e fa          	endbr64 
    22d8:	48 83 ec 08          	sub    $0x8,%rsp
    22dc:	b8 00 00 00 00       	mov    $0x0,%eax
    22e1:	e8 92 fc ff ff       	call   1f78 <skip>
    22e6:	48 85 c0             	test   %rax,%rax
    22e9:	74 72                	je     235d <read_line+0x89>
    22eb:	8b 15 9b 61 00 00    	mov    0x619b(%rip),%edx        # 848c <num_input_strings>
    22f1:	48 63 ca             	movslq %edx,%rcx
    22f4:	48 89 c8             	mov    %rcx,%rax
    22f7:	48 c1 e0 04          	shl    $0x4,%rax
    22fb:	48 29 c8             	sub    %rcx,%rax
    22fe:	48 8d 0d 9b 61 00 00 	lea    0x619b(%rip),%rcx        # 84a0 <input_strings>
    2305:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    2309:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2310:	b8 00 00 00 00       	mov    $0x0,%eax
    2315:	48 89 f7             	mov    %rsi,%rdi
    2318:	f2 ae                	repnz scas %es:(%rdi),%al
    231a:	48 f7 d1             	not    %rcx
    231d:	48 83 e9 01          	sub    $0x1,%rcx
    2321:	83 f9 76             	cmp    $0x76,%ecx
    2324:	0f 8f ab 00 00 00    	jg     23d5 <read_line+0x101>
    232a:	83 e9 01             	sub    $0x1,%ecx
    232d:	48 63 c9             	movslq %ecx,%rcx
    2330:	48 63 fa             	movslq %edx,%rdi
    2333:	48 89 f8             	mov    %rdi,%rax
    2336:	48 c1 e0 04          	shl    $0x4,%rax
    233a:	48 29 f8             	sub    %rdi,%rax
    233d:	48 8d 3d 5c 61 00 00 	lea    0x615c(%rip),%rdi        # 84a0 <input_strings>
    2344:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
    2348:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    234c:	83 c2 01             	add    $0x1,%edx
    234f:	89 15 37 61 00 00    	mov    %edx,0x6137(%rip)        # 848c <num_input_strings>
    2355:	48 89 f0             	mov    %rsi,%rax
    2358:	48 83 c4 08          	add    $0x8,%rsp
    235c:	c3                   	ret    
    235d:	48 8b 05 0c 61 00 00 	mov    0x610c(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    2364:	48 39 05 25 61 00 00 	cmp    %rax,0x6125(%rip)        # 8490 <infile>
    236b:	74 1b                	je     2388 <read_line+0xb4>
    236d:	48 8d 3d c8 23 00 00 	lea    0x23c8(%rip),%rdi        # 473c <transition_table+0x35c>
    2374:	e8 97 ee ff ff       	call   1210 <getenv@plt>
    2379:	48 85 c0             	test   %rax,%rax
    237c:	74 20                	je     239e <read_line+0xca>
    237e:	bf 00 00 00 00       	mov    $0x0,%edi
    2383:	e8 e8 ef ff ff       	call   1370 <exit@plt>
    2388:	48 8d 3d 8f 23 00 00 	lea    0x238f(%rip),%rdi        # 471e <transition_table+0x33e>
    238f:	e8 cc ee ff ff       	call   1260 <puts@plt>
    2394:	bf 08 00 00 00       	mov    $0x8,%edi
    2399:	e8 d2 ef ff ff       	call   1370 <exit@plt>
    239e:	48 8b 05 cb 60 00 00 	mov    0x60cb(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    23a5:	48 89 05 e4 60 00 00 	mov    %rax,0x60e4(%rip)        # 8490 <infile>
    23ac:	b8 00 00 00 00       	mov    $0x0,%eax
    23b1:	e8 c2 fb ff ff       	call   1f78 <skip>
    23b6:	48 85 c0             	test   %rax,%rax
    23b9:	0f 85 2c ff ff ff    	jne    22eb <read_line+0x17>
    23bf:	48 8d 3d 58 23 00 00 	lea    0x2358(%rip),%rdi        # 471e <transition_table+0x33e>
    23c6:	e8 95 ee ff ff       	call   1260 <puts@plt>
    23cb:	bf 00 00 00 00       	mov    $0x0,%edi
    23d0:	e8 9b ef ff ff       	call   1370 <exit@plt>
    23d5:	48 8d 3d 6b 23 00 00 	lea    0x236b(%rip),%rdi        # 4747 <transition_table+0x367>
    23dc:	e8 7f ee ff ff       	call   1260 <puts@plt>
    23e1:	8b 05 a5 60 00 00    	mov    0x60a5(%rip),%eax        # 848c <num_input_strings>
    23e7:	8d 50 01             	lea    0x1(%rax),%edx
    23ea:	89 15 9c 60 00 00    	mov    %edx,0x609c(%rip)        # 848c <num_input_strings>
    23f0:	48 98                	cltq   
    23f2:	48 6b c0 78          	imul   $0x78,%rax,%rax
    23f6:	48 8d 15 a3 60 00 00 	lea    0x60a3(%rip),%rdx        # 84a0 <input_strings>
    23fd:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2404:	75 6e 63 
    2407:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    240e:	2a 2a 00 
    2411:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2415:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    241a:	e8 82 fd ff ff       	call   21a1 <explode_bomb>

000000000000241f <phase_defused>:
    241f:	f3 0f 1e fa          	endbr64 
    2423:	41 54                	push   %r12
    2425:	55                   	push   %rbp
    2426:	53                   	push   %rbx
    2427:	48 83 ec 50          	sub    $0x50,%rsp
    242b:	49 89 fc             	mov    %rdi,%r12
    242e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2435:	00 00 
    2437:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    243c:	31 c0                	xor    %eax,%eax
    243e:	48 89 e7             	mov    %rsp,%rdi
    2441:	be 40 00 00 00       	mov    $0x40,%esi
    2446:	e8 15 ef ff ff       	call   1360 <gethostname@plt>
    244b:	85 c0                	test   %eax,%eax
    244d:	75 06                	jne    2455 <phase_defused+0x36>
    244f:	89 c5                	mov    %eax,%ebp
    2451:	89 c3                	mov    %eax,%ebx
    2453:	eb 19                	jmp    246e <phase_defused+0x4f>
    2455:	48 8d 3d 8c 20 00 00 	lea    0x208c(%rip),%rdi        # 44e8 <transition_table+0x108>
    245c:	e8 ff ed ff ff       	call   1260 <puts@plt>
    2461:	bf 08 00 00 00       	mov    $0x8,%edi
    2466:	e8 05 ef ff ff       	call   1370 <exit@plt>
    246b:	83 c3 01             	add    $0x1,%ebx
    246e:	48 63 c3             	movslq %ebx,%rax
    2471:	48 8d 15 28 5c 00 00 	lea    0x5c28(%rip),%rdx        # 80a0 <host_table>
    2478:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    247c:	48 85 ff             	test   %rdi,%rdi
    247f:	74 11                	je     2492 <phase_defused+0x73>
    2481:	48 89 e6             	mov    %rsp,%rsi
    2484:	e8 a7 ed ff ff       	call   1230 <strcasecmp@plt>
    2489:	85 c0                	test   %eax,%eax
    248b:	75 de                	jne    246b <phase_defused+0x4c>
    248d:	bd 01 00 00 00       	mov    $0x1,%ebp
    2492:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
    2499:	00 
    249a:	4c 89 e6             	mov    %r12,%rsi
    249d:	bf 01 00 00 00       	mov    $0x1,%edi
    24a2:	e8 1c fb ff ff       	call   1fc3 <send_msg>
    24a7:	48 63 db             	movslq %ebx,%rbx
    24aa:	48 8d 05 0f 23 00 00 	lea    0x230f(%rip),%rax        # 47c0 <secret_tokens>
    24b1:	8b 04 98             	mov    (%rax,%rbx,4),%eax
    24b4:	41 39 04 24          	cmp    %eax,(%r12)
    24b8:	75 2a                	jne    24e4 <phase_defused+0xc5>
    24ba:	85 ed                	test   %ebp,%ebp
    24bc:	74 26                	je     24e4 <phase_defused+0xc5>
    24be:	83 3d c7 5f 00 00 06 	cmpl   $0x6,0x5fc7(%rip)        # 848c <num_input_strings>
    24c5:	74 3d                	je     2504 <phase_defused+0xe5>
    24c7:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    24cc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    24d3:	00 00 
    24d5:	0f 85 87 00 00 00    	jne    2562 <phase_defused+0x143>
    24db:	48 83 c4 50          	add    $0x50,%rsp
    24df:	5b                   	pop    %rbx
    24e0:	5d                   	pop    %rbp
    24e1:	41 5c                	pop    %r12
    24e3:	c3                   	ret    
    24e4:	48 8d 35 25 20 00 00 	lea    0x2025(%rip),%rsi        # 4510 <transition_table+0x130>
    24eb:	bf 01 00 00 00       	mov    $0x1,%edi
    24f0:	b8 00 00 00 00       	mov    $0x0,%eax
    24f5:	e8 46 ee ff ff       	call   1340 <__printf_chk@plt>
    24fa:	bf 08 00 00 00       	mov    $0x8,%edi
    24ff:	e8 6c ee ff ff       	call   1370 <exit@plt>
    2504:	e8 4f f1 ff ff       	call   1658 <abracadabra>
    2509:	85 c0                	test   %eax,%eax
    250b:	75 1a                	jne    2527 <phase_defused+0x108>
    250d:	48 8d 3d 0c 21 00 00 	lea    0x210c(%rip),%rdi        # 4620 <transition_table+0x240>
    2514:	e8 47 ed ff ff       	call   1260 <puts@plt>
    2519:	48 8d 3d 30 21 00 00 	lea    0x2130(%rip),%rdi        # 4650 <transition_table+0x270>
    2520:	e8 3b ed ff ff       	call   1260 <puts@plt>
    2525:	eb a0                	jmp    24c7 <phase_defused+0xa8>
    2527:	e8 b9 f1 ff ff       	call   16e5 <alohomora>
    252c:	85 c0                	test   %eax,%eax
    252e:	74 24                	je     2554 <phase_defused+0x135>
    2530:	48 8d 3d 49 20 00 00 	lea    0x2049(%rip),%rdi        # 4580 <transition_table+0x1a0>
    2537:	e8 24 ed ff ff       	call   1260 <puts@plt>
    253c:	48 8d 3d 65 20 00 00 	lea    0x2065(%rip),%rdi        # 45a8 <transition_table+0x1c8>
    2543:	e8 18 ed ff ff       	call   1260 <puts@plt>
    2548:	b8 00 00 00 00       	mov    $0x0,%eax
    254d:	e8 0e f7 ff ff       	call   1c60 <secret_phase>
    2552:	eb b9                	jmp    250d <phase_defused+0xee>
    2554:	48 8d 3d 85 20 00 00 	lea    0x2085(%rip),%rdi        # 45e0 <transition_table+0x200>
    255b:	e8 00 ed ff ff       	call   1260 <puts@plt>
    2560:	eb ab                	jmp    250d <phase_defused+0xee>
    2562:	e8 19 ed ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002567 <rio_readinitb>:
    2567:	89 37                	mov    %esi,(%rdi)
    2569:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    2570:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2574:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2578:	c3                   	ret    

0000000000002579 <sigalrm_handler>:
    2579:	f3 0f 1e fa          	endbr64 
    257d:	50                   	push   %rax
    257e:	58                   	pop    %rax
    257f:	48 83 ec 08          	sub    $0x8,%rsp
    2583:	b9 00 00 00 00       	mov    $0x0,%ecx
    2588:	48 8d 15 51 22 00 00 	lea    0x2251(%rip),%rdx        # 47e0 <secret_tokens+0x20>
    258f:	be 01 00 00 00       	mov    $0x1,%esi
    2594:	48 8b 3d e5 5e 00 00 	mov    0x5ee5(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    259b:	b8 00 00 00 00       	mov    $0x0,%eax
    25a0:	e8 eb ed ff ff       	call   1390 <__fprintf_chk@plt>
    25a5:	bf 01 00 00 00       	mov    $0x1,%edi
    25aa:	e8 c1 ed ff ff       	call   1370 <exit@plt>

00000000000025af <rio_writen>:
    25af:	41 55                	push   %r13
    25b1:	41 54                	push   %r12
    25b3:	55                   	push   %rbp
    25b4:	53                   	push   %rbx
    25b5:	48 83 ec 08          	sub    $0x8,%rsp
    25b9:	41 89 fc             	mov    %edi,%r12d
    25bc:	48 89 f5             	mov    %rsi,%rbp
    25bf:	49 89 d5             	mov    %rdx,%r13
    25c2:	48 89 d3             	mov    %rdx,%rbx
    25c5:	eb 06                	jmp    25cd <rio_writen+0x1e>
    25c7:	48 29 c3             	sub    %rax,%rbx
    25ca:	48 01 c5             	add    %rax,%rbp
    25cd:	48 85 db             	test   %rbx,%rbx
    25d0:	74 24                	je     25f6 <rio_writen+0x47>
    25d2:	48 89 da             	mov    %rbx,%rdx
    25d5:	48 89 ee             	mov    %rbp,%rsi
    25d8:	44 89 e7             	mov    %r12d,%edi
    25db:	e8 90 ec ff ff       	call   1270 <write@plt>
    25e0:	48 85 c0             	test   %rax,%rax
    25e3:	7f e2                	jg     25c7 <rio_writen+0x18>
    25e5:	e8 56 ec ff ff       	call   1240 <__errno_location@plt>
    25ea:	83 38 04             	cmpl   $0x4,(%rax)
    25ed:	75 15                	jne    2604 <rio_writen+0x55>
    25ef:	b8 00 00 00 00       	mov    $0x0,%eax
    25f4:	eb d1                	jmp    25c7 <rio_writen+0x18>
    25f6:	4c 89 e8             	mov    %r13,%rax
    25f9:	48 83 c4 08          	add    $0x8,%rsp
    25fd:	5b                   	pop    %rbx
    25fe:	5d                   	pop    %rbp
    25ff:	41 5c                	pop    %r12
    2601:	41 5d                	pop    %r13
    2603:	c3                   	ret    
    2604:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    260b:	eb ec                	jmp    25f9 <rio_writen+0x4a>

000000000000260d <rio_read>:
    260d:	41 55                	push   %r13
    260f:	41 54                	push   %r12
    2611:	55                   	push   %rbp
    2612:	53                   	push   %rbx
    2613:	48 83 ec 08          	sub    $0x8,%rsp
    2617:	48 89 fb             	mov    %rdi,%rbx
    261a:	49 89 f5             	mov    %rsi,%r13
    261d:	49 89 d4             	mov    %rdx,%r12
    2620:	eb 17                	jmp    2639 <rio_read+0x2c>
    2622:	e8 19 ec ff ff       	call   1240 <__errno_location@plt>
    2627:	83 38 04             	cmpl   $0x4,(%rax)
    262a:	74 0d                	je     2639 <rio_read+0x2c>
    262c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2633:	eb 54                	jmp    2689 <rio_read+0x7c>
    2635:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2639:	8b 6b 04             	mov    0x4(%rbx),%ebp
    263c:	85 ed                	test   %ebp,%ebp
    263e:	7f 23                	jg     2663 <rio_read+0x56>
    2640:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    2644:	8b 3b                	mov    (%rbx),%edi
    2646:	ba 00 20 00 00       	mov    $0x2000,%edx
    264b:	48 89 ee             	mov    %rbp,%rsi
    264e:	e8 5d ec ff ff       	call   12b0 <read@plt>
    2653:	89 43 04             	mov    %eax,0x4(%rbx)
    2656:	85 c0                	test   %eax,%eax
    2658:	78 c8                	js     2622 <rio_read+0x15>
    265a:	75 d9                	jne    2635 <rio_read+0x28>
    265c:	b8 00 00 00 00       	mov    $0x0,%eax
    2661:	eb 26                	jmp    2689 <rio_read+0x7c>
    2663:	89 e8                	mov    %ebp,%eax
    2665:	4c 39 e0             	cmp    %r12,%rax
    2668:	72 03                	jb     266d <rio_read+0x60>
    266a:	44 89 e5             	mov    %r12d,%ebp
    266d:	4c 63 e5             	movslq %ebp,%r12
    2670:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2674:	4c 89 e2             	mov    %r12,%rdx
    2677:	4c 89 ef             	mov    %r13,%rdi
    267a:	e8 81 ec ff ff       	call   1300 <memcpy@plt>
    267f:	4c 01 63 08          	add    %r12,0x8(%rbx)
    2683:	29 6b 04             	sub    %ebp,0x4(%rbx)
    2686:	4c 89 e0             	mov    %r12,%rax
    2689:	48 83 c4 08          	add    $0x8,%rsp
    268d:	5b                   	pop    %rbx
    268e:	5d                   	pop    %rbp
    268f:	41 5c                	pop    %r12
    2691:	41 5d                	pop    %r13
    2693:	c3                   	ret    

0000000000002694 <rio_readlineb>:
    2694:	41 55                	push   %r13
    2696:	41 54                	push   %r12
    2698:	55                   	push   %rbp
    2699:	53                   	push   %rbx
    269a:	48 83 ec 18          	sub    $0x18,%rsp
    269e:	49 89 fd             	mov    %rdi,%r13
    26a1:	48 89 f5             	mov    %rsi,%rbp
    26a4:	49 89 d4             	mov    %rdx,%r12
    26a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26ae:	00 00 
    26b0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    26b5:	31 c0                	xor    %eax,%eax
    26b7:	bb 01 00 00 00       	mov    $0x1,%ebx
    26bc:	eb 18                	jmp    26d6 <rio_readlineb+0x42>
    26be:	85 c0                	test   %eax,%eax
    26c0:	75 65                	jne    2727 <rio_readlineb+0x93>
    26c2:	48 83 fb 01          	cmp    $0x1,%rbx
    26c6:	75 3d                	jne    2705 <rio_readlineb+0x71>
    26c8:	b8 00 00 00 00       	mov    $0x0,%eax
    26cd:	eb 3d                	jmp    270c <rio_readlineb+0x78>
    26cf:	48 83 c3 01          	add    $0x1,%rbx
    26d3:	48 89 d5             	mov    %rdx,%rbp
    26d6:	4c 39 e3             	cmp    %r12,%rbx
    26d9:	73 2a                	jae    2705 <rio_readlineb+0x71>
    26db:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    26e0:	ba 01 00 00 00       	mov    $0x1,%edx
    26e5:	4c 89 ef             	mov    %r13,%rdi
    26e8:	e8 20 ff ff ff       	call   260d <rio_read>
    26ed:	83 f8 01             	cmp    $0x1,%eax
    26f0:	75 cc                	jne    26be <rio_readlineb+0x2a>
    26f2:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    26f6:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    26fb:	88 45 00             	mov    %al,0x0(%rbp)
    26fe:	3c 0a                	cmp    $0xa,%al
    2700:	75 cd                	jne    26cf <rio_readlineb+0x3b>
    2702:	48 89 d5             	mov    %rdx,%rbp
    2705:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2709:	48 89 d8             	mov    %rbx,%rax
    270c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2711:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2718:	00 00 
    271a:	75 14                	jne    2730 <rio_readlineb+0x9c>
    271c:	48 83 c4 18          	add    $0x18,%rsp
    2720:	5b                   	pop    %rbx
    2721:	5d                   	pop    %rbp
    2722:	41 5c                	pop    %r12
    2724:	41 5d                	pop    %r13
    2726:	c3                   	ret    
    2727:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    272e:	eb dc                	jmp    270c <rio_readlineb+0x78>
    2730:	e8 4b eb ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002735 <urlencode>:
    2735:	41 54                	push   %r12
    2737:	55                   	push   %rbp
    2738:	53                   	push   %rbx
    2739:	48 83 ec 10          	sub    $0x10,%rsp
    273d:	48 89 fb             	mov    %rdi,%rbx
    2740:	48 89 f5             	mov    %rsi,%rbp
    2743:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    274a:	00 00 
    274c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2751:	31 c0                	xor    %eax,%eax
    2753:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    275a:	f2 ae                	repnz scas %es:(%rdi),%al
    275c:	48 f7 d1             	not    %rcx
    275f:	8d 41 ff             	lea    -0x1(%rcx),%eax
    2762:	eb 0f                	jmp    2773 <urlencode+0x3e>
    2764:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2768:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    276c:	48 83 c3 01          	add    $0x1,%rbx
    2770:	44 89 e0             	mov    %r12d,%eax
    2773:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2777:	85 c0                	test   %eax,%eax
    2779:	0f 84 a8 00 00 00    	je     2827 <urlencode+0xf2>
    277f:	44 0f b6 03          	movzbl (%rbx),%r8d
    2783:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2787:	0f 94 c2             	sete   %dl
    278a:	41 80 f8 2d          	cmp    $0x2d,%r8b
    278e:	0f 94 c0             	sete   %al
    2791:	08 c2                	or     %al,%dl
    2793:	75 cf                	jne    2764 <urlencode+0x2f>
    2795:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2799:	74 c9                	je     2764 <urlencode+0x2f>
    279b:	41 80 f8 5f          	cmp    $0x5f,%r8b
    279f:	74 c3                	je     2764 <urlencode+0x2f>
    27a1:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    27a5:	3c 09                	cmp    $0x9,%al
    27a7:	76 bb                	jbe    2764 <urlencode+0x2f>
    27a9:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    27ad:	3c 19                	cmp    $0x19,%al
    27af:	76 b3                	jbe    2764 <urlencode+0x2f>
    27b1:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    27b5:	3c 19                	cmp    $0x19,%al
    27b7:	76 ab                	jbe    2764 <urlencode+0x2f>
    27b9:	41 80 f8 20          	cmp    $0x20,%r8b
    27bd:	74 56                	je     2815 <urlencode+0xe0>
    27bf:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    27c3:	3c 5f                	cmp    $0x5f,%al
    27c5:	0f 96 c2             	setbe  %dl
    27c8:	41 80 f8 09          	cmp    $0x9,%r8b
    27cc:	0f 94 c0             	sete   %al
    27cf:	08 c2                	or     %al,%dl
    27d1:	74 4f                	je     2822 <urlencode+0xed>
    27d3:	48 89 e7             	mov    %rsp,%rdi
    27d6:	45 0f b6 c0          	movzbl %r8b,%r8d
    27da:	48 8d 0d b4 20 00 00 	lea    0x20b4(%rip),%rcx        # 4895 <secret_tokens+0xd5>
    27e1:	ba 08 00 00 00       	mov    $0x8,%edx
    27e6:	be 01 00 00 00       	mov    $0x1,%esi
    27eb:	b8 00 00 00 00       	mov    $0x0,%eax
    27f0:	e8 cb eb ff ff       	call   13c0 <__sprintf_chk@plt>
    27f5:	0f b6 04 24          	movzbl (%rsp),%eax
    27f9:	88 45 00             	mov    %al,0x0(%rbp)
    27fc:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2801:	88 45 01             	mov    %al,0x1(%rbp)
    2804:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2809:	88 45 02             	mov    %al,0x2(%rbp)
    280c:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2810:	e9 57 ff ff ff       	jmp    276c <urlencode+0x37>
    2815:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2819:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    281d:	e9 4a ff ff ff       	jmp    276c <urlencode+0x37>
    2822:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2827:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    282c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2833:	00 00 
    2835:	75 09                	jne    2840 <urlencode+0x10b>
    2837:	48 83 c4 10          	add    $0x10,%rsp
    283b:	5b                   	pop    %rbx
    283c:	5d                   	pop    %rbp
    283d:	41 5c                	pop    %r12
    283f:	c3                   	ret    
    2840:	e8 3b ea ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002845 <submitr>:
    2845:	f3 0f 1e fa          	endbr64 
    2849:	41 57                	push   %r15
    284b:	41 56                	push   %r14
    284d:	41 55                	push   %r13
    284f:	41 54                	push   %r12
    2851:	55                   	push   %rbp
    2852:	53                   	push   %rbx
    2853:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    285a:	ff 
    285b:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2862:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2867:	4c 39 dc             	cmp    %r11,%rsp
    286a:	75 ef                	jne    285b <submitr+0x16>
    286c:	48 83 ec 68          	sub    $0x68,%rsp
    2870:	49 89 fc             	mov    %rdi,%r12
    2873:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    2877:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    287c:	49 89 cd             	mov    %rcx,%r13
    287f:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2884:	4d 89 ce             	mov    %r9,%r14
    2887:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    288e:	00 
    288f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2896:	00 00 
    2898:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    289f:	00 
    28a0:	31 c0                	xor    %eax,%eax
    28a2:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    28a9:	00 
    28aa:	ba 00 00 00 00       	mov    $0x0,%edx
    28af:	be 01 00 00 00       	mov    $0x1,%esi
    28b4:	bf 02 00 00 00       	mov    $0x2,%edi
    28b9:	e8 12 eb ff ff       	call   13d0 <socket@plt>
    28be:	85 c0                	test   %eax,%eax
    28c0:	0f 88 a5 02 00 00    	js     2b6b <submitr+0x326>
    28c6:	89 c3                	mov    %eax,%ebx
    28c8:	4c 89 e7             	mov    %r12,%rdi
    28cb:	e8 10 ea ff ff       	call   12e0 <gethostbyname@plt>
    28d0:	48 85 c0             	test   %rax,%rax
    28d3:	0f 84 de 02 00 00    	je     2bb7 <submitr+0x372>
    28d9:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    28de:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    28e5:	00 00 
    28e7:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    28ee:	00 00 
    28f0:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    28f7:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28fb:	48 8b 40 18          	mov    0x18(%rax),%rax
    28ff:	48 8b 30             	mov    (%rax),%rsi
    2902:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2907:	b9 0c 00 00 00       	mov    $0xc,%ecx
    290c:	e8 df e9 ff ff       	call   12f0 <__memmove_chk@plt>
    2911:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
    2916:	66 c1 c6 08          	rol    $0x8,%si
    291a:	66 89 74 24 32       	mov    %si,0x32(%rsp)
    291f:	ba 10 00 00 00       	mov    $0x10,%edx
    2924:	4c 89 fe             	mov    %r15,%rsi
    2927:	89 df                	mov    %ebx,%edi
    2929:	e8 52 ea ff ff       	call   1380 <connect@plt>
    292e:	85 c0                	test   %eax,%eax
    2930:	0f 88 f7 02 00 00    	js     2c2d <submitr+0x3e8>
    2936:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    293d:	b8 00 00 00 00       	mov    $0x0,%eax
    2942:	48 89 f1             	mov    %rsi,%rcx
    2945:	4c 89 f7             	mov    %r14,%rdi
    2948:	f2 ae                	repnz scas %es:(%rdi),%al
    294a:	48 89 ca             	mov    %rcx,%rdx
    294d:	48 f7 d2             	not    %rdx
    2950:	48 89 f1             	mov    %rsi,%rcx
    2953:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2958:	f2 ae                	repnz scas %es:(%rdi),%al
    295a:	48 f7 d1             	not    %rcx
    295d:	49 89 c8             	mov    %rcx,%r8
    2960:	48 89 f1             	mov    %rsi,%rcx
    2963:	4c 89 ef             	mov    %r13,%rdi
    2966:	f2 ae                	repnz scas %es:(%rdi),%al
    2968:	48 f7 d1             	not    %rcx
    296b:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2970:	48 89 f1             	mov    %rsi,%rcx
    2973:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2978:	f2 ae                	repnz scas %es:(%rdi),%al
    297a:	48 89 c8             	mov    %rcx,%rax
    297d:	48 f7 d0             	not    %rax
    2980:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    2985:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    298a:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    2991:	00 
    2992:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2998:	0f 87 f7 02 00 00    	ja     2c95 <submitr+0x450>
    299e:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    29a5:	00 
    29a6:	b9 00 04 00 00       	mov    $0x400,%ecx
    29ab:	b8 00 00 00 00       	mov    $0x0,%eax
    29b0:	48 89 f7             	mov    %rsi,%rdi
    29b3:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    29b6:	4c 89 f7             	mov    %r14,%rdi
    29b9:	e8 77 fd ff ff       	call   2735 <urlencode>
    29be:	85 c0                	test   %eax,%eax
    29c0:	0f 88 42 03 00 00    	js     2d08 <submitr+0x4c3>
    29c6:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    29cd:	00 
    29ce:	48 83 ec 08          	sub    $0x8,%rsp
    29d2:	41 54                	push   %r12
    29d4:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    29db:	00 
    29dc:	50                   	push   %rax
    29dd:	41 55                	push   %r13
    29df:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    29e4:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    29e9:	48 8d 0d 18 1e 00 00 	lea    0x1e18(%rip),%rcx        # 4808 <secret_tokens+0x48>
    29f0:	ba 00 20 00 00       	mov    $0x2000,%edx
    29f5:	be 01 00 00 00       	mov    $0x1,%esi
    29fa:	4c 89 ff             	mov    %r15,%rdi
    29fd:	b8 00 00 00 00       	mov    $0x0,%eax
    2a02:	e8 b9 e9 ff ff       	call   13c0 <__sprintf_chk@plt>
    2a07:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2a0e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a13:	4c 89 ff             	mov    %r15,%rdi
    2a16:	f2 ae                	repnz scas %es:(%rdi),%al
    2a18:	48 f7 d1             	not    %rcx
    2a1b:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    2a1f:	48 83 c4 20          	add    $0x20,%rsp
    2a23:	4c 89 fe             	mov    %r15,%rsi
    2a26:	89 df                	mov    %ebx,%edi
    2a28:	e8 82 fb ff ff       	call   25af <rio_writen>
    2a2d:	48 85 c0             	test   %rax,%rax
    2a30:	0f 88 5d 03 00 00    	js     2d93 <submitr+0x54e>
    2a36:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2a3b:	89 de                	mov    %ebx,%esi
    2a3d:	4c 89 e7             	mov    %r12,%rdi
    2a40:	e8 22 fb ff ff       	call   2567 <rio_readinitb>
    2a45:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2a4c:	00 
    2a4d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a52:	4c 89 e7             	mov    %r12,%rdi
    2a55:	e8 3a fc ff ff       	call   2694 <rio_readlineb>
    2a5a:	48 85 c0             	test   %rax,%rax
    2a5d:	0f 8e 9c 03 00 00    	jle    2dff <submitr+0x5ba>
    2a63:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2a68:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2a6f:	00 
    2a70:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2a77:	00 
    2a78:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2a7f:	00 
    2a80:	48 8d 35 15 1e 00 00 	lea    0x1e15(%rip),%rsi        # 489c <secret_tokens+0xdc>
    2a87:	b8 00 00 00 00       	mov    $0x0,%eax
    2a8c:	e8 9f e8 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2a91:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2a98:	00 
    2a99:	b9 03 00 00 00       	mov    $0x3,%ecx
    2a9e:	48 8d 3d 0e 1e 00 00 	lea    0x1e0e(%rip),%rdi        # 48b3 <secret_tokens+0xf3>
    2aa5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2aa7:	0f 97 c0             	seta   %al
    2aaa:	1c 00                	sbb    $0x0,%al
    2aac:	84 c0                	test   %al,%al
    2aae:	0f 84 cb 03 00 00    	je     2e7f <submitr+0x63a>
    2ab4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2abb:	00 
    2abc:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2ac1:	ba 00 20 00 00       	mov    $0x2000,%edx
    2ac6:	e8 c9 fb ff ff       	call   2694 <rio_readlineb>
    2acb:	48 85 c0             	test   %rax,%rax
    2ace:	7f c1                	jg     2a91 <submitr+0x24c>
    2ad0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2ad7:	3a 20 43 
    2ada:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ae1:	20 75 6e 
    2ae4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ae8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2aec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2af3:	74 6f 20 
    2af6:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2afd:	68 65 61 
    2b00:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b04:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b08:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2b0f:	66 72 6f 
    2b12:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    2b19:	6f 6c 61 
    2b1c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b20:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b24:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    2b2b:	76 65 72 
    2b2e:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b32:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    2b36:	89 df                	mov    %ebx,%edi
    2b38:	e8 63 e7 ff ff       	call   12a0 <close@plt>
    2b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b42:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2b49:	00 
    2b4a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2b51:	00 00 
    2b53:	0f 85 96 04 00 00    	jne    2fef <submitr+0x7aa>
    2b59:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2b60:	5b                   	pop    %rbx
    2b61:	5d                   	pop    %rbp
    2b62:	41 5c                	pop    %r12
    2b64:	41 5d                	pop    %r13
    2b66:	41 5e                	pop    %r14
    2b68:	41 5f                	pop    %r15
    2b6a:	c3                   	ret    
    2b6b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b72:	3a 20 43 
    2b75:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b7c:	20 75 6e 
    2b7f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b83:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b87:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b8e:	74 6f 20 
    2b91:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2b98:	65 20 73 
    2b9b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b9f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ba3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2baa:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2bb0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bb5:	eb 8b                	jmp    2b42 <submitr+0x2fd>
    2bb7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2bbe:	3a 20 44 
    2bc1:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2bc8:	20 75 6e 
    2bcb:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bcf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bd3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bda:	74 6f 20 
    2bdd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2be4:	76 65 20 
    2be7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2beb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bef:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2bf6:	61 62 20 
    2bf9:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2c00:	72 20 61 
    2c03:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c07:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c0b:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2c12:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    2c18:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2c1c:	89 df                	mov    %ebx,%edi
    2c1e:	e8 7d e6 ff ff       	call   12a0 <close@plt>
    2c23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c28:	e9 15 ff ff ff       	jmp    2b42 <submitr+0x2fd>
    2c2d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2c34:	3a 20 55 
    2c37:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2c3e:	20 74 6f 
    2c41:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c45:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c49:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2c50:	65 63 74 
    2c53:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2c5a:	68 65 20 
    2c5d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c61:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c65:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2c6c:	61 62 20 
    2c6f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c73:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2c7a:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2c80:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2c84:	89 df                	mov    %ebx,%edi
    2c86:	e8 15 e6 ff ff       	call   12a0 <close@plt>
    2c8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c90:	e9 ad fe ff ff       	jmp    2b42 <submitr+0x2fd>
    2c95:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2c9c:	3a 20 52 
    2c9f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2ca6:	20 73 74 
    2ca9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2cad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2cb1:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2cb8:	74 6f 6f 
    2cbb:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2cc2:	65 2e 20 
    2cc5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2cc9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ccd:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2cd4:	61 73 65 
    2cd7:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2cde:	49 54 52 
    2ce1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ce5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ce9:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2cf0:	55 46 00 
    2cf3:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2cf7:	89 df                	mov    %ebx,%edi
    2cf9:	e8 a2 e5 ff ff       	call   12a0 <close@plt>
    2cfe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d03:	e9 3a fe ff ff       	jmp    2b42 <submitr+0x2fd>
    2d08:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2d0f:	3a 20 52 
    2d12:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2d19:	20 73 74 
    2d1c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d20:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d24:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2d2b:	63 6f 6e 
    2d2e:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2d35:	20 61 6e 
    2d38:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d3c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d40:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2d47:	67 61 6c 
    2d4a:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2d51:	6e 70 72 
    2d54:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d58:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d5c:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2d63:	6c 65 20 
    2d66:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2d6d:	63 74 65 
    2d70:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d74:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2d78:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2d7e:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2d82:	89 df                	mov    %ebx,%edi
    2d84:	e8 17 e5 ff ff       	call   12a0 <close@plt>
    2d89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d8e:	e9 af fd ff ff       	jmp    2b42 <submitr+0x2fd>
    2d93:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d9a:	3a 20 43 
    2d9d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2da4:	20 75 6e 
    2da7:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2dab:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2daf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2db6:	74 6f 20 
    2db9:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2dc0:	20 74 6f 
    2dc3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2dc7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2dcb:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2dd2:	41 75 74 
    2dd5:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2ddc:	73 65 72 
    2ddf:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2de3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2de7:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2dee:	89 df                	mov    %ebx,%edi
    2df0:	e8 ab e4 ff ff       	call   12a0 <close@plt>
    2df5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dfa:	e9 43 fd ff ff       	jmp    2b42 <submitr+0x2fd>
    2dff:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e06:	3a 20 43 
    2e09:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e10:	20 75 6e 
    2e13:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2e17:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2e1b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e22:	74 6f 20 
    2e25:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2e2c:	66 69 72 
    2e2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2e33:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2e37:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2e3e:	61 64 65 
    2e41:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2e48:	6d 20 41 
    2e4b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2e4f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2e53:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2e5a:	62 20 73 
    2e5d:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2e61:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2e68:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2e6e:	89 df                	mov    %ebx,%edi
    2e70:	e8 2b e4 ff ff       	call   12a0 <close@plt>
    2e75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e7a:	e9 c3 fc ff ff       	jmp    2b42 <submitr+0x2fd>
    2e7f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2e86:	00 
    2e87:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2e8c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2e91:	e8 fe f7 ff ff       	call   2694 <rio_readlineb>
    2e96:	48 85 c0             	test   %rax,%rax
    2e99:	0f 8e 96 00 00 00    	jle    2f35 <submitr+0x6f0>
    2e9f:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ea4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2eab:	0f 85 05 01 00 00    	jne    2fb6 <submitr+0x771>
    2eb1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2eb8:	00 
    2eb9:	48 89 ef             	mov    %rbp,%rdi
    2ebc:	e8 8f e3 ff ff       	call   1250 <strcpy@plt>
    2ec1:	89 df                	mov    %ebx,%edi
    2ec3:	e8 d8 e3 ff ff       	call   12a0 <close@plt>
    2ec8:	b9 04 00 00 00       	mov    $0x4,%ecx
    2ecd:	48 8d 3d d9 19 00 00 	lea    0x19d9(%rip),%rdi        # 48ad <secret_tokens+0xed>
    2ed4:	48 89 ee             	mov    %rbp,%rsi
    2ed7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2ed9:	0f 97 c0             	seta   %al
    2edc:	1c 00                	sbb    $0x0,%al
    2ede:	0f be c0             	movsbl %al,%eax
    2ee1:	85 c0                	test   %eax,%eax
    2ee3:	0f 84 59 fc ff ff    	je     2b42 <submitr+0x2fd>
    2ee9:	b9 05 00 00 00       	mov    $0x5,%ecx
    2eee:	48 8d 3d bc 19 00 00 	lea    0x19bc(%rip),%rdi        # 48b1 <secret_tokens+0xf1>
    2ef5:	48 89 ee             	mov    %rbp,%rsi
    2ef8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2efa:	0f 97 c0             	seta   %al
    2efd:	1c 00                	sbb    $0x0,%al
    2eff:	0f be c0             	movsbl %al,%eax
    2f02:	85 c0                	test   %eax,%eax
    2f04:	0f 84 38 fc ff ff    	je     2b42 <submitr+0x2fd>
    2f0a:	b9 03 00 00 00       	mov    $0x3,%ecx
    2f0f:	48 8d 3d a0 19 00 00 	lea    0x19a0(%rip),%rdi        # 48b6 <secret_tokens+0xf6>
    2f16:	48 89 ee             	mov    %rbp,%rsi
    2f19:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2f1b:	0f 97 c0             	seta   %al
    2f1e:	1c 00                	sbb    $0x0,%al
    2f20:	0f be c0             	movsbl %al,%eax
    2f23:	85 c0                	test   %eax,%eax
    2f25:	0f 84 17 fc ff ff    	je     2b42 <submitr+0x2fd>
    2f2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f30:	e9 0d fc ff ff       	jmp    2b42 <submitr+0x2fd>
    2f35:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f3c:	3a 20 43 
    2f3f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f46:	20 75 6e 
    2f49:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f4d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f51:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f58:	74 6f 20 
    2f5b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2f62:	73 74 61 
    2f65:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f69:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f6d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2f74:	65 73 73 
    2f77:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2f7e:	72 6f 6d 
    2f81:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2f85:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2f89:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2f90:	6c 61 62 
    2f93:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2f9a:	65 72 00 
    2f9d:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2fa1:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2fa5:	89 df                	mov    %ebx,%edi
    2fa7:	e8 f4 e2 ff ff       	call   12a0 <close@plt>
    2fac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fb1:	e9 8c fb ff ff       	jmp    2b42 <submitr+0x2fd>
    2fb6:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2fbd:	00 
    2fbe:	48 8d 0d a3 18 00 00 	lea    0x18a3(%rip),%rcx        # 4868 <secret_tokens+0xa8>
    2fc5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2fcc:	be 01 00 00 00       	mov    $0x1,%esi
    2fd1:	48 89 ef             	mov    %rbp,%rdi
    2fd4:	b8 00 00 00 00       	mov    $0x0,%eax
    2fd9:	e8 e2 e3 ff ff       	call   13c0 <__sprintf_chk@plt>
    2fde:	89 df                	mov    %ebx,%edi
    2fe0:	e8 bb e2 ff ff       	call   12a0 <close@plt>
    2fe5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fea:	e9 53 fb ff ff       	jmp    2b42 <submitr+0x2fd>
    2fef:	e8 8c e2 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002ff4 <init_timeout>:
    2ff4:	f3 0f 1e fa          	endbr64 
    2ff8:	85 ff                	test   %edi,%edi
    2ffa:	74 26                	je     3022 <init_timeout+0x2e>
    2ffc:	53                   	push   %rbx
    2ffd:	89 fb                	mov    %edi,%ebx
    2fff:	78 1a                	js     301b <init_timeout+0x27>
    3001:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 2579 <sigalrm_handler>
    3008:	bf 0e 00 00 00       	mov    $0xe,%edi
    300d:	e8 be e2 ff ff       	call   12d0 <signal@plt>
    3012:	89 df                	mov    %ebx,%edi
    3014:	e8 77 e2 ff ff       	call   1290 <alarm@plt>
    3019:	5b                   	pop    %rbx
    301a:	c3                   	ret    
    301b:	bb 00 00 00 00       	mov    $0x0,%ebx
    3020:	eb df                	jmp    3001 <init_timeout+0xd>
    3022:	c3                   	ret    

0000000000003023 <init_driver>:
    3023:	f3 0f 1e fa          	endbr64 
    3027:	41 54                	push   %r12
    3029:	55                   	push   %rbp
    302a:	53                   	push   %rbx
    302b:	48 83 ec 20          	sub    $0x20,%rsp
    302f:	48 89 fd             	mov    %rdi,%rbp
    3032:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3039:	00 00 
    303b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3040:	31 c0                	xor    %eax,%eax
    3042:	be 01 00 00 00       	mov    $0x1,%esi
    3047:	bf 0d 00 00 00       	mov    $0xd,%edi
    304c:	e8 7f e2 ff ff       	call   12d0 <signal@plt>
    3051:	be 01 00 00 00       	mov    $0x1,%esi
    3056:	bf 1d 00 00 00       	mov    $0x1d,%edi
    305b:	e8 70 e2 ff ff       	call   12d0 <signal@plt>
    3060:	be 01 00 00 00       	mov    $0x1,%esi
    3065:	bf 1d 00 00 00       	mov    $0x1d,%edi
    306a:	e8 61 e2 ff ff       	call   12d0 <signal@plt>
    306f:	ba 00 00 00 00       	mov    $0x0,%edx
    3074:	be 01 00 00 00       	mov    $0x1,%esi
    3079:	bf 02 00 00 00       	mov    $0x2,%edi
    307e:	e8 4d e3 ff ff       	call   13d0 <socket@plt>
    3083:	85 c0                	test   %eax,%eax
    3085:	0f 88 9c 00 00 00    	js     3127 <init_driver+0x104>
    308b:	89 c3                	mov    %eax,%ebx
    308d:	48 8d 3d 25 18 00 00 	lea    0x1825(%rip),%rdi        # 48b9 <secret_tokens+0xf9>
    3094:	e8 47 e2 ff ff       	call   12e0 <gethostbyname@plt>
    3099:	48 85 c0             	test   %rax,%rax
    309c:	0f 84 d1 00 00 00    	je     3173 <init_driver+0x150>
    30a2:	49 89 e4             	mov    %rsp,%r12
    30a5:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    30ac:	00 
    30ad:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    30b4:	00 00 
    30b6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    30bc:	48 63 50 14          	movslq 0x14(%rax),%rdx
    30c0:	48 8b 40 18          	mov    0x18(%rax),%rax
    30c4:	48 8b 30             	mov    (%rax),%rsi
    30c7:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    30cc:	b9 0c 00 00 00       	mov    $0xc,%ecx
    30d1:	e8 1a e2 ff ff       	call   12f0 <__memmove_chk@plt>
    30d6:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
    30dd:	ba 10 00 00 00       	mov    $0x10,%edx
    30e2:	4c 89 e6             	mov    %r12,%rsi
    30e5:	89 df                	mov    %ebx,%edi
    30e7:	90                   	nop
    30e8:	90                   	nop
    30e9:	90                   	nop
    30ea:	90                   	nop
    30eb:	90                   	nop
    30ec:	85 c0                	test   %eax,%eax
    30ee:	90                   	nop
    30ef:	90                   	nop
    30f0:	90                   	nop
    30f1:	90                   	nop
    30f2:	90                   	nop
    30f3:	90                   	nop
    30f4:	89 df                	mov    %ebx,%edi
    30f6:	e8 a5 e1 ff ff       	call   12a0 <close@plt>
    30fb:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    3101:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    3105:	b8 00 00 00 00       	mov    $0x0,%eax
    310a:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    310f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3116:	00 00 
    3118:	0f 85 10 01 00 00    	jne    322e <init_driver+0x20b>
    311e:	48 83 c4 20          	add    $0x20,%rsp
    3122:	5b                   	pop    %rbx
    3123:	5d                   	pop    %rbp
    3124:	41 5c                	pop    %r12
    3126:	c3                   	ret    
    3127:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    312e:	3a 20 43 
    3131:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3138:	20 75 6e 
    313b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    313f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3143:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    314a:	74 6f 20 
    314d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3154:	65 20 73 
    3157:	48 89 45 10          	mov    %rax,0x10(%rbp)
    315b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    315f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3166:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    316c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3171:	eb 97                	jmp    310a <init_driver+0xe7>
    3173:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    317a:	3a 20 44 
    317d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3184:	20 75 6e 
    3187:	48 89 45 00          	mov    %rax,0x0(%rbp)
    318b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    318f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3196:	74 6f 20 
    3199:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    31a0:	76 65 20 
    31a3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    31a7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    31ab:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    31b2:	72 20 61 
    31b5:	48 89 45 20          	mov    %rax,0x20(%rbp)
    31b9:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    31c0:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    31c6:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    31ca:	89 df                	mov    %ebx,%edi
    31cc:	e8 cf e0 ff ff       	call   12a0 <close@plt>
    31d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    31d6:	e9 2f ff ff ff       	jmp    310a <init_driver+0xe7>
    31db:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    31e2:	3a 20 55 
    31e5:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    31ec:	20 74 6f 
    31ef:	48 89 45 00          	mov    %rax,0x0(%rbp)
    31f3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    31f7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    31fe:	65 63 74 
    3201:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    3208:	65 72 76 
    320b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    320f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3213:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    3219:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    321d:	89 df                	mov    %ebx,%edi
    321f:	e8 7c e0 ff ff       	call   12a0 <close@plt>
    3224:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3229:	e9 dc fe ff ff       	jmp    310a <init_driver+0xe7>
    322e:	e8 4d e0 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000003233 <driver_post>:
    3233:	f3 0f 1e fa          	endbr64 
    3237:	53                   	push   %rbx
    3238:	4c 89 cb             	mov    %r9,%rbx
    323b:	45 85 c0             	test   %r8d,%r8d
    323e:	75 18                	jne    3258 <driver_post+0x25>
    3240:	48 85 ff             	test   %rdi,%rdi
    3243:	74 05                	je     324a <driver_post+0x17>
    3245:	80 3f 00             	cmpb   $0x0,(%rdi)
    3248:	75 37                	jne    3281 <driver_post+0x4e>
    324a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    324f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3253:	44 89 c0             	mov    %r8d,%eax
    3256:	5b                   	pop    %rbx
    3257:	c3                   	ret    
    3258:	48 89 ca             	mov    %rcx,%rdx
    325b:	48 8d 35 67 16 00 00 	lea    0x1667(%rip),%rsi        # 48c9 <secret_tokens+0x109>
    3262:	bf 01 00 00 00       	mov    $0x1,%edi
    3267:	b8 00 00 00 00       	mov    $0x0,%eax
    326c:	e8 cf e0 ff ff       	call   1340 <__printf_chk@plt>
    3271:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3276:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    327a:	b8 00 00 00 00       	mov    $0x0,%eax
    327f:	eb d5                	jmp    3256 <driver_post+0x23>
    3281:	48 83 ec 08          	sub    $0x8,%rsp
    3285:	41 51                	push   %r9
    3287:	49 89 c9             	mov    %rcx,%r9
    328a:	49 89 d0             	mov    %rdx,%r8
    328d:	48 89 f9             	mov    %rdi,%rcx
    3290:	48 89 f2             	mov    %rsi,%rdx
    3293:	be 39 30 00 00       	mov    $0x3039,%esi
    3298:	48 8d 3d 1a 16 00 00 	lea    0x161a(%rip),%rdi        # 48b9 <secret_tokens+0xf9>
    329f:	e8 a1 f5 ff ff       	call   2845 <submitr>
    32a4:	48 83 c4 10          	add    $0x10,%rsp
    32a8:	eb ac                	jmp    3256 <driver_post+0x23>
    32aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000032b0 <__libc_csu_init>:
    32b0:	f3 0f 1e fa          	endbr64 
    32b4:	41 57                	push   %r15
    32b6:	4c 8d 3d 0b 3a 00 00 	lea    0x3a0b(%rip),%r15        # 6cc8 <__frame_dummy_init_array_entry>
    32bd:	41 56                	push   %r14
    32bf:	49 89 d6             	mov    %rdx,%r14
    32c2:	41 55                	push   %r13
    32c4:	49 89 f5             	mov    %rsi,%r13
    32c7:	41 54                	push   %r12
    32c9:	41 89 fc             	mov    %edi,%r12d
    32cc:	55                   	push   %rbp
    32cd:	48 8d 2d fc 39 00 00 	lea    0x39fc(%rip),%rbp        # 6cd0 <__do_global_dtors_aux_fini_array_entry>
    32d4:	53                   	push   %rbx
    32d5:	4c 29 fd             	sub    %r15,%rbp
    32d8:	48 83 ec 08          	sub    $0x8,%rsp
    32dc:	e8 1f dd ff ff       	call   1000 <_init>
    32e1:	48 c1 fd 03          	sar    $0x3,%rbp
    32e5:	74 1f                	je     3306 <__libc_csu_init+0x56>
    32e7:	31 db                	xor    %ebx,%ebx
    32e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    32f0:	4c 89 f2             	mov    %r14,%rdx
    32f3:	4c 89 ee             	mov    %r13,%rsi
    32f6:	44 89 e7             	mov    %r12d,%edi
    32f9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    32fd:	48 83 c3 01          	add    $0x1,%rbx
    3301:	48 39 dd             	cmp    %rbx,%rbp
    3304:	75 ea                	jne    32f0 <__libc_csu_init+0x40>
    3306:	48 83 c4 08          	add    $0x8,%rsp
    330a:	5b                   	pop    %rbx
    330b:	5d                   	pop    %rbp
    330c:	41 5c                	pop    %r12
    330e:	41 5d                	pop    %r13
    3310:	41 5e                	pop    %r14
    3312:	41 5f                	pop    %r15
    3314:	c3                   	ret    
    3315:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    331c:	00 00 00 00 

0000000000003320 <__libc_csu_fini>:
    3320:	f3 0f 1e fa          	endbr64 
    3324:	c3                   	ret    

Disassembly of section .fini:

0000000000003328 <_fini>:
    3328:	f3 0f 1e fa          	endbr64 
    332c:	48 83 ec 08          	sub    $0x8,%rsp
    3330:	48 83 c4 08          	add    $0x8,%rsp
    3334:	c3                   	ret    
