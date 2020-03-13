nfa = {}
    
n = int(input("Enter the no. of states: "))
    
for i in range(n):
    print("\n")
    state = input("Enter state name : ")
    no_t = int(input("Enter no. of transitions from state {}: ".format(state)))
    trans_of_state = {}
    for j in range(no_t):
        transition_input=[]
        trans_input = input("Enter input for transition {}: ".format(j+1))
        transition_input.append(trans_input)
        end_state = input("Enter end state of the transition: ")
        trans_of_state[end_state] = transition_input   
    nfa[state] = trans_of_state
            
print("\nEntered NFA : \n")
print(nfa)
