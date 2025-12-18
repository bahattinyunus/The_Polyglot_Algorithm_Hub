#!/usr/bin/env python3
import sys
import re

class OmniInterpreter:
    def __init__(self):
        self.variables = {}

    def tokenize(self, code):
        # Basit regex tabanlı tokenizer
        token_specification = [
            ('FUNCTION',  r'fn'),
            ('MAIN',      r'main'),
            ('PRINT',     r'print'),
            ('STRING',    r'".*?"'),
            ('LBRACE',    r'\{'),
            ('RBRACE',    r'\}'),
            ('LPAREN',    r'\('),
            ('RPAREN',    r'\)'),
            ('ARROW',     r'->'),
            ('TYPE',      r'void|int|str'),
            ('SEMICOLON', r';'),
            ('WHITESPACE',r'\s+'),
            ('UNKNOWN',   r'.'),
        ]
        tok_regex = '|'.join('(?P<%s>%s)' % pair for pair in token_specification)
        return [m for m in re.finditer(tok_regex, code) if m.lastgroup != 'WHITESPACE']

    def run(self, file_path):
        with open(file_path, 'r', encoding='utf-8') as f:
            code = f.read()
        
        print(f"🧬 Genom Yükleniyor: {file_path}...")
        tokens = self.tokenize(code)
        
        # Çok basit bir parser (Sadece hello world çalıştırır)
        # Gerçek bir dil için AST gerekir, bu sadece "Vibe" prototipidir.
        for token in tokens:
            if token.lastgroup == 'PRINT':
                pass # Sonraki token bekleniyor
            elif token.lastgroup == 'STRING':
                content = token.group()[1:-1] # Tırnakları temizle
                print(f"🌌 OMNI SAYS: {content}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python omni.py <file.omni>")
    else:
        interpreter = OmniInterpreter()
        interpreter.run(sys.argv[1])
