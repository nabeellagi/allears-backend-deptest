import os

# Ensure model cache does not try to write to root
os.environ["TRANSFORMERS_CACHE"] = "/home/user/.cache/huggingface"
os.environ["HF_HOME"] = "/home/user/.cache/huggingface"
os.environ["SENTENCE_TRANSFORMERS_HOME"] = "/home/user/.cache/sentence-transformers"
