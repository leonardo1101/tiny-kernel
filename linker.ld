OUTPUT_FORMAT(elf32-i386)
ENTRY(start)
SECTIONS
{
	. = 1M;
	.text BLOCK(4k) : ALIGN(4k)
	{
		*(.multiboot)
		*(.text)
	}
	.data : { *(.data) }
	.bss  : { *(.bss)  }
}