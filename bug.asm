mov eax, [ebx + 4] ; potential bug: accessing memory beyond array bounds
mov ecx, [eax]