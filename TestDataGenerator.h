//
//  TestDataGenerator.h
//  test_data_generator
//
//  Created by Cuddly on 2022/3/29.
//  Copyright © 2022 Cuddly. All rights reserved.
//

#ifndef TestDataGenerator_h
#define TestDataGenerator_h
#include "Utils.h"
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
using namespace std;
class TestDataGenerator {
public:
    string file_name;
    int insert_num;
    int int_begin;
    double float_begin;
    int char_begin;
    string pad_datetime;
    int* pri_pos;
    int col_num;
    vector<string> col_type;
    vector<string> row_contents;
    string table_name;
    int model;
public:
    TestDataGenerator(string _file_name, int _model);
    TestDataGenerator(string _file_name, int _model, const char** argv);
    bool append_raw_sentence(const char* raw_sentence);
    bool append_insert_sentence();
    void print_config();
};

#endif /* TestDataGenerator_h */
