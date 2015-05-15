#pragma once

enum syscalls
	SYSCALL_KERNEL_REQUEST_FAST_SYSCALL_INTERFACE
	
	SYSCALL_PROCESS_GET_PID
	SYSCALL_PROCESS_GET_PARENT_PID
	SYSCALL_PROCESS_CREATE
	SYSCALL_PROCESS_EXIT
	SYSCALL_PROCESS_KILL
	
	SYSCALL_THREAD_GET_TID
	SYSCALL_THREAD_CREATE
	SYSCALL_THREAD_SLEEP
	SYSCALL_THREAD_EXIT
	
	SYSCALL_MEMORY_ALLOCATE_PHYSICAL
	
	SYSCALL_PORT_REQUEST
	SYSCALL_PORT_RELEASE
	
	SYSCALL_IRQ_HANDLER_REGISTER
	SYSCALL_IRQ_HANDLER_EXIT
	
	SYSCALL_IPC_HANDLER_CALL
	SYSCALL_IPC_HANDLER_SET
	SYSCALL_IPC_HANDLER_EXIT
	
	SYSCALL_FORTY_TWO = 42
end enum
