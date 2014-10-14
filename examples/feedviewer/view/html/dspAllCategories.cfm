<!---
 
  Copyright (c) 2002-2005	David Ross,	Chris Scott
  
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
		
			
 $Id: dspAllCategories.cfm,v 1.2 2005/09/26 02:01:07 rossd Exp $

--->

<cfset allCats = event.getArg('categories')/>

<table id="catTable" width="98%" cellpadding="3" cellspacing="0">
<tr><td class="header" colspan="2">Categories:&nbsp;&nbsp;(<a href="index.cfm?event=c.newCategory">new</a>)</td></tr>
<cfoutput query="allCats">
	<tr>
		<td <cfif event.getArg('categoryID') eq id>class="selected"</cfif>><a href="index.cfm?event=c.showCategory&amp;categoryId=#id#">#name#</a></td>
		<td <cfif event.getArg('categoryID') eq id>class="selected"</cfif>><cfif len(Channelcount)>#Channelcount# Channel<cfif channelCount gt 1>s</cfif></cfif></td>
	</tr>
</cfoutput>
</table>
