CC=llvm/bin/clang
CXX=llvm/bin/clang++
RM=rm -f

LLVM_ROOT=llvm/
LLVM_CONFIG=llvm/bin/llvm-config
LLVM_INCLUDE=llvm/include

CPPFLAGS=-g -O2 -DLLVM_DISABLE_ABI_BREAKING_CHECKS_ENFORCING
CPPFLAGS+=$(shell $(LLVM_CONFIG) --cxxflags)
LDFLAGS=$(shell $(LLVM_CONFIG) --ldflags)
LDLIBS=$(shell $(LLVM_CONFIG) --libs) -lpthread -lm

INCLUDES=-I include
INCLUDES+=-I $(LLVM_INCLUDE)

SRCS=\
src/gen_constant.cpp\
src/gen_function.cpp\
src/gen_global_var.cpp\
src/gen_instruction.cpp\
src/gen_module.cpp\
src/gen_type.cpp\
src/gen_value.cpp\
src/ir2json.cpp\

OBJS=$(subst .cpp,.o,$(SRCS))

all: ir2json

ir2json: $(OBJS)
	$(CXX) $(INCLUDES) $(LDFLAGS) -o ir2json $(OBJS) $(LDLIBS)

%.o: %.cpp
	$(CXX) $(INCLUDES) $(CPPFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) ir2json
