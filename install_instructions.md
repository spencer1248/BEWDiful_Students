BACK-END WEB DEVELOPMENT
============================

![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


#Install Git, Ruby and Rails

##Apple Mac Users 

1.	__Make sure you have an apple ID__ (you should already have one). 

2.	__Xcode installed?__
	*	Go to step 4

3.	__Xcode not installed?__ 
	*	Go to: [https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)
	*	Log in with your Apple ID and password (same as iTunes).
	*	Install Command Line Tools for your operating system.
	*	Check install: ```$ gcc --version```


4.	__Install homebrew from terminal:__
	*	```$ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)```
	*	After install is complete: ```$ brew doctor```
		*	__If you get following error:__ 
		
				"Warning: Experimental support for using Xcode without the "Command Line Tools".
		
		Go back to step 1.


5.	__Install Git__
	*	```$ brew update```
	*	```$ brew install git```
	*	Check install:
		*	```$ which git```
			*	should get:	 
				/use/local/bin/git

6.	__Configure Git with your Name and Email__
	*	Make sure you use the same email address for Git, GitHub, and Heroku.

7.	__Install RVM with Ruby 2.0.0__
	*	```$ \curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable```
		This will take a few minutes, and once it’s done, quit and relaunch Terminal, then run this command:
	*	```$ type rvm | head -1```
		If you get rvm is a function, that means RVM was successfully installed. 
	*	Make sure the latest versions of RVM, Ruby and Rails were installed, run the commands below:
		*	For RVM
			*	```$ rvm -v```
				
				You should get 

					rvm 2.0.0 or higher.
		* 	For Ruby

			*	```$ ruby -v```
			
				You should get 

					ruby 2.0.0p0 or higher.

		* 	For Rails

			*	```$ rails -v```
				
				You should get 
				
					Rails 3.2.13 or higher.


Note: Install instructions credit to: [Moncef Belyamani](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#step-1
)

##Ubuntu Linux Users

1. __Open a terminal window__
  * http://askubuntu.com/questions/196212/how-do-you-open-a-command-line

2. __Install git__
  * ```sudo apt-get install build-essential git-core```

3. __Install curl__
  * ```sudo apt-get install curl```

4. __Install RVM__
  * ```\curl -L https://get.rvm.io | bash -s stable --ruby```
  * The backslash in font of "curl" is not a typo.
  * ```rvm use 2.0.0 --default```

##Windows Users

Coming soon

##Happy Coding :)

__You're ready for the first class.__
