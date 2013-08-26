robotmoves
==========

Please, run it on mac os x.

**clone**:
	
	git clone git@github.com:gporpino/robotmoves.git

**change entry.txt file**, example:

	10 10              # o tamanho do espaço é 10 por 10
	2 5 N              # sua localização inicial é (2,5) e a sua direção é Norte
	LLRRMMMRLRMMM      # um conjunto de comandos
	T 1 3              # o robô se tele transporta para o ponto (1,3)
	LLRRMMRMMRM        # um outro conjunto de comandos     
	
to run enter into folder **app** and **execute**:

	ruby execute.rb
	
to test enter into folder **spec** and **execute**:
	
	rspec robot_spec.rb

	