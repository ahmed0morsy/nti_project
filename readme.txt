there are 4 modules in this design
1)fsm for the uart(tx): this is the brain of the design and this control the other modules when to work depends on the state(the fsm says that we move from state to another)
2)mux: the mux chooses between states (paraty/start/stop/data) depends on the mux selector which get controlled by the fsm
3)serializer: this module takes the data in a parallel form and transform it in a series form and its enable get controled by the fsm
4)paraty calc: this module take the input data and calc its paraty 