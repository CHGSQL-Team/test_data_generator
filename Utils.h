#include <string>
#include <sstream>
using namespace std;
class Utils {
    public:
    static string convert_to_string(int num);
    static string convert_to_string(double num);
    static int convert_char_to_int(const char* char_num);
};