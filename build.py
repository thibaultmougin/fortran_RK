#!  /usr/bin/env python3

import os, sys, subprocess, argparse, platform, shutil

def manage():

  parser = argparse.ArgumentParser()
  args = parser.parse_args()

  myenv = os.environ.copy()
  
  gen = '-GUnix Makefiles'
  compileCmd = ['make', '--no-print-directory', 'install']

  baseDir = os.getcwd()
  srcDir = os.path.join(baseDir, 'src')

  buildDir = os.path.join(baseDir, 'build')
  installDir = os.path.join(baseDir, 'install')
 
  cmake_params = []
  cmake_params.append('-DCMAKE_INSTALL_PREFIX=' + installDir)
  cmake_params.append(gen)

  if not os.path.exists(buildDir):
    os.makedirs(buildDir)

  configureCmd = ['cmake'] + cmake_params + [srcDir]
  err = subprocess.call(configureCmd, cwd=buildDir, env=myenv)
  if err == 0:
    err = subprocess.call(compileCmd, cwd=buildDir, env=myenv)

if __name__ == '__main__':
    manage()

