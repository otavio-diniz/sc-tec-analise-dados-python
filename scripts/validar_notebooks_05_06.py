#!/usr/bin/env python3
"""Valida os oito notebooks autorais 05/06 (simulação Python, não servidores SQL/Mongo)."""
import contextlib
import io
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
STEMS = ("05_sql_postgresql", "06_nosql_mongodb")
AREAS = ("notebooks", "exercicios")
ENVS = ("colab", "vscode")


def load(stem, area, env):
    suffix = "_exercicios" if area == "exercicios" else ""
    path = ROOT / area / env / (stem + suffix + ".ipynb")
    notebook = json.loads(path.read_text(encoding="utf-8-sig"))
    if notebook.get("nbformat") != 4:
        raise ValueError(f"nbformat inesperado: {path}")
    return path, notebook


def source(cell):
    s = cell.get("source", [])
    return "".join(s) if isinstance(s, list) else s


def main():
    total = 0
    errors = []
    for stem in STEMS:
        for area in AREAS:
            p_colab, n_colab = load(stem, area, "colab")
            _, n_vscode = load(stem, area, "vscode")
            if n_colab["cells"][1:] != n_vscode["cells"][1:]:
                errors.append(f"paridade Colab/VS Code: {stem} {area}")
            for env in ENVS:
                path, notebook = load(stem, area, env)
                cells = notebook["cells"]
                checkpoints = sum(
                    source(c).startswith(("## ✅ CHECKPOINT", "## 🧪 CHECKPOINT"))
                    for c in cells if c["cell_type"] == "markdown"
                )
                if checkpoints != 8:
                    errors.append(f"checkpoints={checkpoints}: {path}")
                namespace = {}
                for i, cell in enumerate(cells):
                    if cell["cell_type"] != "code":
                        continue
                    total += 1
                    if cell.get("outputs") or cell.get("execution_count") is not None:
                        errors.append(f"saida gravada: {path}, celula {i}")
                    try:
                        # Código autoral já revisado. Não executar notebooks de origem desconhecida.
                        with contextlib.redirect_stdout(io.StringIO()):
                            exec(compile(source(cell), f"{path}:{i}", "exec"), namespace)
                    except Exception as exc:
                        errors.append(f"{path}, celula {i}: {type(exc).__name__}: {exc}")
    print(f"Notebooks: 8 | Celulas Python: {total} | Erros: {len(errors)}")
    for err in errors:
        print("ERRO:", err)
    if total != 114:
        errors.append(f"quantidade inesperada de celulas: {total}")
    print("Status:", "PASS" if not errors else "FAIL")
    return 0 if not errors else 1


if __name__ == "__main__":
    sys.exit(main())
