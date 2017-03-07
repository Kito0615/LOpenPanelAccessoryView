# LOpenPanelAccessoryView

 ***This open panel with filter. You can use this Panel set filter easily, when your app support too many types of files.***

**You can use this open panel, initialize panel with options as required, set up filter quickly.**

#### Tutorial:

Call factory method to initalize open panel instance.

`-(instancetype)openPanelWithFilterOptions:(NSDictionary *)options.`
    
In explanations of method shows the method requirations.
    
**First**, you must set a `kFilterSizeKey` of the filter size with string value  *(NSStringFromRect(FilterRect))*.
    
**Second**, the dictionary other keys are the text show in the filter to help user understand fitler means.

**Final**, the dictionary other values are the filter options, means the open panel allowed types.
    
*Note :*
    
***If you want set open panel allowed types are all kinds. Set the array has no object not `nil`.***
    

```
    For example:
        
    NSDictionary * options = @{kFilterSizeKey : NSStringFromRect(NSMakeRect(0, 0, 200, 22)), @"MP4 Files(*.mp4, *.mov)" : @[@"mp4", @"mov"], @"All types.(*.*)" : @[]};
    LOpenPanelWithFilter * op = [LOpenPanelWithFilter openPanelWithFilterOptions:options];
```
    
Here is the result.

![](https://github.com/Kito0615/LOpenPanelAccessoryView/raw/master/.ss1.png)
![](https://github.com/Kito0615/LOpenPanelAccessoryView/raw/master/.ss2.png)
![](https://github.com/Kito0615/LOpenPanelAccessoryView/raw/master/.ss3.png)
