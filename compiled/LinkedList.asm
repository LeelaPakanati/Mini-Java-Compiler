	global main
extern printf
extern malloc
extern free
section .text

MainClass_LinkedList:
main:
	push ebp
	mov ebp, esp 
	mov eax, 0
	push eax
	call malloc
	add esp, 4
	push eax
	call LL_Method_Start
	add esp, 4
	push eax
	call PrintNum
	pop eax
	mov esp, ebp 
	pop ebp
	ret
Class_Element:
Element_Method_Init:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 20] 
	mov ecx, [ebp + 8] 
	mov [ecx + 1], eax 
	mov eax, [ebp + 16] 
	mov ecx, [ebp + 8] 
	mov [ecx + 2], eax 
	mov eax, [ebp + 12] 
	mov ecx, [ebp + 8] 
	mov [ecx + 3], eax 
	mov esp, ebp 
	pop ebp
	ret
Element_Method_GetAge:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	mov esp, ebp 
	pop ebp
	ret
Element_Method_GetSalary:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 2] 
	mov esp, ebp 
	pop ebp
	ret
Element_Method_GetMarried:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	mov esp, ebp 
	pop ebp
	ret
Element_Method_Equal:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov [ebp + -4], eax 
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_GetAge
	add esp, 4
	mov [ebp + -8], eax 
	mov eax, [ebp + -8] 
	push eax
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	push eax
	mov eax, [ebp + 8] 
	push eax
	call Element_Method_Compare
	add esp, 12
	not eax
	cmp eax, 1
	jmp if_0_true
if_0_false:
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_GetSalary
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, [ebp + -12] 
	push eax
	mov eax, [ebp + 8] 
	mov eax, [eax + 2] 
	push eax
	mov eax, [ebp + 8] 
	push eax
	call Element_Method_Compare
	add esp, 12
	not eax
	cmp eax, 1
	jmp if_1_true
if_1_false:
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	cmp eax, 1
	jmp if_2_true
if_2_false:
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_GetMarried
	add esp, 4
	cmp eax, 1
	jmp if_3_true
if_3_false:
	mov eax, 0
	mov [ebp + -16], eax 
	jmp if_3_end
if_3_true:
	mov [ebp + -4], eax 
if_3_end:
	jmp if_2_end
if_2_true:
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_GetMarried
	add esp, 4
	not eax
	cmp eax, 1
	jmp if_4_true
if_4_false:
	mov eax, 0
	mov [ebp + -16], eax 
	jmp if_4_end
if_4_true:
	mov [ebp + -4], eax 
if_4_end:
if_2_end:
	jmp if_1_end
if_1_true:
	mov [ebp + -4], eax 
if_1_end:
	jmp if_0_end
if_0_true:
	mov [ebp + -4], eax 
if_0_end:
	mov eax, [ebp + -4] 
	mov esp, ebp 
	pop ebp
	ret
Element_Method_Compare:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	mov [ebp + -4], eax 
	mov eax, 1
	push eax
	mov eax, [ebp + 12] 
	pop edx
	add eax, edx
	mov [ebp + -8], eax 
	mov eax, [ebp + 12] 
	push eax
	mov eax, [ebp + 16] 
	pop edx
	cmp eax, edx
	jl if_5_true
if_5_false:
	mov eax, [ebp + -8] 
	push eax
	mov eax, [ebp + 16] 
	pop edx
	cmp eax, edx
	not eax
	cmp eax, 1
	jmp if_6_true
if_6_false:
	mov [ebp + -4], eax 
	jmp if_6_end
if_6_true:
	mov [ebp + -4], eax 
if_6_end:
	jmp if_5_end
if_5_true:
	mov [ebp + -4], eax 
if_5_end:
	mov eax, [ebp + -4] 
	mov esp, ebp 
	pop ebp
	ret
Class_List:
List_Method_Init:
	push ebp
	mov ebp, esp 
	mov ecx, [ebp + 8] 
	mov [ecx + 3], eax 
	mov esp, ebp 
	pop ebp
	ret
List_Method_InitNew:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 12] 
	mov ecx, [ebp + 8] 
	mov [ecx + 3], eax 
	mov eax, [ebp + 20] 
	mov ecx, [ebp + 8] 
	mov [ecx + 1], eax 
	mov eax, [ebp + 16] 
	mov ecx, [ebp + 8] 
	mov [ecx + 2], eax 
	mov esp, ebp 
	pop ebp
	ret
List_Method_Insert:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov [ebp + -8], eax 
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, [ebp + 12] 
	push eax
	mov eax, [ebp + -8] 
	push eax
	push eax
	mov eax, [ebp + -12] 
	push eax
	call List_Method_InitNew
	add esp, 16
	mov [ebp + -4], eax 
	mov eax, [ebp + -12] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_SetNext:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 12] 
	mov ecx, [ebp + 8] 
	mov [ecx + 2], eax 
	mov esp, ebp 
	pop ebp
	ret
List_Method_Delete:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov [ebp + -4], eax 
	mov [ebp + -8], eax 
	mov eax, 1
	push eax
	mov eax, 0
	pop edx
	sub eax, edx
	mov [ebp + -32], eax 
	mov [ebp + -16], eax 
	mov [ebp + -20], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	mov [ebp + -24], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	mov [ebp + -28], eax 
while_7_start:
	mov eax, [ebp + -8] 
	not eax
	push eax
	mov eax, [ebp + -24] 
	not eax
	pop edx
	cmp eax, edx
	je while_7_true
	jmp while_7_end
while_7_true:
	mov eax, [ebp + -28] 
	push eax
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_Equal
	add esp, 8
	cmp eax, 1
	jmp if_8_true
if_8_false:
	mov eax, 0
	mov [ebp + -36], eax 
	jmp if_8_end
if_8_true:
	mov [ebp + -8], eax 
	mov eax, 0
	push eax
	mov eax, [ebp + -32] 
	pop edx
	cmp eax, edx
	jl if_9_true
if_9_false:
	mov eax, 555
	push eax
	mov eax, 0
	pop edx
	sub eax, edx
	push eax
	call PrintNum
	pop eax
	mov eax, [ebp + -16] 
	push eax
	call List_Method_GetNext
	add esp, 4
	push eax
	mov eax, [ebp + -20] 
	push eax
	call List_Method_SetNext
	add esp, 8
	mov [ebp + -12], eax 
	mov eax, 555
	push eax
	mov eax, 0
	pop edx
	sub eax, edx
	push eax
	call PrintNum
	pop eax
	jmp if_9_end
if_9_true:
	mov eax, [ebp + -16] 
	push eax
	call List_Method_GetNext
	add esp, 4
	mov [ebp + -4], eax 
if_9_end:
if_8_end:
	mov eax, [ebp + -8] 
	not eax
	cmp eax, 1
	jmp if_10_true
if_10_false:
	mov eax, 0
	mov [ebp + -36], eax 
	jmp if_10_end
if_10_true:
	mov eax, [ebp + -16] 
	mov [ebp + -20], eax 
	mov eax, [ebp + -16] 
	push eax
	call List_Method_GetNext
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, [ebp + -16] 
	push eax
	call List_Method_GetEnd
	add esp, 4
	mov [ebp + -24], eax 
	mov eax, [ebp + -16] 
	push eax
	call List_Method_GetElem
	add esp, 4
	mov [ebp + -28], eax 
	mov eax, 1
	mov [ebp + -32], eax 
if_10_end:
	jmp while_7_start
while_7_end:
	mov eax, [ebp + -4] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_Search:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, 0
	mov [ebp + -4], eax 
	mov [ebp + -8], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	mov [ebp + -16], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	mov [ebp + -12], eax 
while_11_start:
	mov eax, [ebp + -16] 
	not eax
	cmp eax, 1
	jmp while_11_true
	jmp while_11_end
while_11_true:
	mov eax, [ebp + -12] 
	push eax
	mov eax, [ebp + 12] 
	push eax
	call Element_Method_Equal
	add esp, 8
	cmp eax, 1
	jmp if_12_true
if_12_false:
	mov eax, 0
	mov [ebp + -20], eax 
	jmp if_12_end
if_12_true:
	mov eax, 1
	mov [ebp + -4], eax 
if_12_end:
	mov eax, [ebp + -8] 
	push eax
	call List_Method_GetNext
	add esp, 4
	mov [ebp + -8], eax 
	mov eax, [ebp + -8] 
	push eax
	call List_Method_GetEnd
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, [ebp + -8] 
	push eax
	call List_Method_GetElem
	add esp, 4
	mov [ebp + -12], eax 
	jmp while_11_start
while_11_end:
	mov eax, [ebp + -4] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_GetEnd:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_GetElem:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_GetNext:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	mov eax, [eax + 2] 
	mov esp, ebp 
	pop ebp
	ret
List_Method_Print:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov [ebp + -4], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 3] 
	mov [ebp + -8], eax 
	mov eax, [ebp + 8] 
	mov eax, [eax + 1] 
	mov [ebp + -12], eax 
while_13_start:
	mov eax, [ebp + -8] 
	not eax
	cmp eax, 1
	jmp while_13_true
	jmp while_13_end
while_13_true:
	mov eax, [ebp + -12] 
	push eax
	call Element_Method_GetAge
	add esp, 4
	push eax
	call PrintNum
	pop eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_GetNext
	add esp, 4
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_GetEnd
	add esp, 4
	mov [ebp + -8], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_GetElem
	add esp, 4
	mov [ebp + -12], eax 
	jmp while_13_start
while_13_end:
	mov esp, ebp 
	pop ebp
	ret
Class_LL:
LL_Method_Start:
	push ebp
	mov ebp, esp 
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -8], eax 
	mov eax, [ebp + -8] 
	push eax
	call List_Method_Init
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, [ebp + -8] 
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Init
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, 25
	push eax
	mov eax, 37000
	push eax
	push eax
	mov eax, [ebp + -16] 
	push eax
	call Element_Method_Init
	add esp, 16
	mov [ebp + -12], eax 
	mov eax, [ebp + -16] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Insert
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 10000000
	push eax
	call PrintNum
	pop eax
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, 39
	push eax
	mov eax, 42000
	push eax
	push eax
	mov eax, [ebp + -16] 
	push eax
	call Element_Method_Init
	add esp, 16
	mov [ebp + -12], eax 
	mov eax, [ebp + -16] 
	mov [ebp + -20], eax 
	mov eax, [ebp + -16] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Insert
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 10000000
	push eax
	call PrintNum
	pop eax
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, 22
	push eax
	mov eax, 34000
	push eax
	push eax
	mov eax, [ebp + -16] 
	push eax
	call Element_Method_Init
	add esp, 16
	mov [ebp + -12], eax 
	mov eax, [ebp + -16] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Insert
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -24], eax 
	mov eax, 27
	push eax
	mov eax, 34000
	push eax
	push eax
	mov eax, [ebp + -24] 
	push eax
	call Element_Method_Init
	add esp, 16
	mov [ebp + -12], eax 
	mov eax, [ebp + -20] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Search
	add esp, 8
	push eax
	call PrintNum
	pop eax
	mov eax, [ebp + -24] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Search
	add esp, 8
	push eax
	call PrintNum
	pop eax
	mov eax, 10000000
	push eax
	call PrintNum
	pop eax
	mov eax, 12
	push eax
	call malloc
	add esp, 4
	mov [ebp + -16], eax 
	mov eax, 28
	push eax
	mov eax, 35000
	push eax
	push eax
	mov eax, [ebp + -16] 
	push eax
	call Element_Method_Init
	add esp, 16
	mov [ebp + -12], eax 
	mov eax, [ebp + -16] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Insert
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 2220000
	push eax
	call PrintNum
	pop eax
	mov eax, [ebp + -20] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Delete
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 33300000
	push eax
	call PrintNum
	pop eax
	mov eax, [ebp + -16] 
	push eax
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Delete
	add esp, 8
	mov [ebp + -4], eax 
	mov eax, [ebp + -4] 
	push eax
	call List_Method_Print
	add esp, 4
	mov [ebp + -12], eax 
	mov eax, 44440000
	push eax
	call PrintNum
	pop eax
	mov eax, 0
	mov esp, ebp 
	pop ebp
	ret
Syscall_EXIT:
	mov eax, 1
	int 0x80

PrintNum:
	push ebp
	mov ebp, esp 
	mov eax, [ebp + 8] 
	push eax
	push message
	call printf
	mov esp, ebp 
	pop ebp
	ret
message db "%d", 10, 0
