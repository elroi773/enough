cat > ~/scheduled_git_push.sh << 'EOF'
#!/bin/bash
set -euo pipefail

REPO="/Users/elroi/enough/enough"
BRANCH=""   # 비워두면 현재 체크아웃된 브랜치(HEAD)로 push

cd "$REPO"

# 변경 없으면 종료 (커밋 생성 방지)
if git diff --quiet && git diff --cached --quiet; then
  echo "[INFO] No changes to commit. Exit."
  exit 0
fi

git status
git add src/components/PostCard.jsx

# 커밋 메시지: 원하는 걸로 바꿔도 됨
git commit -m "chore: scheduled commit"

# 최신 상태 반영(선택) - 충돌 가능성 줄이기
git pull --rebase

# push (현재 브랜치를 origin으로)
git push origin HEAD
echo "[OK] Commit & push done."
EOF

chmod +x ~/scheduled_git_push.sh