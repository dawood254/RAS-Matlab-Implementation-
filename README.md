# RAS-Matlab-Implementation-
This program is designed to perform RSA encryption and decryption. The program includes the following functions:

modinv(e,Phi_N) - This function calculates the modular multiplicative inverse of e modulo Phi_N using the Extended Euclidean Algorithm.

List_all_Inverses(Phi_N) - This function generates a list of all possible keys e that are coprime to Phi_N.

modexp(m,e,N) - This function calculates the modular exponentiation m^e mod N using the repeated squaring algorithm.

Extended_Euclidean_Algorithm(a, b) - This function calculates the greatest common divisor of two integers a and b using the Extended Euclidean Algorithm.

The program prompts the user to enter two prime numbers P and Q, calculates the product N = PQ, and calculates the Euler totient function of N (Phi_N = (P-1)(Q-1)). It then generates a list of all possible keys and prompts the user to select a key e from the list.

The program then calculates the modular inverse of e modulo Phi_N using the modinv function and outputs the public key [e, N] and private key [d, N].

The program then prompts the user to input a plaintext message and encrypts it using RSA encryption. It also decrypts the ciphertext to recover the original plaintext message using the modexp function.

To run the program, simply run the script in a MATLAB environment. When prompted, enter the two prime numbers P and Q, select a key e from the list of all possible keys, and enter a plaintext message to be encrypted.

Note: This program assumes that the input values for P and Q are prime numbers. If the input values are not prime, the program will output an error message and terminate.
