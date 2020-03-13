nfa = {}

n = int(input("Enter the no. of states: "))

for i in range(n):
    print("\n")
    state = input("Enter state name : ")
    no_t = int(input("Enter no. of transitions from state {}: ".format(state)))
    trans_of_state = {}
    for j in range(no_t):
        transition_inut = input("Enter transition {}: ".format(j+1))
        end_state = input("Enter end states of the transition: ")
        trans_of_state[transition_input] = end_state   
    nfa[state] = trans_of_state
        
print("\nEntered NFA : \n")
print(nfa)            
