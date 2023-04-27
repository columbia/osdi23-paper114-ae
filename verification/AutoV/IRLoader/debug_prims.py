debug_prims = [
    lambda p: p in [
        "printhex_ul",
        "print_string",
        "printf",
        "printf_",
        "printk",
        "printhex_ul_dbg",
        "print_string_dbg"
    ],
    lambda p: p.startswith("llvm.dbg"),
    lambda p: p.startswith("llvm.lifetime"),
]
