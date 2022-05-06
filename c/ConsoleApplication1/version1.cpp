// ConsoleApplication1.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
#include <string> 
using namespace std;
int main()
{
	string ok;

    streampos size;
    char* memblock;

    ifstream file("input.txt", ios::in | ios::binary | ios::ate);
    if (file.is_open())
    {
        size = file.tellg();
        memblock = new char[size];
        file.seekg(0, ios::beg);
        file.read(memblock, size);


        ofstream fw("output.txt", std::ofstream::out);


        std::string s = memblock;
        std::string delimiter = ".INIT_";

        size_t pos = 0;
        std::string token;
        std::string tokenBit;
        string pre;
        string post;
        int currentHex=0;
        int bit0;
        int bit1;
        int bit2;
        int bit3;

        int number = 0;

        while ((pos = s.find(delimiter)) != std::string::npos) {
            token = s.substr(0, pos);

           // token = token.substr(7, 10);
            if (token != "")
            {
                
                pre = "asciTable[" + to_string(number) + ']';

                
                token = token.substr(8, 64);

                for (int i = 0; i < 16; i++) {

                    for (int j = 0; j < 4; j++) {

                        char CurrentHexChar = token[i * 4 + j];

                        int currentHex = (CurrentHexChar >= 'A') ? (CurrentHexChar - 'A' + 10) : (CurrentHexChar - '0');

                        bit0 = (currentHex % 2) / 1;

                        post = "[" + to_string(i) + "][" + to_string(j*4 + 0) + "]";
                        tokenBit = pre + post + "=" + to_string(bit0) + ";";
                        fw << tokenBit << std::endl;

                        bit1 = (currentHex % 4 - bit0) / 2;

                        post = "[" + to_string(i) + "][" + to_string(j * 4 + 1) + "]";
                        tokenBit = pre + post + "=" + to_string(bit1) + ";";
                        fw << tokenBit << std::endl;


                        bit2 = (currentHex % 8 - bit0 - bit1) / 4;

                        post = "[" + to_string(i) + "][" + to_string(j * 4 + 2) + "]";
                        tokenBit = pre + post + "=" + to_string(bit2) + ";";
                        fw << tokenBit << std::endl;


                        bit3 = (currentHex % 16 - bit0 - bit1 - bit2) / 8;

                        post = "[" + to_string(i) + "][" + to_string(j * 4 + 3) + "]";
                        tokenBit = pre + post + "=" + to_string(bit3) + ";";
                        fw << tokenBit << std::endl;

                    }
                }


                //token = pre + token.substr(8, 64);


                number++;
            }





            //std::cout << token << std::endl;
            s.erase(0, pos + delimiter.length());
        }





        fw.close();
        std::cout << s << std::endl;


        file.close();

        cout << "the entire file content is in memory";

        delete[] memblock;
    }
    else cout << "Unable to open file";







    return 0;




}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
