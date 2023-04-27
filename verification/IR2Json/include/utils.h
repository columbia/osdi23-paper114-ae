#pragma once

#include "imports.h"

static std::string addSuffix(std::string source, std::string suffix)
{
    source.append("-");
    source.append(suffix);
    return source;
}

template <typename T>
static std::string print(const T *val)
{
    std::string res;
    llvm::raw_string_ostream stream{res};
    val->print(stream);
    return stream.str();
}

static json::Value obj2value(json::Object obj)
{
    auto _val = json::Value(json::Object(obj));
    return _val;
};

static std::string printValue(const Value *opd)
{
    std::string out_buffer;
    raw_string_ostream buffer(out_buffer);
    opd->printAsOperand(buffer, false);
    return out_buffer;
}

static std::string printAtomicOrdering(AtomicOrdering order)
{
    switch (order)
    {
        case AtomicOrdering::NotAtomic: return "NotAtomic";
        case AtomicOrdering::Unordered: return "Unordered";
        case AtomicOrdering::Monotonic: return "Monotonic";
        case AtomicOrdering::Acquire: return "Acquire";
        case AtomicOrdering::Release: return "Release";
        case AtomicOrdering::AcquireRelease: return "AcquireRelease";
        case AtomicOrdering::SequentiallyConsistent: return "SequentiallyConsistent";
    }
}

static std::string printValueAsOperand(const llvm::Value *val)
{
    std::string out_buffer;
    raw_string_ostream buffer(out_buffer);
    val->printAsOperand(buffer, false);
    return out_buffer;
}

static std::string wrap_string(std::string str)
{
    str = std::regex_replace(str, std::regex("\\\\"), "\\\\");
    str = std::regex_replace(str, std::regex("\""), "\\\"");
    str = std::regex_replace(str, std::regex("\r\n"), "\\n");
    str = std::regex_replace(str, std::regex("\r"), "\\n");
    str = std::regex_replace(str, std::regex("\n"), "\\n");
    str = std::regex_replace(str, std::regex("\t"), "\\t");
    return str;
}
