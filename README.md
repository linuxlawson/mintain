# mintain  

**Updated** to use printf rather than echo  (2/3/25)   

Small bash script for linux maintenance  (CLI of course)

Enables linux users to do basic maintenance all at once, quickly and easily.

Commands include: update, upgrade, dist-upgrade, update-grub, autoremove, autoclean, and clean.

`dist-upgrade` will prompt (y/n) as some users prefer to run this command separately.  
Choosing 'n' (no) will simply skip over this command and continue with rest of program.  

Added:  
  * Option to `update` again, IF `upgrades` were available (will prompt)  
  * Timer  
  
 <br>
   
   **Note:** Removed 'trash-empty' command as it only works with 'trash-cli' installed.  
     
   To make trash-empty work, install 'trash-cli' using:  
   ```sudo apt install trash-cli```    
   
   Also, uncomment command 7 (lines 78,79) and also line 27. 
   
   <br>
   
   **Another Note:** The easiest way to run this is to make an alias, and put it in your .bashrc file.
   
   `alias mintain="~/bin/bash/mintain.sh"`  
   
   Then you can run it straight from terminal without navigating to it.
   
   
         
         
