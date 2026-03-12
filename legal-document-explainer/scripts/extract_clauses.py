import os
import re

def extract_clauses(text):
    """
    Simula a extração de cláusulas de um documento de texto longo.
    """
    sections = {}
    current_section = "General"
    sections[current_section] = []
    
    for line in text.split('\n'):
        if re.match(r'^\d+\.', line) or re.match(r'^[A-Z]', line) and len(line) < 50:
            current_section = line.strip()
            sections[current_section] = []
        else:
            if line.strip():
                sections[current_section].append(line.strip())
                
    return sections

if __name__ == "__main__":
    # Teste rápido
    sample = "1. Renovação\nO contrato será renovado automaticamente...\n2. Multas\nA multa por quebra é de 50%..."
    print(extract_clauses(sample))
