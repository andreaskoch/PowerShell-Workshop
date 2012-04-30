# Windows PowerShell #

----------

## Agenda ##

- Introduction to PowerShell
- Getting Started with PowerShell
- Core Elements of PowerShell
- Hands on PowerShell 

----------

# Introduction to PowerShell #

----------

## What is PowerShell? ##
- Task Automation Framework
- Command-Line Shell and Scripting Language for Windows
- Based on the .NET Framework
- Inspired by UNIX shells and scripting languages such as Perl and Python

**Screenshot of the Windows PowerShell Console 2.0**

![Screenshot of the Windows PowerShell Console 2.0](resources/screenshots/Screenshot-01-Windows-PowerShell-Version-2.0.png)

----------

# Terminology #

----------

# Shell- vs. Scripting-Languages #

**(Command-Line) Shell**

- A shell is a piece of software that lets you access the functionality provided by the operating system.

**Scripting Languages**

- Scripting languages typically provide more sophisticated features for debugging your scripts and they provide mechanisms for developing larger scripts by letting you break a script into components or modules
- Scripting Language syntax is oriented more towards writing an application than toward interactively issuing commands

----------

### Common features of command-line shells ###

- Read-Evaluate-Print loop (REP)
- Aliases/Shortcuts for long command names
- Wildcard matching, so you don’t have to type the full names of everything
- Call external programs
- Command History

----------

# Examples of command-line shells #

----------

## Examples: UNIX Shells ##

- Bourne-Again Shell (bash)
- Korn Shell (ksh)

----------

## Examples: Windows Shells (1) ##

- Command.com
- Cmd.exe

![Screenshot of the Windows Command-Line cmd.exe](resources/screenshots/Screenshot-09-Windows-CMD-Exe-Shell.png)

- PowerShell

----------

## Examples: Windows Shells (2) ##
- Cygwin

![Screenshot of the Cygwin GNU Bash](resources/screenshots/Screenshot-08-Cygwin-GNU-Bash.png)

----------

## Examples: Browser Shells ##
- Chrome Console

![Screenshot of the Google Chrome Developer Tools Console](resources/screenshots/Screenshot-06-Chrome-Console.png)

- Firebug Command Line

![Screenshot of the Firebug Command-Line for Firefox](resources/screenshots/Screenshot-07-Firebug-Command-Line.png)

----------

## Why PowerShell? ##

- "When comparing the command-line manageability of a Windows system to a UNIX system, Windows was found to be limited"
- Windows command line is an inferior technology which cannot compete with the known UNIX Shells
- Windows is known for its Management UIs but lacked an automation framework ?
- "Point and click does not scale"
	- Not across different people
	- Not over time
	- Not across different server environments
	- Not across multiple servers
	- And it is hard to control and to document

----------

## PowerShell Version History ##
- Designed from scratch in 2005
- Version 1.0 was released in 2006 for Windows XP, Windows Server 2003 and Windows Vista. Only optional for Windows Server 2008.
- Version 2.0 is the current version and was released in 2009 for Windows 7, Windows Server 2008 R2

----------

## The Future of PowerShell ##
- PowerShell Version 3.0 is currently a CTP and will be released with Windows Server 8
- The management of Windows Server 8 (Core) will be entirely based on PowerShell
- For the release of Windows Server 8 the number of built-in PowerShell commands (cmdlets) will be increased from 200 to 2300

----------

**Links**

- [Windows Server 8 Developer Preview and PowerShell v3 First Look](http://www.mikepfeiffer.net/2011/09/windows-server-8-developer-preview-and-powershell-v3-first-look/)
- [Microsoft verabschiedet sich vom GUI](http://www.golem.de/1109/86435.html)
- [Powershell dominiert die Server-Verwaltung ab Windows Server 8](http://www.nt4admins.de/themen/verwaltungs-tools/artikel/powershell-dominiert-die-server-verwaltung-ab-windows-server-8.html)

----------

## What is so special about PowerShell? ##

- PowerShell is a new class of object-based shell language - most other shell-languages are string-based
	- PowerShell preserves the structure of the Windows data types by using the .NET object model. No tedious string parsing required
- Command-Line Shell AND Scripting Language in one product - PowerShell's goal is to be both a **good scripting language and a good interactive shell**
- PowerShell leverages the full functionality of the .NET framework
	- You can use all the objects and functions that you know and love from the .NET Framework

----------

# Getting Started with PowerShell #

----------

## Online Resources about PowerShell ##

- [Windows PowerShell Documentation on the MSDN](http://msdn.microsoft.com/en-us/library/windows/desktop/dd835506(v=vs.85).aspx)
- [A list of PowerShell Cmdlets](http://technet.microsoft.com/en-us/library/hh848794.aspx)
- [Scott Hanselman’s PowerShell Posts](http://www.hanselman.com/blog/archives.aspx#PowerShell)
- [PowerGUI: An alternative to the PowerShell ISE](http://powergui.org)
- [Web Administration Cmdlets for Windows PowerShell](http://technet.microsoft.com/en-us/library/ee790599(WS.10).aspx)
- [Microsoft Technet Script Resources](http://gallery.technet.microsoft.com/scriptcenter/)
- [PowerShell Community Extensions](http://pscx.codeplex.com/)
- [Official PowerShell Homepage](http://technet.microsoft.com/en-us/scriptcenter/dd742419.aspx)
- [My Personal PowerShell Bookmark Collection](http://delicious.com/andyk7/powershell)

----------

# Installation & Startup #

----------

## PowerShell Command-Line (1) ##

If you are running a recent version of Windows you will have PowerShell already installed:

> Start > Accessories > Windows PowerShell

![Screenshot of the PowerShell tool in the Windows Start menu under Start>Accessories>Windows PowerShell](resources/screenshots/Screenshot-03-PowerShell-Shortcuts-Window-Start-Menu.png)

----------

## PowerShell Command-Line (2) ##

![Screenshot of the Windows PowerShell Console 2.0](resources/screenshots/Screenshot-01-Windows-PowerShell-Version-2.0.png)

----------

## PowerShell ISE / Debugger (1) ##

If don’t have the PowerShell debugger installed you can add it via the Windows Features dialog:

> Server Management > Features > Add Feature > "Windows Integrated Scripting Environment (ISE)"

![Screenshot of the Server Managment Feature Dialog for installing the Windows PowerShell Integrated Scripting Environment / Debugger on Windows Server 2008 R2 64bit](resources/screenshots/Screenshot-05-Installing-Windows-PowerShell-Integrated-Scripting-Environment-ISE-on-Windows-Server-2008-R2.png)

----------

## PowerShell ISE / Debugger (2) ##

![Screenshot of the Windows PowerShell Integrated Scripting Environment (ISE) - The PowerShell Debugger.](resources/screenshots/Screenshot-02-Windows-PowerShell-ISE-Debugger.png)

----------

## PowerShell Installation Directory ##

The PowerShell executables are located in the folder:

> %windir%\System32\WindowsPowerShell\v1.0

![Screenshot of the Windows PowerShell installation directory under %windir%\System32\WindowsPowerShell\v1.0](resources/screenshots/Screenshot-04-PowerShell-Installation-Folder.png)

----------

## PowerShell Security Settings (1) ##

By default, PowerShell will not allow you to run scripts. Not external ones and not even your own scripts.

> "The execution policy is part of the security strategy of Windows PowerShell. It determines whether you can load configuration files (including your Windows PowerShell profile) and run scripts, and it determines which scripts, if any, must be digitally signed before they will run."

In order to overcome this restriction we must change PowerShells security policy ("execution policy").

![Screenshot of a PowerShell window displaying a security warning](resources/screenshots/Screenshot-12-Execution-Policy.png)

----------

## PowerShell Security Settings (2) ##

In order to be able to run (unsigned) PowerShell scripts and configuration files you need to set the ExecutionPolicy to "RemoteSigned":

	PS> Get-ExecutionPolicy
	
	PS> Set-ExecutionPolicy RemoteSigned

![Screenshot of a Windows PowerShell window where the execution policy has been changed from Restricted to RemoteSigned](resources/screenshots/Screenshot-13-Execution-Policy.png)

**Links**

- [Micorsoft Technet: Set-ExecutionPolicy](http://technet.microsoft.com/en-US/library/dd347628.aspx)

----------

# Workshop Preparations #

----------

## Configuring Mercurial ##

For this workshop we are going to use Mercurial to distribute the course material and in order to track and exchange changes.

Start PowerShell (Start > Accessories > Windows PowerShell) and enter the following command:

	PS> notepad $Home\Mercurial.ini

Then enter the following text and then save the changes:

	[ui]
	username = Your Name <Your.Name@Domain.com>
	verbose	 = True
	
	[Extensions]
	purge =

![Screenshot of the Mercurial profile with a set set username](resources/screenshots/Screenshot-11-Configure-Mercurial.png)

----------

## Fetching the workshop material ##

In order to get a copy of the PowerShell workshop material please clone my mercurial repository and create a branch that is named after you.

Start PowerShell

	PS> mkdir $Home\Desktop\dev | Set-Location
	PS> hg clone http://andyk.dyndns-server.com:8000 PowerShell-Workshop
	PS> Set-Location PowerShell-Workshop
	PS> hg branch "YourName"
	PS> hg push --new-branch

----------

# Core Elements of PowerShell #

----------

## Key Points about PowerShell ##

- PowerShell is case insensitive by default.
- PowerShell is object-based. Everything is an object.
- PowerShell is provider based.
- PowerShell supports streaming behaviour.
- You can use all the existing cmd.exe commands you know and love.
- You don’t have to type the full name of every command. Only as much as is required in order to make it distinct.

----------

## Features of the PowerShell console (1) ##

The PowerShell console is based on cmd.exe and has basically the same features, but also some that cmd.exe and other shells are missing:

**Tab Completion**: Enter a command partially and then hit the *TAB*-key in order to let PowerShell complete the command

- For commands
- For wildcards
- For variables
- For object properties
- For functions
- PowerShell providers (Filesystem, IIS, Certificates, Registry, …)
- And you can build your own tab-completion modules.

----------

## Features of the PowerShell console (2) ##

**Evaluation of basic expressions**

![Screenshot of expression evaluation feature of the PowerShell console](resources/screenshots/Screenshot-14-Expression-Evaluation-in-PowerShell.png)

**F7 Command History**: As in cmd.exe the <F7> key pops up a command history window

![Screenshot of the PowerShell command history feature which is displayed when the user hits th F7 key](resources/screenshots/Screenshot-17-Command-History.png)

----------

# PowerShell Syntax #

----------

## PowerShell Command Structure ##

A PowerShell command consists of:

- Command Name
- Switch Parameter(s)
- Command Parameter(s)
- Command Argument(s)

![PowerShell Command Structure: Command Name, Switch Parameter(s), Command Parameter(s) and Command Argument(s)](resources/screenshots/Screenshot-18-Command-Syntax.png)

----------

## PowerShell Command Syntax ##

PowerShell commands, called cmdlets [speak: command-lets], use verb*-noun pairs in order to be self-descriptive.

> Note: Windows PowerShell uses the term verb to describe a word that implies an action even if that word is not a standard verb in the English language. For example, the term New is a valid Windows PowerShell verb name because it implies an action even though it is not a verb in the English language.

Examples

- Get-Help
- Remove-Item
- Move-Item
- Format-List
- Write-Host


**Links**

- [Verb Naming Rules](http://msdn.microsoft.com/en-us/library/windows/desktop/ms714428(v=vs.85).aspx)

----------

## Common Verbs and their meaning (1) ##

Here is a list of the most common verbs used for PowerShell commands:

<table>
<thead>
<tr><td>Verb</td><td>Description</td><td>Counterpart</td></tr>
</thead>
<tbody>
<tr><td>Add</td><td>Adds a resource to a container, or attaches an item to another item.</td><td>Remove</td></tr>
<tr><td>Clear</td><td>Removes all resources from a container but does not delete the container.</td><td></td></tr>
<tr><td>Close</td><td>Changes the state of a resource to make it inaccessible, unavailable, or unusable.</td><td></td></tr>
<tr><td>Copy</td><td>Copies a resource to another container.</td><td></td></tr>
<tr><td>Enter</td><td>Specifies an action that allows the user to move into a resource.</td><td>Exit</td></tr>
<tr><td>Exit</td><td>Sets the current environment or context to most recently used context.</td><td>Enter</td></tr>
<tr><td>Find</td><td>Looks for an object in a container that is unknown, implied, optional, or specified.</td><td></td></tr>
<tr><td>Format</td><td>Arranges objects in a specified form or layout.</td><td></td></tr>
<tr><td>Get</td><td>Specifies an action that retrieves a resource.</td><td>Set</td></tr>
<tr><td>Hide</td><td>Makes a resource undetectable.</td><td>Show</td></tr>
<tr><td>Join</td><td>Combines resources into one resource.</td><td>Split</td></tr>
<tr><td>Lock</td><td>Secures a resources.</td><td>Unlock</td></tr>
<tr><td>New</td><td>Creates a resource.</td><td></td></tr>
<tr><td>Open</td><td>Changes the state of a resource to make it accessible, available, or usable.</td><td>Close</td></tr>
<tr><td>Pop</td><td>Removes an item from the top of a stack.</td><td>Push</td></tr>
<tr><td>Push</td><td>Adds an item to the top of a stack.</td><td>Pop</td></tr>
</tbody>
</table>

----------

## Common Verbs and their meaning (2) ##

<table>
<thead>
<tr><td>Verb</td><td>Description</td><td>Counterpart</td></tr>
</thead>
<tbody>
<tr><td>Redo</td><td>Resets a resource to the state that was undone.</td><td></td></tr>
<tr><td>Remove</td><td>Deletes a resource from a container.</td><td>Add</td></tr>
<tr><td>Rename</td><td>Changes the name of a resource.</td><td></td></tr>
<tr><td>Reset</td><td>Sets a resource back to its original state.</td><td></td></tr>
<tr><td>Search</td><td>Creates a reference to a resource in a container.</td><td></td></tr>
<tr><td>Select</td><td>Locates a resouces in a container.</td><td></td></tr>
<tr><td>Set</td><td>Replaces data on an existing resource or creates a resources that contains some data.</td><td>Get</td></tr>
<tr><td>Show</td><td>Makes a resource visible to the user.</td><td>Hide</td></tr>
<tr><td>Skip</td><td>Bypasses one or more resources or points in a sequence.</td><td></td></tr>
<tr><td>Split</td><td>Seperates parts of a resource.</td><td>Join</td></tr>
<tr><td>Step</td><td>Moves to the next point or resources in a sequence.</td><td></td></tr>
<tr><td>Switch</td><td>Specifies an action that alternates between two resources, such as to change between two locations, responsibilities, or states.</td><td></td></tr>
<tr><td>Undo</td><td>Sets a resource to its previous state.</td><td></td></tr>
<tr><td>Unlock</td><td>Releases a resource that was locked.</td><td>Lock</td></tr>
<tr><td>Watch</td><td>Continually inspects or monitors a resource for changes.</td><td></td></tr>
</tbody>
</table>

For more examples and PowerShell development guidelines please refer to the MSDN documentation:

- [MSDN Dev Center - Verb naming rules](http://msdn.microsoft.com/en-us/library/windows/desktop/ms714428(v=vs.85).aspx)

----------

## Variables ##

Variables defined by a leading dollar sign ($):

	PS> $someVariable = "Some Content"

All variables can be accessed through a PowerShell provider/drive called "variable:"

	PS> cd variable:
	PS> dir
	PS> get-item someVariable

![Screenshot of a PowerShell Console window which defined a new variable and accesses it through the variable: PowerShell drive provider](resources/screenshots/Screenshot-35-Variables.png)

----------

## Quotes (1) ##

Text in PowerShell is marked by 'single'- or "double"-quotes. If a command name or argument contains whitespace or other special characters, you must wrap the value in single or double quotes. Otherwise the command-interpreter cannot bind the parameters and arguments correctly.

**Missing Quotes**

Missing quotes might lead to errors if the command argument contains whitespace characters:

	PS> Set-Location .\Program Files (x86)

![Screenshot of a PowerShell console where the correct quoting is missing for a set-location command](resources/screenshots/Screenshot-24-Quoting.png)

----------

## Quotes (2) ##

**Single Quotes**

	PS> Set-Location '.\Program Files (x86)'

![Screenshot of a PowerShell console using single quotes for the set-location command](resources/screenshots/Screenshot-25-Quoting.png)

**Double Quotes**

	PS> Set-Location ".\Program Files (x86)"

![Screenshot of a PowerShell console using double quotes for the set-location command](resources/screenshots/Screenshot-26-Quoting.png)

----------

## Backtick Escape Character (1) ##

Since PowerShell is a Shell that needs to support Windows-style file systems, it cannot use the usual backslash (\) for escaping characters with a special meaning, but uses the backtick character instead (`):

<table>
<thead>
<tr><td>Escape Sequence</td><td>Corresponding Special Character</td></tr>
</thead>
<tbody>
<tr><td>`n</td><td>Newline</td></tr>
<tr><td>`r</td><td>Return</td></tr>
<tr><td>`t</td><td>Tab</td></tr>
<tr><td>`a</td><td>Alert</td></tr>
<tr><td>`b</td><td>&lt;Backspace&gt;</td></tr>
<tr><td>`'</td><td>Single Quote (')</td></tr>
<tr><td>`"</td><td>Double Quote (")</td></tr>
<tr><td>`0</td><td>Null</td></tr>
<tr><td>``</td><td>A single backtick (`)</td></tr>
</tbody>
</table>

**Example: New-Line**

	PS> Write-Host "Line1`nLine2"

![Screenshot of the PowerShell console using the new-line escape sequence for the Write-Host command](resources/screenshots/Screenshot-27-Escape-Characters.png)

----------

## Backtick Escape Character (2) ##

**Example: Tab**

	PS> Write-Host "Key:`tvalue"

![Screenshot of the PowerShell console using the tab escape sequence for the Write-Host command](resources/screenshots/Screenshot-28-Escape-Characters.png)

**Example: Double Quotes**

	PS> $value = "Lorem Ipsum"
	PS> Write-Host "Key:`"$value`""

![Screenshot of the PowerShell console using the double quote escape sequence for the Write-Host command](resources/screenshots/Screenshot-29-Escape-Characters.png)