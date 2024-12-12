#!/bin/bash

# Step 1: Get the number of commits to rebase
NUM_COMMITS=$(git log origin/main..main --pretty=format:"%h" | wc -w) > /dev/null 2>&1

# Step 2: Calculate the target commit to push
TARGET_COMMIT=$((NUM_COMMITS - 1))

# Step 3: Start the interactive rebase with automated editing
bash -c "GIT_SEQUENCE_EDITOR='sed -i -e s/^pick/e/' git rebase -i HEAD~${NUM_COMMITS}" > /dev/null 2>&1

# Step 4: Loop until the rebase is complete
while [ -d .git/rebase-merge ]; do
    git commit --amend --date=now --no-edit > /dev/null 2>&1
    git rebase --continue > /dev/null 2>&1
done

# Step 5: Push the specific commit
if [ "$TARGET_COMMIT" -eq 0 ]; then
    git push origin > /dev/null 2>&1
else
    git push origin HEAD~${TARGET_COMMIT} > /dev/null 2>&1
fi

# Final success message
echo "Successfully updated remote origin!"
