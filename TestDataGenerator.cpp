//
//  TestDataGenerator.cpp
//  test_data_generator
//
//  Created by Cuddly on 2022/3/29.
//  Copyright © 2022 Cuddly. All rights reserved.
//

#include "TestDataGenerator.h"
using namespace std;




TestDataGenerator::TestDataGenerator(string _file_name, int _model) {
    file_name = _file_name;
    model = _model;
}
TestDataGenerator::TestDataGenerator(string _file_name, int _model, const char** argv) {
    file_name = _file_name;
    model = _model;
    table_name = string(argv[3]);
    col_num = Utils::convert_char_to_int(argv[4]);
    for(int i=0; i<col_num; i++) {
        col_type.push_back(string(argv[5+i]));
    }
    int_begin = Utils::convert_char_to_int(argv[5+col_num]);
    float_begin = int_begin + 0.99;
    char_begin = int_begin;
    insert_num = Utils::convert_char_to_int(argv[5+col_num+1]);
    pad_datetime = "\"2021-12-12 00:00:00\"";
}

void TestDataGenerator::print_config() {
    cout<<"config start........"<<endl;
    cout<<"table_name: "<<table_name<<endl;
    cout<<"col_num: "<<col_num<<endl;
    for(const string e: col_type) {
        cout<<e<<" ";
    }
    cout<<endl;
    cout<<"isnert_begin: "<<int_begin<<endl;
    cout<<"insert_num: "<<insert_num<<endl;
    cout<<"config end....."<<endl;
}

bool TestDataGenerator::append_raw_sentence(const char* source_file) {
    fstream source(source_file, ios::in);
    string destination_file(file_name);
    fstream destination(destination_file, ios::app);
    if(!source || !destination)
        return false;
    destination << source.rdbuf();
    return true;
}


bool TestDataGenerator::append_insert_sentence() {
    ofstream file_obj;
    file_obj.open(file_name, ios::app);
    if(!file_obj) {
        cout<<"file open error"<<endl;
        return false;
    }
    string insert_head("INSERT INTO `");
    insert_head += table_name;
    insert_head +="` values \n";
    file_obj << insert_head;
    for(int i=0; i<insert_num; i++) {
        string row_content("(");
        for(int j=0; j<col_num; j++) {
            if(col_type[j].compare("int") == 0) {
                row_content.append(Utils::convert_to_string(int_begin));
                if(j != col_num - 1)
                    row_content += ",";
                int_begin++;
            }
            else if(col_type[j].compare("float") == 0) {
                row_content.append(Utils::convert_to_string(float_begin));
                if(j != col_num - 1)
                    row_content += ",";
                float_begin += 1.101;
            }
            else if(col_type[j].compare("varchar") == 0) {
                row_content.append("\"");
                row_content.append(Utils::convert_to_string(char_begin));
                row_content.append("\"");
                if(j != col_num - 1)
                    row_content += ",";
                char_begin++;
            }
            else if(col_type[j].compare("datetime") == 0){
                row_content.append(pad_datetime);
                if(j != col_num - 1)
                    row_content += ",";
            }
        }
        if(i != insert_num - 1)
            row_content += "),\n";
        else {
            row_content += ");\n";
        }
        file_obj << row_content;
    }
    return true;
}


