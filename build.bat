set name=%2
SET obj_name=%name%.o
SET elf_name=%name%.elf
SET gba_name=%name%.gba

arm-none-eabi-gcc -c %1 -mthumb-interwork -mthumb -O2 -o %obj_name%
arm-none-eabi-gcc %obj_name% -mthumb-interwork -mthumb -specs=gba.specs -o %elf_name%
arm-none-eabi-objcopy -v -O binary %elf_name% %gba_name%
gbafix %gba_name%
