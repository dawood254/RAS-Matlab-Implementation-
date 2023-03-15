clc
clear
P = input('Choose a prime number P = ');
Q = input('Choose a second prime number Q =  ');
Error = 'P is not a prime integer';
Error2 = 'Q is not a prime integer';
if  isprime(P)==0    
  disp(Error)
  return;
elseif isprime(Q)==0 
    disp(Error2)
  return;
else
    N = P*Q;
    Phi_N = (P-1)*(Q-1);
    All_posible_keys = List_all_Inverses(Phi_N)
    Text = 'Select a key e in the above list';
    disp(Text)
    e = input('e = ');
    d = modinv(e,Phi_N);
    Public_Key = [e, N]
    Private_Key = [d, N]
    
    %%%%%%%%%%%%%Encryption%%%%%%%%%%%
    m = input('Input the plaintext m =  ');
    Ciphertext = modexp(m,e,N)
    %%%%%%%%%%%%% Decryption %%%%%%%%%%%%%%
    Plaintext = modexp(Ciphertext,d,N)
    
end

