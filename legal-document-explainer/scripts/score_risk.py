def calculate_risk(clauses, red_flags):
    """
    Calcula o placar de risco com base nas cláusulas detectadas e bandeiras vermelhas conhecidas.
    Retorna Baixo, Médio ou Alto.
    """
    score = 0
    for section, texts in clauses.items():
        for text in texts:
            for flag, weight in red_flags.items():
                if flag.lower() in text.lower():
                    score += weight
                    
    if score >= 10:
        return "Alto"
    elif score >= 5:
        return "Médio"
    return "Baixo"

if __name__ == "__main__":
    # Teste rápido
    flags = {"renovação automática": 3, "multa": 4, "sem aviso prévio": 5}
    sample_clauses = {"1": ["Este contrato tem renovação automática e multa de quebra."]}
    print(f"Risco: {calculate_risk(sample_clauses, flags)}")
