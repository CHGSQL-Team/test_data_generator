//
//  main.cpp
//  test_data_generator
//
//  Created by Cuddly on 2022/3/29.
//  Copyright © 2022 Cuddly. All rights reserved.
//


#include "TestDataGenerator.h"
using namespace std;
int main(int argc, const char * argv[]) {
    int model;
    stringstream convert_stream;
    convert_stream << argv[2];
    convert_stream >> model;
    if(model == 1) {
        TestDataGenerator gen(argv[1], model);
        if(!gen.append_raw_sentence(argv[3])) {
            cout<<"something error happens in append raw sentence"<<endl;
        }
    }
    else {
        TestDataGenerator gen(argv[1], model, argv);
        gen.print_config();
        if(!gen.append_insert_sentence()) {
            cout<<"something error happens in append insert sentence"<<endl;
        }
    }
    return 0;
}


