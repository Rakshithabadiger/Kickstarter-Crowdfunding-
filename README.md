# Kickstarter Crowdfunding ( interactive Dashboard using Excel/Power BI/Tableau) & SQL
## Project Objective
To design and analyze a secure, scalable, and user-friendly crowdfunding platform that enables individuals and organizations to create, manage, and track fundraising campaigns. The project focuses on building a campaign management system, integrating secure payment gateways, implementing role-based user access, and providing real-time analytics dashboards for transparent funding performance.

## Questions (Charts and KPIs)
1. Convert the Date fields to Natural Time ( Currently the dates are in Epoch time Read the attached Artical for Reference on Epoch Time 
             https://www.epochconverter.com/ )
2. Build a Calendar Table using the Date Column Created Date ( Which has Dates from Minimum Dates and Maximum Dates)
  Add all the below Columns in the Calendar Table using the Formulas.
   A. Year
   B. Month no
   C. Monthfullname
   D. Quarter(Q1,Q2,Q3,Q4)
   E. YearMonth ( YYYY-MMM)
   F. Weekdayno
   G. Weekdayname
   H. FinancialMOnth ( April = FM1, May= FM2  &. March = FM12)
   I. Financial Quarter ( Quarters based on Financial Month FQ-1 . FQ-2..)
3. Build the Data Model using the attached Excel Files.
4. Convert the Goal amount into USD using the Static USD Rate.
5. Projects Overview KPI :
     Total Number of Projects based on outcome 
     Total Number of Projects based on Locations
     Total Number of Projects based on  Category
     Total Number of Projects created by Year , Quarter , Month
6.  Successful Projects
     Amount Raised 
     Number of Backers
     Avg Number of Days for successful projects
7 . Top Successful Projects :
    Based on Number of Backers
    Based on Amount Raised.
8. Percentage of Successful Projects overall
   Percentage of Successful Projects  by Category
   Percentage of Successful Projects by Year , Month etc..
   Percentage of Successful projects by Goal Range ( decide the range as per your need )
- Dashboard interaction EXCEL
- Dashboard interaction Power BI<a href="https://github.com/Rakshithabadiger/Kickstarter-Crowdfunding-/blob/main/Power%20BI%20Dashboard.png"> View Dashboard </a>
- Dashboard interaction EXCEL

## Process
- Data Collection – Gathered real-world Kickstarter crowdfunding data (project details, goals, pledges, dates, status, and categories) in .xlsx format.
- Data Cleaning & Preparation – Removed duplicates, handled null values, standardized data types, normalized currency, and created time-based fields (month, quarter, year).
- Data Modelling – Designed a relational model with Project as the fact table and Category, Location, and Creator as dimensions, supporting dynamic reporting in Power BI/Tableau.
- Analysis & Visualization – Built interactive dashboards (Excel, Power BI, Tableau) to explore campaign performance, funding trends, category success rates, and geographic patterns.

## Dashboards
- EXCEL<img width="1144" height="471" alt="EXCEL Dashboard" src="https://github.com/user-attachments/assets/c8acce38-1826-446c-80cb-c9e5eaec24c9" />
- POWER BI<img width="1745" height="849" alt="Power BI Dashboard" src="https://github.com/user-attachments/assets/9902db1f-b026-4de3-9f45-44e608234d8a" />
- TABLEAU<img width="1137" height="501" alt="Tableau dashboard" src="https://github.com/user-attachments/assets/71d68119-b5f0-4dc3-ab75-329718e226e8" />

## SQL Queries
<a href="https://github.com/Rakshithabadiger/Kickstarter-Crowdfunding-/blob/main/Grp%201-crowdfundingKickstarter%20finalll.sql"> view</a>

## Project insights
- Early Engagement Wins – Campaigns with strong backer activity in the first 48 hours achieved higher success rates.
- Media Quality Matters – Projects featuring high-quality visuals and clear goals attracted more funding.
- Geographic Trends – Most funding originated from developed countries (US, UK, Canada).
- Category Patterns – Technology projects raised more funds but showed a lower success rate, while Product Design and Tabletop Games performed best overall.
- Timing Impact – Peak crowdfunding activity occurred during 2015–2017, highlighting seasonal and market trends.

## Final Conclusion
This Kickstarter Crowdfunding Project demonstrates the ability to analyze campaign performance, identify key success factors, and generate actionable insights for creators and backers. Through data cleaning, exploration, and visualization, we were able to uncover trends in funding goals, pledge patterns, and campaign outcomes. The project highlights how data-driven strategies can optimize crowdfunding efforts and support informed decision-making for future campaigns.
