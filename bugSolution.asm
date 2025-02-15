mov esi, array ; load base address of array
mov ecx, array_size ; load size of array
mov ebx, index ; load index
; check for out-of-bounds access
cmp ebx, ecx ; compare index and size
jge out_of_bounds ; jump if index >= size
mov eax, [esi + ebx*4] ; safe access: index within bounds
jmp done
out_of_bounds:
; handle out-of-bounds condition, maybe error handling
; for simplicity, we will just exit
mov eax, 0 ; return error code 0
jmp done
done: ; continue with the program