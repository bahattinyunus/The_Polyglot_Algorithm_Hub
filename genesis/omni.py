#!/usr/bin/env python3
import sys
import re

class OmniInterpreter:
    def __init__(self):
        self.variables = {}

    def tokenize(self, code):
        token_specification = [
            # Keywords
            ('FUNCTION',  r'fn'),
            ('MAIN',      r'main'),
            ('PRINT',     r'print'),
            ('LET',       r'let'),
            ('TYPE_INT',  r'int'),
            ('TYPE_STR',  r'str'),
            ('TYPE_ANY',  r'any'),
            ('TYPE_VOID', r'void'),
            
            # Syntax & Ops
            ('ARROW',     r'->'),
            ('EQUALS',    r'='),
            ('SEMICOLON', r';'),
            ('LBRACE',    r'\{'),
            ('RBRACE',    r'\}'),
            ('LPAREN',    r'\('),
            ('RPAREN',    r'\)'),
            ('COLON',     r':'),
            
            # Values
            ('STRING',    r'".*?"'),
            ('NUMBER',    r'\d+'),
            ('IDENTIFIER',r'[A-Za-z_][A-Za-z0-9_]*'),
            
            # Skip
            ('WHITESPACE',r'\s+'),
            ('UNKNOWN',   r'.'),
        ]
        tok_regex = '|'.join('(?P<%s>%s)' % pair for pair in token_specification)
        tokens = []
        for m in re.finditer(tok_regex, code):
            kind = m.lastgroup
            value = m.group()
            if kind == 'WHITESPACE':
                continue
            elif kind == 'UNKNOWN':
                # For now just ignore unknown or print error? Let's ignore to be robust for prototype
                pass
            else:
                tokens.append((kind, value))
        return tokens

    def run(self, file_path):
        with open(file_path, 'r', encoding='utf-8') as f:
            code = f.read()
        
        print(f"🧬 Genom Yükleniyor: {file_path}...")
        tokens = self.tokenize(code)
        
        # Super-naive parser loop
        i = 0
        while i < len(tokens):
            kind, value = tokens[i]
            
            # LET statement: let x = 5;
            if kind == 'LET':
                # Expect: IDENTIFIER [COLON TYPE] EQUALS VALUE SEMICOLON
                # Skipping strict type check for prototype
                var_name = None
                var_value = None
                
                # Lookahead for name
                if i+1 < len(tokens) and tokens[i+1][0] == 'IDENTIFIER':
                    var_name = tokens[i+1][1]
                    current_idx = i + 2
                    
                    # Optional type skipping (: int)
                    if current_idx < len(tokens) and tokens[current_idx][0] == 'COLON':
                        current_idx += 2 # Skip : and TYPE
                    
                    # Expect =
                    if current_idx < len(tokens) and tokens[current_idx][0] == 'EQUALS':
                        val_token = tokens[current_idx+1]
                        if val_token[0] == 'NUMBER':
                            var_value = int(val_token[1])
                        elif val_token[0] == 'STRING':
                            var_value = val_token[1][1:-1] # strip quotes
                        
                        self.variables[var_name] = var_value
                        print(f"💾 Bellek Ayrıldı: {var_name} <- {var_value}")
            
            # PRINT statement
            elif kind == 'PRINT':
                # Expect LPAREN VAL RPAREN SEMI
                # Find content inside parens
                if i+2 < len(tokens) and tokens[i+1][0] == 'LPAREN':
                    arg_token = tokens[i+2]
                    to_print = ""
                    
                    if arg_token[0] == 'STRING':
                        to_print = arg_token[1][1:-1]
                    elif arg_token[0] == 'IDENTIFIER':
                        var_name = arg_token[1]
                        to_print = self.variables.get(var_name, "UNDEFINED")
                    elif arg_token[0] == 'NUMBER':
                        to_print = arg_token[1]
                        
                    print(f"🌌 OMNI SAYS: {to_print}")
            
            i += 1

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python omni.py <file.omni>")
    else:
        interpreter = OmniInterpreter()
        interpreter.run(sys.argv[1])
