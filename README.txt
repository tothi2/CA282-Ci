Here, you don't need to change the CI configuration at all.

Instead, you need to tweak the execution environment.

1. Create a passphrase-less SSH key pair...

   $ ssh-keygen -f student

2. On the server, create an executable file "$HOME/bin/hello.sh"...

   $ mkdir -p ~/bin
   $ cd ~/bin
   $ nano hello.sh

      #!/bin/sh

      echo "hello"

   $ chmod 0755 ./hello.sh
   $ cd
   $ $HOME/bin/hello.sh
   hello
   $ realpath $HOME/bin/hello.sh
   /users/tutors/blott/bin/hello.sh    <-- note this path!

3. On the server...

   Add a line to the end of the file

      $HOME/.ssh/authorized_keys

   as follows:

      command="/users/tutors/blott/bin/hello.sh" ssh-rsa AAAAB3NzaC1.......

   where:

     - the command is the full path of your "hello.sh" script, and
     - the key is your SSH PUBLIC key.

   We're using an SSH forced command here because we don't really want
   a passphrase-less SSH key floating around with unlimited access to your
   account.

4. You can test this as follows...

   $ ssh -l YOUR_USERNAME -i YOUR_PRIVATE_KEY student.computing.dcu.ie
   hello

5. On GitLab, under Settings / CI / Variables...

   Set a Type/***File*** with the name "SSH_KEY" and the value which is your SSH
   private key.

6. Either "Retry" the CI job for this branch, or make a nonsense commit and
   push that (to force the CI job to re-run).

   You should see the message "hello" at the end of your CI/job output.
