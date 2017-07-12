
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

0000000000400440 <main>:
  400440:	48 83 ec 18          	sub    $0x18,%rsp
  400444:	be 03 00 00 00       	mov    $0x3,%esi
  400449:	bf 02 00 00 00       	mov    $0x2,%edi
  40044e:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  400453:	e8 18 01 00 00       	callq  400570 <multstore>
  400458:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40045d:	bf 20 06 40 00       	mov    $0x400620,%edi
  400462:	31 c0                	xor    %eax,%eax
  400464:	e8 a7 ff ff ff       	callq  400410 <printf@plt>
  400469:	31 c0                	xor    %eax,%eax
  40046b:	48 83 c4 18          	add    $0x18,%rsp
  40046f:	c3                   	retq   

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 00 06 40 00 	mov    $0x400600,%r8
  400486:	48 c7 c1 90 05 40 00 	mov    $0x400590,%rcx
  40048d:	48 c7 c7 40 04 40 00 	mov    $0x400440,%rdi
  400494:	e8 87 ff ff ff       	callq  400420 <__libc_start_main@plt>
  400499:	f4                   	hlt    
  40049a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004a0 <deregister_tm_clones>:
  4004a0:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  4004a5:	55                   	push   %rbp
  4004a6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4004b0:	48 89 e5             	mov    %rsp,%rbp
  4004b3:	77 02                	ja     4004b7 <deregister_tm_clones+0x17>
  4004b5:	5d                   	pop    %rbp
  4004b6:	c3                   	retq   
  4004b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004bc:	48 85 c0             	test   %rax,%rax
  4004bf:	74 f4                	je     4004b5 <deregister_tm_clones+0x15>
  4004c1:	5d                   	pop    %rbp
  4004c2:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004c7:	ff e0                	jmpq   *%rax
  4004c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004d0 <register_tm_clones>:
  4004d0:	b8 38 10 60 00       	mov    $0x601038,%eax
  4004d5:	55                   	push   %rbp
  4004d6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004dc:	48 c1 f8 03          	sar    $0x3,%rax
  4004e0:	48 89 e5             	mov    %rsp,%rbp
  4004e3:	48 89 c2             	mov    %rax,%rdx
  4004e6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4004ea:	48 01 d0             	add    %rdx,%rax
  4004ed:	48 d1 f8             	sar    %rax
  4004f0:	75 02                	jne    4004f4 <register_tm_clones+0x24>
  4004f2:	5d                   	pop    %rbp
  4004f3:	c3                   	retq   
  4004f4:	ba 00 00 00 00       	mov    $0x0,%edx
  4004f9:	48 85 d2             	test   %rdx,%rdx
  4004fc:	74 f4                	je     4004f2 <register_tm_clones+0x22>
  4004fe:	5d                   	pop    %rbp
  4004ff:	48 89 c6             	mov    %rax,%rsi
  400502:	bf 38 10 60 00       	mov    $0x601038,%edi
  400507:	ff e2                	jmpq   *%rdx
  400509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400510 <__do_global_dtors_aux>:
  400510:	80 3d 1d 0b 20 00 00 	cmpb   $0x0,0x200b1d(%rip)        # 601034 <_edata>
  400517:	75 11                	jne    40052a <__do_global_dtors_aux+0x1a>
  400519:	55                   	push   %rbp
  40051a:	48 89 e5             	mov    %rsp,%rbp
  40051d:	e8 7e ff ff ff       	callq  4004a0 <deregister_tm_clones>
  400522:	5d                   	pop    %rbp
  400523:	c6 05 0a 0b 20 00 01 	movb   $0x1,0x200b0a(%rip)        # 601034 <_edata>
  40052a:	f3 c3                	repz retq 
  40052c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400530 <frame_dummy>:
  400530:	48 83 3d e8 08 20 00 	cmpq   $0x0,0x2008e8(%rip)        # 600e20 <__JCR_END__>
  400537:	00 
  400538:	74 1e                	je     400558 <frame_dummy+0x28>
  40053a:	b8 00 00 00 00       	mov    $0x0,%eax
  40053f:	48 85 c0             	test   %rax,%rax
  400542:	74 14                	je     400558 <frame_dummy+0x28>
  400544:	55                   	push   %rbp
  400545:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	ff d0                	callq  *%rax
  40054f:	5d                   	pop    %rbp
  400550:	e9 7b ff ff ff       	jmpq   4004d0 <register_tm_clones>
  400555:	0f 1f 00             	nopl   (%rax)
  400558:	e9 73 ff ff ff       	jmpq   4004d0 <register_tm_clones>
  40055d:	0f 1f 00             	nopl   (%rax)

0000000000400560 <mult2>:
  400560:	48 89 f8             	mov    %rdi,%rax
  400563:	48 0f af c6          	imul   %rsi,%rax
  400567:	c3                   	retq   
  400568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40056f:	00 

0000000000400570 <multstore>:
  400570:	53                   	push   %rbx
  400571:	48 89 f8             	mov    %rdi,%rax
  400574:	48 89 d3             	mov    %rdx,%rbx
  400577:	48 89 f7             	mov    %rsi,%rdi
  40057a:	48 89 c6             	mov    %rax,%rsi
  40057d:	e8 de ff ff ff       	callq  400560 <mult2>
  400582:	48 89 03             	mov    %rax,(%rbx)
  400585:	b8 03 00 00 00       	mov    $0x3,%eax
  40058a:	5b                   	pop    %rbx
  40058b:	c3                   	retq   
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

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
