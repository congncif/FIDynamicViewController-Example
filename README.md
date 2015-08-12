# FIDynamicViewController-Example

#Introduction
FIDynamicViewController built makes it easy to create a dynamic and flexible view controller with its contents.<br/> 
For example, when you want to create a view controller with the components within it 
are loaded depends on a particular configuration.

#Installation
Drag FIDynamicViewController.framework in your project. Very Simple!

#Usage
- Create a dynamic view controller DynamicViewController, which is subclass of FIBaseDynamicViewController<br/>
- Create sub view controllers, each sub view controller is subclass of FIBaseSubViewController, 
also a components of above dynamic view controller<br/>
- Create a dynamic presenter for passing data in DynamicViewController, every data work with view controller will be declare in here<br/>
- In storyboard, create instances of DynamicViewController you want (for example 2). Each DynamicViewController contain ContainerView
with content is SubViewController.<br/>
- Now you can load DynamicViewController you want into window and parts of it is completely independent, so that you can change at any time<br/>
