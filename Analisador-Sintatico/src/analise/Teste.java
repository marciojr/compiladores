package analise;

import java_cup.runtime.*;
import ast.*;
import visitor.*;

public class Teste {
	public static void main(String[] args) throws Exception {

		
		Parser parser = new Parser();
		Symbol x = parser.parse();
		// programa na forma de AST
		Program prog = (Program) parser.parse().value;
		BuildSymbolTableVisitor stVis = new BuildSymbolTableVisitor();
		prog.accept(stVis); 
		// chama o visitor de pretty print
		prog.accept(new PrettyPrintVisitor());
	}
	

}


