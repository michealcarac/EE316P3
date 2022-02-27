from vunit import VUnit

# Create VUnit instance by parsing command line arguments
vu = VUnit.from_argv(vhdl_standard="08");
#vu = VUnit.from_argv(vhdl_standard="93")

# Create library 'lib'
lib = vu.add_library("lib")

# Add all files ending in .vhd in current working directory to library
lib.add_source_files("../*.vhd")

vu.set_compile_option("ghdl.a_flags", ["--ieee=synopsys", "-frelaxed-rules", "-fexplicit"])

# Run vunit function
vu.main()