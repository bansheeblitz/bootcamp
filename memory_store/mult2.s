
mult:     file format elf64-x86-64


Disassembly of section .init:

00000000004003e0 <_init>:
  4003e0:	48 83 ec 08          	sub    $0x8,%rsp
  4003e4:	48 8b 05 0d 0c 20 00 	mov    0x200c0d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003eb:	48 85 c0             	test   %rax,%rax
  4003ee:	74 05                	je     4003f5 <_init+0x15>
  4003f0:	e8 3b 00 00 00       	callq  400430 <__gmon_start__@plt>
  4003f5:	48 83 c4 08          	add    $0x8,%rsp
  4003f9:	c3                   	retq   

Disassembly of section .plt:

0000000000400400 <printf@plt-0x10>:
  400400:	ff 35 02 0c 20 00    	pushq  0x200c02(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400406:	ff 25 04 0c 20 00    	jmpq   *0x200c04(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40040c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400410 <printf@plt>:
  400410:	ff 25 02 0c 20 00    	jmpq   *0x200c02(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400416:	68 00 00 00 00       	pushq  $0x0
  40041b:	e9 e0 ff ff ff       	jmpq   400400 <_init+0x20>

0000000000400420 <__libc_start_main@plt>:
  400420:	ff 25 fa 0b 20 00    	jmpq   *0x200bfa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400426:	68 01 00 00 00       	pushq  $0x1
  40042b:	e9 d0 ff ff ff       	jmpq   400400 <_init+0x20>

0000000000400430 <__gmon_start__@plt>:
  400430:	ff 25 f2 0b 20 00    	jmpq   *0x200bf2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400436:	68 02 00 00 00       	pushq  $0x2
  40043b:	e9 c0 ff ff ff       	jmpq   400400 <_init+0x20>

Disassembly of section .text:

0000000000400440 <_start>:
  400440:	31 ed                	xor    %ebp,%ebp
  400442:	49 89 d1             	mov    %rdx,%r9
  400445:	5e                   	pop    %rsi
  400446:	48 89 e2             	mov    %rsp,%rdx
  400449:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40044d:	50                   	push   %rax
  40044e:	54                   	push   %rsp
  40044f:	49 c7 c0 00 06 40 00 	mov    $0x400600,%r8
  400456:	48 c7 c1 90 05 40 00 	mov    $0x400590,%rcx
  40045d:	48 c7 c7 2d 05 40 00 	mov    $0x40052d,%rdi
  400464:	e8 b7 ff ff ff       	callq  400420 <__libc_start_main@plt>
  400469:	f4                   	hlt    
  40046a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400470 <deregister_tm_clones>:
  400470:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  400475:	55                   	push   %rbp
  400476:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40047c:	48 83 f8 0e          	cmp    $0xe,%rax
  400480:	48 89 e5             	mov    %rsp,%rbp
  400483:	77 02                	ja     400487 <deregister_tm_clones+0x17>
  400485:	5d                   	pop    %rbp
  400486:	c3                   	retq   
  400487:	b8 00 00 00 00       	mov    $0x0,%eax
  40048c:	48 85 c0             	test   %rax,%rax
  40048f:	74 f4                	je     400485 <deregister_tm_clones+0x15>
  400491:	5d                   	pop    %rbp
  400492:	bf 38 10 60 00       	mov    $0x601038,%edi
  400497:	ff e0                	jmpq   *%rax
  400499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004a0 <register_tm_clones>:
  4004a0:	b8 38 10 60 00       	mov    $0x601038,%eax
  4004a5:	55                   	push   %rbp
  4004a6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004ac:	48 c1 f8 03          	sar    $0x3,%rax
  4004b0:	48 89 e5             	mov    %rsp,%rbp
  4004b3:	48 89 c2             	mov    %rax,%rdx
  4004b6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004ba:	48 01 d0             	add    %rdx,%rax
  4004bd:	48 d1 f8             	sar    %rax
  4004c0:	75 02                	jne    4004c4 <register_tm_clones+0x24>
  4004c2:	5d                   	pop    %rbp
  4004c3:	c3                   	retq   
  4004c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4004c9:	48 85 d2             	test   %rdx,%rdx
  4004cc:	74 f4                	je     4004c2 <register_tm_clones+0x22>
  4004ce:	5d                   	pop    %rbp
  4004cf:	48 89 c6             	mov    %rax,%rsi
  4004d2:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004d7:	ff e2                	jmpq   *%rdx
  4004d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004e0 <__do_global_dtors_aux>:
  4004e0:	80 3d 4d 0b 20 00 00 	cmpb   $0x0,0x200b4d(%rip)        # 601034 <_edata>
  4004e7:	75 11                	jne    4004fa <__do_global_dtors_aux+0x1a>
  4004e9:	55                   	push   %rbp
  4004ea:	48 89 e5             	mov    %rsp,%rbp
  4004ed:	e8 7e ff ff ff       	callq  400470 <deregister_tm_clones>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c6 05 3a 0b 20 00 01 	movb   $0x1,0x200b3a(%rip)        # 601034 <_edata>
  4004fa:	f3 c3                	repz retq 
  4004fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400500 <frame_dummy>:
  400500:	48 83 3d 18 09 20 00 	cmpq   $0x0,0x200918(%rip)        # 600e20 <__JCR_END__>
  400507:	00 
  400508:	74 1e                	je     400528 <frame_dummy+0x28>
  40050a:	b8 00 00 00 00       	mov    $0x0,%eax
  40050f:	48 85 c0             	test   %rax,%rax
  400512:	74 14                	je     400528 <frame_dummy+0x28>
  400514:	55                   	push   %rbp
  400515:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40051a:	48 89 e5             	mov    %rsp,%rbp
  40051d:	ff d0                	callq  *%rax
  40051f:	5d                   	pop    %rbp
  400520:	e9 7b ff ff ff       	jmpq   4004a0 <register_tm_clones>
  400525:	0f 1f 00             	nopl   (%rax)
  400528:	e9 73 ff ff ff       	jmpq   4004a0 <register_tm_clones>

000000000040052d <main>:
  40052d:	48 83 ec 18          	sub    $0x18,%rsp
  400531:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  400536:	be 03 00 00 00       	mov    $0x3,%esi
  40053b:	bf 02 00 00 00       	mov    $0x2,%edi
  400540:	e8 26 00 00 00       	callq  40056b <multstore>
  400545:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40054a:	bf 20 06 40 00       	mov    $0x400620,%edi
  40054f:	b8 00 00 00 00       	mov    $0x0,%eax
  400554:	e8 b7 fe ff ff       	callq  400410 <printf@plt>
  400559:	b8 00 00 00 00       	mov    $0x0,%eax
  40055e:	48 83 c4 18          	add    $0x18,%rsp
  400562:	c3                   	retq   

0000000000400563 <mult2>:
  400563:	48 89 f8             	mov    %rdi,%rax
  400566:	48 0f af c6          	imul   %rsi,%rax
  40056a:	c3                   	retq   

000000000040056b <multstore>:
  40056b:	53                   	push   %rbx
  40056c:	48 89 f8             	mov    %rdi,%rax
  40056f:	48 89 f7             	mov    %rsi,%rdi
  400572:	48 89 d3             	mov    %rdx,%rbx
  400575:	48 89 c6             	mov    %rax,%rsi
  400578:	e8 e6 ff ff ff       	callq  400563 <mult2>
  40057d:	48 89 03             	mov    %rax,(%rbx)
  400580:	b8 03 00 00 00       	mov    $0x3,%eax
  400585:	5b                   	pop    %rbx
  400586:	c3                   	retq   
  400587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40058e:	00 00 

0000000000400590 <__libc_csu_init>:
  400590:	41 57                	push   %r15
  400592:	41 89 ff             	mov    %edi,%r15d
  400595:	41 56                	push   %r14
  400597:	49 89 f6             	mov    %rsi,%r14
  40059a:	41 55                	push   %r13
  40059c:	49 89 d5             	mov    %rdx,%r13
  40059f:	41 54                	push   %r12
  4005a1:	4c 8d 25 68 08 20 00 	lea    0x200868(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4005a8:	55                   	push   %rbp
  4005a9:	48 8d 2d 68 08 20 00 	lea    0x200868(%rip),%rbp        # 600e18 <__init_array_end>
  4005b0:	53                   	push   %rbx
  4005b1:	4c 29 e5             	sub    %r12,%rbp
  4005b4:	31 db                	xor    %ebx,%ebx
  4005b6:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ba:	48 83 ec 08          	sub    $0x8,%rsp
  4005be:	e8 1d fe ff ff       	callq  4003e0 <_init>
  4005c3:	48 85 ed             	test   %rbp,%rbp
  4005c6:	74 1e                	je     4005e6 <__libc_csu_init+0x56>
  4005c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005cf:	00 
  4005d0:	4c 89 ea             	mov    %r13,%rdx
  4005d3:	4c 89 f6             	mov    %r14,%rsi
  4005d6:	44 89 ff             	mov    %r15d,%edi
  4005d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005dd:	48 83 c3 01          	add    $0x1,%rbx
  4005e1:	48 39 eb             	cmp    %rbp,%rbx
  4005e4:	75 ea                	jne    4005d0 <__libc_csu_init+0x40>
  4005e6:	48 83 c4 08          	add    $0x8,%rsp
  4005ea:	5b                   	pop    %rbx
  4005eb:	5d                   	pop    %rbp
  4005ec:	41 5c                	pop    %r12
  4005ee:	41 5d                	pop    %r13
  4005f0:	41 5e                	pop    %r14
  4005f2:	41 5f                	pop    %r15
  4005f4:	c3                   	retq   
  4005f5:	90                   	nop
  4005f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005fd:	00 00 00 

0000000000400600 <__libc_csu_fini>:
  400600:	f3 c3                	repz retq 
  400602:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400604 <_fini>:
  400604:	48 83 ec 08          	sub    $0x8,%rsp
  400608:	48 83 c4 08          	add    $0x8,%rsp
  40060c:	c3                   	retq   
