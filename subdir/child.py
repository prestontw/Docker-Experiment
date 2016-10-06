# want to import parent.py
from pathlib import Path
import sys
p = Path('..').resolve()
sys.path.append(str(p))
print(sys.path)
import parent

print("will try to access parent's function")
parentResult = parent.parentFunction(2)
print(parentResult)
print("done")
