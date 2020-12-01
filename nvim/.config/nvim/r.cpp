#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

/**
 *  * Auto-generated code below aims at helping you parse
 *   * the standard input according to the problem statement.
 *    **/

int main()
{
	    int X, d, sum = 0;
		std::string tmp;
		cin >> X; 
		
		for (int i = 0; X > 0; i++)
		{
			std::cout << "im here" << std::endl;
			tmp += std::to_string(X % 2);
			X=X/2;
		}

		for (int i = i - 1; i >= 0; i--)
		{
			std::cout << "im here now" << " :: " << tmp[i] <<  std::endl;
			sum += (int)(tmp[i]);
		}

		std::cout << sum;
}

