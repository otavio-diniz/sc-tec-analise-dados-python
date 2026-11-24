#!/usr/bin/env python3
"""Confere links relativos dos documentos de revisão 05/06. Não visita URLs externas."""
import json
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
DOCS = [
    "README.md",
    "docs/REVISAO_GUIAS_05_06.md",
    "docs/COBERTURA_PEDAGOGICA_05_06_RASCUNHO.md",
    "docs/biblioteca-viva-bancos.md",
    "docs/ambientacao/fontes-oficiais-bancos.md",
    "docs/ambientacao/primeiro-acesso-postgresql.md",
    "docs/ambientacao/primeiro-acesso-mongodb.md",
    "docs/VALIDACAO_BANCOS_2026-11-24.md",
    "docs/PERCURSO_SEMANAS_08_A_11.md",
    "docs/ambientacao/ponte-semana-08-etl.md",
    "docs/ambientacao/bancos-de-dados.md",
]
REGEX = re.compile(r"\]\(([^\s)]+)(?:\s+[^)]*)?\)")


def markdown(p):
    if p.suffix != ".ipynb":
        return p.read_text(encoding="utf-8-sig")
    data = json.loads(p.read_text(encoding="utf-8-sig"))
    return "\n".join(
        "".join(c.get("source", [])) if isinstance(c.get("source", []), list)
        else c.get("source", "")
        for c in data["cells"] if c["cell_type"] == "markdown"
    )


def main():
    paths = [ROOT / x for x in DOCS]
    for base in ("notebooks", "exercicios"):
        for env in ("colab", "vscode"):
            paths += sorted((ROOT / base / env).glob("0[56]_*.ipynb"))
    failures = []
    n = 0
    for path in paths:
        if not path.exists():
            failures.append(f"arquivo inexistente: {path}")
            continue
        for link in REGEX.findall(markdown(path)):
            if link.startswith(("https:", "http:", "#", "mailto:")):
                continue
            n += 1
            rel = link.split("#", 1)[0].split("?", 1)[0]
            if not (path.parent / rel).resolve().exists():
                failures.append(f"link: {path.relative_to(ROOT)} -> {link}")
    print(f"Arquivos: {len(paths)} | Links relativos: {n} | Falhas: {len(failures)}")
    for error in failures:
        print("FALHA:", error)
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
