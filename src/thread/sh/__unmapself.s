.text
.global __unmapself_sh_mmu
.type   __unmapself_sh_mmu, @function
__unmapself_sh_mmu:
	mov   #91, r3  ! SYS_munmap
	trapa #18

	or    r0, r0
	or    r0, r0
	or    r0, r0
	or    r0, r0
	or    r0, r0

	mov   #1, r3   ! SYS_exit
	mov   #0, r4
	trapa #17

	or    r0, r0
	or    r0, r0
	or    r0, r0
	or    r0, r0
	or    r0, r0
