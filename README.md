# Add-Remove-CocoaPodsPOC
This will help to add or remove the external dependencies, downloaded from cocoa-pods, from a project.

# Add external dependencies with Cocoa-Pods
Read more about Cocoa here : https://guides.cocoapods.org/using/getting-started.html
In this project we added the dependency Alamofire using CocoaPods.
If you don’t have CocoaPods installed on your machine, You can install it by running the following 
command on your mac:

    $ gem install cocoapods

Follow the steps below to add Pods to your xcode project:-

1. Go to Terminal and switch to your local project:-

    $ cd PATH_TO_YOUR_PROJECT_FOLDER

2. Once you are inside the project folder, type the command below to create/initialize your POD
files:

    $ pod init
    
After running the “pod init” command you will notice that a Podfile was added to your project 
folder.

3. Then open the Podfile with your text editor. And add your dependencies under the “#Pods for
PROJECT_NAME” line.
In my case, I wanted to add the Alamofire library to my project, but usually the structure is:- pod
‘libraryName’, ‘~ library version’

    e.g. pod 'Alamofire', '~> 4.7'
    
4. Save and Close your Podfile.

5. Still inside your project’s folder, run the following command:-

    $ pod install

Once the installation is complete, you will get a confirmation message on the terminal and you will 
also notice that some files were automatically added to your project.

6. Double click on the Xcode workspace to open the project.

7. You can clean/re-build your project and run it.

# Remove external dependencies

To remove external dependencies install from  CocoaPods, you can follow below commands:-

1) Open terminal on your Mac. In terminal navigate to your Xcode Project directory with cd

    $ cd PATH_TO_YOUR_PROJECT_FOLDER

2) Once you are inside the project folder, type the command below: 

    $ sudo gem install cocoapods-deintegrate cocoapods-clean

3) Continue inside project folder with command below: 

    $ pod deintegrate

4) Continue inside project folder with command below:

    $ pod clean

5) Continue inside project folder with command below:

    $ rm Podfile
    
Now you should have your Xcode project cleaned from CocoaPods.

#Thanks


