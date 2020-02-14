	global main
extern printf
extern malloc
extern free
section .text

MainClass_BinaryTree:
main:
	push ebp
	mov ebp, esp
	mov eax, 8
	push eax
	call malloc
	add esp, 4
	push eax
	call BT_Method_Start
	add esp, 4
	push eax
	call PrintNum
	add esp, 4
	mov esp, ebp
	pop ebp
	ret
Class_BT:
BT_Method_Start:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, 32
	push eax
	call malloc
	add esp, 4
	mov dword [ebp + -4], eax
	mov eax, 16
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Init
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Print
	add esp, 4
	mov dword [ebp + -8], eax
	mov eax, 100000000
	push eax
	call PrintNum
	add esp, 4
	mov eax, 8
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Print
	add esp, 4
	mov dword [ebp + -8], eax
	mov eax, 24
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 4
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 12
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 20
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 28
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 14
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Insert
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Print
	add esp, 4
	mov dword [ebp + -8], eax
	mov eax, 24
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 12
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 16
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 50
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 12
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 12
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Delete
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Print
	add esp, 4
	mov dword [ebp + -8], eax
	mov eax, 12
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Search
	add esp, 8
	push eax
	call PrintNum
	add esp, 4
	mov eax, 0
	mov esp, ebp
	pop ebp
	ret
Class_Tree:
Tree_Method_Init:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 12], eax
	mov eax, 0
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 16], eax
	mov eax, 0
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 20], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_SetRight:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 8], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_SetLeft:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 4], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_GetRight:
	push ebp
	mov ebp, esp
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 8]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_GetLeft:
	push ebp
	mov ebp, esp
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 4]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_GetKey:
	push ebp
	mov ebp, esp
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 12]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_SetKey:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 12], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_GetHas_Right:
	push ebp
	mov ebp, esp
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 20]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_GetHas_Left:
	push ebp
	mov ebp, esp
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 16]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_SetHas_Left:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 16], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_SetHas_Right:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 12]
	mov ebx, dword [ebp + 8]
	mov dword [ebx + 20], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Compare:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	mov eax, 0
	mov dword [ebp + -4], eax
	mov eax, 1
	push eax
	mov eax, dword [ebp + 12]
	pop edx
	add eax, edx
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + 16]
	pop edx
	cmp eax, edx
	jl ift_0
	mov eax, 0
	jmp ifend_0
ift_0:
	mov eax, 1
ifend_0:
	cmp eax, 0
	jg if_0_true
if_0_false:
	mov eax, dword [ebp + -8]
	push eax
	mov eax, dword [ebp + 16]
	pop edx
	cmp eax, edx
	jl ift_1
	mov eax, 0
	jmp ifend_1
ift_1:
	mov eax, 1
ifend_1:
	cmp eax, 0
	je ift_2
	mov eax, 0
	jmp ifend_2
ift_2:
	mov eax, 1
ifend_2:
	cmp eax, 0
	jg if_1_true
if_1_false:
	mov eax, 1
	mov dword [ebp + -4], eax
	jmp if_1_end
if_1_true:
	mov eax, 0
	mov dword [ebp + -4], eax
if_1_end:
	jmp if_0_end
if_0_true:
	mov eax, 0
	mov dword [ebp + -4], eax
if_0_end:
	mov eax, dword [ebp + -4]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Insert:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, 32
	push eax
	call malloc
	add esp, 4
	mov dword [ebp + -4], eax
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_Init
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + 8]
	mov dword [ebp + -20], eax
	mov eax, 1
	mov dword [ebp + -12], eax
while_2_start:
	mov eax, dword [ebp + -12]
	cmp eax, 0
	jg while_2_true
	jmp while_2_end
while_2_true:
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_GetKey
	add esp, 4
	mov dword [ebp + -16], eax
	mov eax, dword [ebp + -16]
	push eax
	mov eax, dword [ebp + 12]
	pop edx
	cmp eax, edx
	jl ift_3
	mov eax, 0
	jmp ifend_3
ift_3:
	mov eax, 1
ifend_3:
	cmp eax, 0
	jg if_3_true
if_3_false:
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg if_4_true
if_4_false:
	mov eax, 0
	mov dword [ebp + -12], eax
	mov eax, 1
	push eax
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_SetHas_Right
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_SetRight
	add esp, 8
	mov dword [ebp + -8], eax
	jmp if_4_end
if_4_true:
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	mov dword [ebp + -20], eax
if_4_end:
	jmp if_3_end
if_3_true:
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg if_5_true
if_5_false:
	mov eax, 0
	mov dword [ebp + -12], eax
	mov eax, 1
	push eax
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_SetHas_Left
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_SetLeft
	add esp, 8
	mov dword [ebp + -8], eax
	jmp if_5_end
if_5_true:
	mov eax, dword [ebp + -20]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	mov dword [ebp + -20], eax
if_5_end:
if_3_end:
	jmp while_2_start
while_2_end:
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Delete:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, dword [ebp + 8]
	mov dword [ebp + -4], eax
	mov eax, dword [ebp + 8]
	mov dword [ebp + -8], eax
	mov eax, 1
	mov dword [ebp + -12], eax
	mov eax, 0
	mov dword [ebp + -16], eax
	mov eax, 1
	mov dword [ebp + -20], eax
while_6_start:
	mov eax, dword [ebp + -12]
	cmp eax, 0
	jg while_6_true
	jmp while_6_end
while_6_true:
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetKey
	add esp, 4
	mov dword [ebp + -24], eax
	mov eax, dword [ebp + -24]
	push eax
	mov eax, dword [ebp + 12]
	pop edx
	cmp eax, edx
	jl ift_4
	mov eax, 0
	jmp ifend_4
ift_4:
	mov eax, 1
ifend_4:
	cmp eax, 0
	jg if_7_true
if_7_false:
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + -24]
	pop edx
	cmp eax, edx
	jl ift_5
	mov eax, 0
	jmp ifend_5
ift_5:
	mov eax, 1
ifend_5:
	cmp eax, 0
	jg if_8_true
if_8_false:
	mov eax, dword [ebp + -20]
	cmp eax, 0
	jg if_9_true
if_9_false:
	mov eax, dword [ebp + -8]
	push eax
	mov eax, dword [ebp + -4]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_Remove
	add esp, 12
	mov dword [ebp + -28], eax
	jmp if_9_end
if_9_true:
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	je ift_6
	mov eax, 0
	jmp ifend_6
ift_6:
	mov eax, 1
ifend_6:
	push eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	je ift_7
	mov eax, 0
	jmp ifend_7
ift_7:
	mov eax, 1
ifend_7:
	pop edx
	cmp eax, edx
	je ift_8
	mov eax, 0
	jmp ifend_8
ift_8:
	mov eax, 1
ifend_8:
	cmp eax, 0
	jg if_10_true
if_10_false:
	mov eax, dword [ebp + -8]
	push eax
	mov eax, dword [ebp + -4]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_Remove
	add esp, 12
	mov dword [ebp + -28], eax
	jmp if_10_end
if_10_true:
	mov eax, 1
	mov dword [ebp + -28], eax
if_10_end:
if_9_end:
	mov eax, 1
	mov dword [ebp + -16], eax
	mov eax, 0
	mov dword [ebp + -12], eax
	jmp if_8_end
if_8_true:
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg if_11_true
if_11_false:
	mov eax, 0
	mov dword [ebp + -12], eax
	jmp if_11_end
if_11_true:
	mov eax, dword [ebp + -4]
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	mov dword [ebp + -4], eax
if_11_end:
if_8_end:
	jmp if_7_end
if_7_true:
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg if_12_true
if_12_false:
	mov eax, 0
	mov dword [ebp + -12], eax
	jmp if_12_end
if_12_true:
	mov eax, dword [ebp + -4]
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + -4]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	mov dword [ebp + -4], eax
if_12_end:
if_7_end:
	mov eax, 0
	mov dword [ebp + -20], eax
	jmp while_6_start
while_6_end:
	mov eax, dword [ebp + -16]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Remove:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg if_13_true
if_13_false:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg if_14_true
if_14_false:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetKey
	add esp, 4
	mov dword [ebp + -8], eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	push eax
	call Tree_Method_GetKey
	add esp, 4
	mov dword [ebp + -12], eax
	mov eax, dword [ebp + -8]
	push eax
	mov eax, dword [ebp + -12]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_Compare
	add esp, 12
	cmp eax, 0
	jg if_15_true
if_15_false:
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 24]
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetRight
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 0
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetHas_Right
	add esp, 8
	mov dword [ebp + -4], eax
	jmp if_15_end
if_15_true:
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 24]
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetLeft
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 0
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetHas_Left
	add esp, 8
	mov dword [ebp + -4], eax
if_15_end:
	jmp if_14_end
if_14_true:
	mov eax, dword [ebp + 16]
	push eax
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_RemoveRight
	add esp, 12
	mov dword [ebp + -4], eax
if_14_end:
	jmp if_13_end
if_13_true:
	mov eax, dword [ebp + 16]
	push eax
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_RemoveLeft
	add esp, 12
	mov dword [ebp + -4], eax
if_13_end:
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_RemoveRight:
	push ebp
	mov ebp, esp
	sub esp, 4
while_16_start:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg while_16_true
	jmp while_16_end
while_16_true:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	push eax
	call Tree_Method_GetKey
	add esp, 4
	push eax
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_SetKey
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, dword [ebp + 12]
	mov dword [ebp + 16], eax
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	mov dword [ebp + 12], eax
	jmp while_16_start
while_16_end:
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 24]
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetRight
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 0
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetHas_Right
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_RemoveLeft:
	push ebp
	mov ebp, esp
	sub esp, 4
while_17_start:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg while_17_true
	jmp while_17_end
while_17_true:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	push eax
	call Tree_Method_GetKey
	add esp, 4
	push eax
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_SetKey
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, dword [ebp + 12]
	mov dword [ebp + 16], eax
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	mov dword [ebp + 12], eax
	jmp while_17_start
while_17_end:
	mov ebx, dword [ebp + 8]
	mov eax, dword [ebx + 24]
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetLeft
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 0
	push eax
	mov eax, dword [ebp + 16]
	push eax
	call Tree_Method_SetHas_Left
	add esp, 8
	mov dword [ebp + -4], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Search:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	sub esp, 4
	sub esp, 4
	mov eax, dword [ebp + 8]
	mov dword [ebp + -12], eax
	mov eax, 1
	mov dword [ebp + -4], eax
	mov eax, 0
	mov dword [ebp + -8], eax
while_18_start:
	mov eax, dword [ebp + -4]
	cmp eax, 0
	jg while_18_true
	jmp while_18_end
while_18_true:
	mov eax, dword [ebp + -12]
	push eax
	call Tree_Method_GetKey
	add esp, 4
	mov dword [ebp + -16], eax
	mov eax, dword [ebp + -16]
	push eax
	mov eax, dword [ebp + 12]
	pop edx
	cmp eax, edx
	jl ift_9
	mov eax, 0
	jmp ifend_9
ift_9:
	mov eax, 1
ifend_9:
	cmp eax, 0
	jg if_19_true
if_19_false:
	mov eax, dword [ebp + 12]
	push eax
	mov eax, dword [ebp + -16]
	pop edx
	cmp eax, edx
	jl ift_10
	mov eax, 0
	jmp ifend_10
ift_10:
	mov eax, 1
ifend_10:
	cmp eax, 0
	jg if_20_true
if_20_false:
	mov eax, 1
	mov dword [ebp + -8], eax
	mov eax, 0
	mov dword [ebp + -4], eax
	jmp if_20_end
if_20_true:
	mov eax, dword [ebp + -12]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg if_21_true
if_21_false:
	mov eax, 0
	mov dword [ebp + -4], eax
	jmp if_21_end
if_21_true:
	mov eax, dword [ebp + -12]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	mov dword [ebp + -12], eax
if_21_end:
if_20_end:
	jmp if_19_end
if_19_true:
	mov eax, dword [ebp + -12]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg if_22_true
if_22_false:
	mov eax, 0
	mov dword [ebp + -4], eax
	jmp if_22_end
if_22_true:
	mov eax, dword [ebp + -12]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	mov dword [ebp + -12], eax
if_22_end:
if_19_end:
	jmp while_18_start
while_18_end:
	mov eax, dword [ebp + -8]
	mov esp, ebp
	pop ebp
	ret
Tree_Method_Print:
	push ebp
	mov ebp, esp
	sub esp, 4
	sub esp, 4
	mov eax, dword [ebp + 8]
	mov dword [ebp + -4], eax
	mov eax, dword [ebp + -4]
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_RecPrint
	add esp, 8
	mov dword [ebp + -8], eax
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Tree_Method_RecPrint:
	push ebp
	mov ebp, esp
	sub esp, 4
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Left
	add esp, 4
	cmp eax, 0
	jg if_23_true
if_23_false:
	mov eax, 1
	mov dword [ebp + -4], eax
	jmp if_23_end
if_23_true:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetLeft
	add esp, 4
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_RecPrint
	add esp, 8
	mov dword [ebp + -4], eax
if_23_end:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetKey
	add esp, 4
	push eax
	call PrintNum
	add esp, 4
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetHas_Right
	add esp, 4
	cmp eax, 0
	jg if_24_true
if_24_false:
	mov eax, 1
	mov dword [ebp + -4], eax
	jmp if_24_end
if_24_true:
	mov eax, dword [ebp + 12]
	push eax
	call Tree_Method_GetRight
	add esp, 4
	push eax
	mov eax, dword [ebp + 8]
	push eax
	call Tree_Method_RecPrint
	add esp, 8
	mov dword [ebp + -4], eax
if_24_end:
	mov eax, 1
	mov esp, ebp
	pop ebp
	ret
Syscall_EXIT:
	mov eax, 1
	int 0x80

PrintNum:
	push ebp
	mov ebp, esp
	mov eax, dword [ebp + 8]
	push eax
	push message
	call printf
	mov esp, ebp
	pop ebp
	ret
message db "%d", 10, 0

