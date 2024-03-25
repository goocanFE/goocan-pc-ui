#!/usr/bin/env sh
set -e

git checkout master
git merge dev

VERSION=`npx select-version-cli`

read -p "Releasing $VERSION - are you sure? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Releasing $VERSION ..."

  # build
  VERSION=$VERSION npm run dist

  # ssr test
  node test/ssr/require.test.js            

  # 暂时不发布主题包，等后面用到了自定义主题
  # publish theme
  # echo "Releasing theme-chalk $VERSION ..."
  # cd packages/theme-chalk
  # npm version $VERSION --message "[release] $VERSION"
  # if [[ $VERSION =~ "beta" ]]
  # then
  #   npm publish --tag beta http://gcnpm.dingyl.com/
  # else
  #   npm publish http://gcnpm.dingyl.com/
  # fi
  # cd ../..

  # commit
  git add -A
  git commit -m "[build] $VERSION"
  npm version $VERSION --message "[release] $VERSION"

  # publish
  git push origin master
  git push origin refs/tags/v$VERSION
  git checkout dev
  git rebase master
  git push origin dev

  if [[ $VERSION =~ "beta" ]]
  then
    npm publish --tag beta http://gcnpm.dingyl.com/
  else
    npm publish --registry http://gcnpm.dingyl.com/

  fi
fi
