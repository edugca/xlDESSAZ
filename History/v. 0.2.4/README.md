# xlDESSAZ (v. 0.2.4)

This spreadsheet exposes examples of how to seasonally adjust and forecast time series with X13-ARIMA-SEATS without having to leave Microsoft Excel (Windows only).														
It is intended to be used by researchers and the general public. It is NOT a product of the BCB, nor it is maintained by that institution. Use at your own risk!														
It is totally free and its code is open!														
														
TIPS														
														
* Most recent version should be found on this webpage:														
https://github.com/edugca/xlDESSAZ														
														
* To update from a previous version, just replace the old version of this spreadsheet with this one.														
To update in your own spreadsheets, you need to open each one of them in the VBA Editor and replace the modules "xlDESSAZ_Functions" and "xlDESSAZ_modShellAndWait" with their current versions embedded in this spreadsheet.														
														
* For this tool to work, one needs to install the software X13-ARIMA-SEATS, which can be downloaded freely from the website below:														
https://www.census.gov/data/software/x13as.html														
														
*Documentation of the software X13-ARIMA-SEATS is available in the following link (if the link is broken, just check their website):														
https://www2.census.gov/software/x-13arima-seats/x13as/unix-linux/documentation/docx13as.pdf														
														
* To use these functions in your own spreadsheet, use this spreadsheet as a model, it is EASIER!														
Alternatively, copy to your spreadsheet the VBA modules named "xlDESSAZ_Functions" and "xlDESSAZ_modShellAndWait", both embedded in this spreadsheet.														
														
	1) With your spreadsheet open, make sure macros are enabled and the Developer tab is displayed. In the links below, you learn how to do that:													
														
	https://support.microsoft.com/en-us/office/enable-or-disable-macros-in-office-files-12b036fd-d140-4e74-b45e-16fed1a7e5c6													
	
	https://support.microsoft.com/en-us/topic/show-the-developer-tab-e1192344-5e56-4d45-931b-e5fd9bea2d45													
														
	2) In the ribbon, click on Developer tab, then on "Visual Basic".													
																		
	3) Drag the VBA modules "xlDESSAZ_Functions" and "xlDESSAZ_modShellAndWait" from this spreadsheet to your spreadsheet.													
																								
	4) Open the VBA module "xlDESSAZ_Functions" at your spreadsheet. At the beginning of the module, set the following paths accordingly.
X13_path must be directed to the x13as.exe file at the X13-ARIMA-SEATS installation folder.
X13_temp_folder_path should be a folder one creates specifically for the purpose of holding temporay files in-between Excel and X13-ARIMA-SEATS, preferably at a fast hard drive (i.e. SSD). One should not share this folder with any other programs or files!													
														
														
* These functions rely on executing the software X13-ARIMA-SEATS and accessing user-specified folders. So, when designing your spreadsheet, consider copying function results and pasting them as values.														
														
* If your seasonal adjustment specification is not working, try to make it work on the software X13-ARIMA-SEATS!														
														
* There are some known limitations:														
	* All limitations that apply to X13-ARIMA-SEATS seasonal adjustment algorithm also apply here.													
	* So far, the tool has only been tested with vertically-aligned vectors and matrices. So, data should be vertically-aligned.													
																											
## Version history														

v 0.2.4 (2023-03-23)

* Bug fix: series with zero values were not being processed resulting in error message.
* Update: the IBC-Br spec used as example was updated to its current version.

v 0.2.3 (2023-02-07)

* Bug fix: decimal separators when system default was enabled were not being correctly processed.

v 0.2.2 (2022-10-07)

* Bug fix: moving VBA modules to a workbook without a reference to Microsoft Scripting raised error in reason of non-declared constants.

* Bug fix: debug routines were moved to main modules to avoid missing references.

v 0.2.1 (2022-10-01)

* Bug fix: decimal separators different from comma were not being correctly processed.

* Improvement: Functions xlDESSAZ and xlDESSAZ_X13_SetUp are no more calculated when the Function Wizard is open. This avoids messy unnecessary calculations.

v 0.2 (2022-02-24)

* Improvement: Function xlDESSAZ now accepts multiple series with the same date vector in the same function call. This speeds up the process by using the batch resource of the X13-ARIMA-SEATS software.

* Improvement: Function xlDESSAZ has new options of return: SF (seasonal factor), CF (calendar factor).

* Improvement: Added worksheet exemplifying the use of the xlDESSAZ_X13_SetUp function.

v 0.1.1 (2022-02-08)

* Improvement: Cosmetics: in the examples, interval forecasts were changed to 95%, so it is closer to standard practice. Description of forecasting parameters was clarified.

v 0.1 (2022-02-06)														

* First release.
