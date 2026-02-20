#include <iostream>
#include <string>
using namespace std;

int main() {
    string s;
    cin >> s;

    // identifier
    if (s[0] == '_') {
        int i = 1;
        if (!isalpha(s[i])) {
            cout << "Invalid\n";
            return 0;
        }
        i++;
        while (i < s.length() - 1 && isalnum(s[i])) i++;
        if (s[i] == '#')
            cout << "Identifier\n";
        else
            cout << "Invalid\n";
    }

    else if (s == "!=")
        cout << "Not Equal Operator\n";

    else if (s == "int")
        cout << "Keyword int\n";

    else if (s == "char")
        cout << "Keyword char\n";

    else {
        bool digit = true;
        for (char c : s)
            if (!isdigit(c)) digit = false;

        if (digit)
            cout << "Constant Integer\n";
        else
            cout << "Invalid\n";
    }

    return 0;
}