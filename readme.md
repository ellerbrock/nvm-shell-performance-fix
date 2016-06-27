# Shell Performance Fix for nvm Initialisation [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/) [![Gitter Chat](https://badges.gitter.im/frapsoft/frapsoft.svg)](https://gitter.im/frapsoft/frapsoft/)

**Problem**: Slow Shell Startup after adding the source nvm.sh command on initial start (.bashrc, .zshrc ...)

**Fix**: Load the nvm enviroment only when nvm is called for the first time.

**Info:** The nvm enviroment have to be loaded to get access to the global installed nvm modules.

```
# nvm shell performance fix
nvm()
{
  if [[ `command -v nvm`-ne"nvm" ]]; then
    echo "loading nvm enviroment ..."
    source ~/.nvm/nvm.sh
    nvm $*
  fi
}
```
### Contact / Social Media

*Get the latest News about Web Development, Open Source, Tooling, Server & Security*

[![Twitter](https://github.frapsoft.com/social/twitter.png)](https://twitter.com/frapsoft/)[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/frapsoft/)[![Google+](https://github.frapsoft.com/social/google-plus.png)](https://plus.google.com/116540931335841862774)[![Gitter](https://github.frapsoft.com/social/gitter.png)](https://gitter.im/frapsoft/frapsoft/)[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/ellerbrock/)

### Development by

Developer / Author: [Maik Ellerbrock](https://github.com/ellerbrock/)  
Company: [Frapsoft](https://github.com/frapsoft/)

### License 

Copyright (c) 2016 [Maik Ellerbrock](https://github.com/ellerbrock/)  

[![MIT Licence](https://badges.frapsoft.com/os/mit/mit-125x28.png?v=102)](https://opensource.org/licenses/mit-license.php)  

