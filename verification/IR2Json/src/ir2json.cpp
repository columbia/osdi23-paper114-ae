#include "ir2json.h"

void pretty_print(json::Value val, int indent = 0)
{
    std::string ind_space = std::string(indent, ' ');

    switch (val.kind())
    {
    case json::Value::Null:
    {

        std::cout << "null";
        break;
    }
    case json::Value::Boolean:
    {
        if (val.getAsBoolean().getValue())
        {
            std::cout << "true";
        }
        else
        {
            std::cout << "false";
        }
        break;
    }
    case json::Value::Number:
    {
        std::cout << val.getAsNumber().getValue();
        break;
    }
    case json::Value::String:
    {
        std::cout << '"' << val.getAsString().getValue().str() << '"';
        break;
    }
    case json::Value::Object:
    {
        auto obj = val.getAsObject();
        std::cout << "{" << std::endl
                  << ind_space << "  ";
        int i = 0;
        for (auto kv : *obj)
        {
            std::cout << '"' << kv.first.str() << '"' << ':';
            pretty_print(kv.second, indent + 2);
            i++;
            if (i < obj->size())
                std::cout << "," << std::endl
                          << ind_space << "  ";
        }
        std::cout << std::endl
                  << ind_space << "}";
        break;
    }
    case json::Value::Array:
    {
        auto arr = val.getAsArray();
        std::cout << "[" << std::endl
                  << ind_space << "  ";
        int i = 0;
        for (auto val : *arr)
        {
            pretty_print(val, indent + 2);
            i++;
            if (i < arr->size())
                std::cout << "," << std::endl
                          << ind_space << "  ";
        }
        std::cout << std::endl
                  << ind_space << "]";
        break;
    }
    }
}

int main(int argc, char **argv)
{
    llvm::LLVMContext ctx;
    llvm::SMDiagnostic err;

    const std::string filename = (argc < 2) ? "-" : std::string{argv[1]};

    auto module = llvm::parseIRFile(filename, err, ctx);
    if (!module)
    {
        err.print("ir2json", llvm::errs());
        return 3;
    }

    auto obj = ir2json::gen_module(module.get());

    pretty_print(obj);

    std::cout << std::endl;

    return 0;
}
