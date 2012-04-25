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
- Version 2.0 is the current version and was released in 2009 for Windows 7, Winder Server 2008 R2

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

- PowerShell is a new class of object-based shell language ¬? most other shell-languages are string-based
	- PowerShell preserves the structure of the Windows data types by using the .NET object model ? No tedious string parsing required
- Command-Line Shell AND Scripting Language in one product – PowerShells goal is to be both a good scripting language and a good interactive shell
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

