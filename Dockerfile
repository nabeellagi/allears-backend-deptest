FROM python:3.11-slim

RUN useradd -m -u 1000 user && \
    mkdir -p /home/user/.cache/huggingface && \
    mkdir -p /home/user/.cache/sentence-transformers && \
    chown -R user:user /home/user/.cache

USER user
WORKDIR /app

COPY --chown=user . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7860

ENTRYPOINT ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7860"]