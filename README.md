## Assembly:
```bash
nasm -f elf64 *.asm
```

## Linking:
```bash
ld *.o
```

## Running:
```bash
./a.out
```

## All
```bash
nasm -f elf64 *.asm && ld *.o && ./a.out
```