#include "Utils.h"

string Utils::convert_to_string(int num) {
    string num_string;
    stringstream convert_stream;
    convert_stream << num;
    convert_stream >> num_string;
    return num_string;
}

string Utils::convert_to_string(double num) {
    string num_string;
    stringstream convert_stream;
    convert_stream << num;
    convert_stream >> num_string;
    return num_string;
}

int Utils::convert_char_to_int(const char* char_num) {
    int num;
    stringstream int_convert;
    int_convert << char_num;
    int_convert >> num;
    return num;
}