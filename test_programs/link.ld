/*
 * Copyright 2013-2014 Jonas Zaddach <zaddach@eurecom.fr>, EURECOM
 *
 * You can redistribute and/or modify this program under the terms of the
 * GNU General Public License version 2 or later.
 */

OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_entry)
SECTIONS
{
    _entry = .;
    .text         : { *(.init) *(.text) }
    .data         : { *(.data) }
    .bss          : { *(.bss) }
}
