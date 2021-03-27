if command -v rbenv &> /dev/null
then
  eval "$(rbenv init -)"
else
  echo "rbenv is not installed"
fi
