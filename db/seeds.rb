# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# IMPORTANT!! ONLY SEED DB AFTER YOU CREATE A USER..

template1 = Atemplate.create(title: "{{Introducing Ning to Blue Shirt Capital}}", 
  content: "<div>Hi {{Nivi}},<br><br></div>\r\n<div>Thanks for offering to introduce us to {{Blue Shirt Capital}}. I've attached a {{short presentation about our company, Ning}}.<br><br></div><div>Briefly, {{Ning lets you create your own social network for anything. For free. In 2 minutes}}. {{WHAT IS THE PRODUCT? WHAT DOES IT HELP THE CUSTOMER DO? WHO IS THE CUSTOMER?}} {{It's as easy as starting a blog}}. {{LINK TO THE PRODUCT, SCREENCAST OR SCREENSHOTS}}<br><br></div><div>{{WHAT'S THE BIG PROBLEM OR OPPORTUNITY?}} {{Ning unlocks the great ideas from people all over the world who want to use this amazing medium in their lives}}.<br><br></div><div>{{We have over 115,000 user-created networks and our page views are growing 10% per week. We previously raised $44M from Legg Mason and others, including myself}}. {{SOCIAL PROOF AND TRACTION}}<br><br></div><div>{{Before Ning, I started Netscape (acquired by AOL for $4.2B) and Opsware (acquired by HP for $1.6B)}}. {{TEAM AND CREDIBILITY}}<br><br></div><div>{{I've admired Blue Shirt's investments from afar}}. {{WHY ARE YOU INTERESTED IN THIS INVESTOR?}}</div><div>{{We're starting meetings with investors next week and I would love to show Blue Shirt what we're building at Ning}}. {{CALL TO ACTION - SUBTLE SCARCITY}}</div><div><br>Best,</div>\r\n<div>{{your name}}</div><div>{{your email}}</div><div>{{your phone}}</div>",
  category: "Pitch Emails", 
  description: "Elevator Pitch to Investors", 
  user_id: 1
)

template2 = Atemplate.create(title: "{{[Inquiry] Background in dispatch systems with Pinpoint}}", 
  content: "<div>Hi {{David}},<br><br></div>\r\n<div>I’ve got a {{startup related question}} for you that I think might be right up your alley.<br><br></div>\r\n<div>We’re {{starting CriticalArc}} and we’re {{focused on providing solutions to problems that depend on\r\nstreaming status and location in real time}}. {{Things like duress and critical incident response. We’re\r\nbuilding a very robust back end to support these mission-critical applications. We’ve got a preliminary\r\nlanding page up here: www.criticalarc.com and we’re planning to demo our first system at a startup event here in Sydney on 31st March….we’re currently engaging customers and coding like hell.}}<br><br></div><div>{{I know that you have a background in dispatch systems with Pinpoint and I was wondering if you had an opinion here: As a startup seeking investment and a scalable business, do you think we should be focusing on an infrastructure or solution play? Or could we do both to start with and decide to focus on either a general web infrastructure business or a dedicated solution business some time down the track?}} {{Basically, out of the box, should we be SimpleGeo for realtime, or should we provide a solution like what\r\nyou did with RightCAD at Pinpoint?}}<br><br></div><div>I’d love to know your thoughts.<br><br></div><div>As a separate bonus question, I was also wondering if you’re {{seeing much activity in this area at the moment?}} {{Is real time location hot like the groupon-clone thing that you’re probably being pitched every other day? Or do you think there is some space here? It’s a bit hard to judge from Australia presently.}}<br><br></div>\r\n<div>Hey, thanks for reading this….{{you’re probably up to your eyeballs with Techstars applications at the\r\nmoment. Good luck with the summer program.}}<br><br></div><div>Best Regards</div>\r\n<div>{{name}}</div><div>{{title}}</div><div>{{Company}}</div>", 
  category: "Pitch Emails", 
  description: "Reaching to Out to Investors for Advice", 
  user_id: 1
)

template3 = Atemplate.create(title: "{{Updates on Company Name}}", 
  content: "===================================\r\n<div>+ Top 3 Challenges</div>\r\n<div>+ Metrics</div>\r\n<div>+ Whats New / In The News</div>\r\n===================================\r\n<br><br><div>&gt; Top 3 Challenges</div>\r\n<div>1. {{Getting Press}}</div><div>2. {{Hiring Biz Dev}}</div><div>3. {{Building Sales Team}}<br><br></div>\r\n<div>&gt; Metrics</div>\r\n<div>1. {{Revenue / Target}}</div>\r\n<div>2. {{Return Usage / Retention}}<br><br></div>\r\n<div>&gt; Whats New / In The News</div>\r\n<div>1. {{[Source] – [Title] [Shortend URL]}}</div><div>2. {{Hired Rails Programmer (@username)}}</div>\r\n<div>3. {{New Customer – Fortune 500 company}}</div>", 
  category: "Pitch Emails", 
  description: "Keeping Startup Advisors Informed", 
  user_id: 1
)

template4 = Atemplate.create(title: "{{Congrats on the product release/great quarter/NYT coverage/financing/new customer}}", 
  content: "<div>Dear {{first_name}},<br><br></div>\r\n<div>{{You and your team have really accomplished something. The feature/product/press mention yesterday is\r\nmaking a big impression among the people I talk to. I wanted to reach out and say congratulations}}.<br><br></div><div>{{My company has been doing pretty well also. We recently announced [customer/competitor] as a client\r\nfor our [product]. Maybe something like this could help you continue your impressive momentum?}}.<br><br></div><div>{{I’d like to follow up about this with a quick phone call. We can cover the important issues in 20 minutes.\r\nCan I call you next Tuesday at 8am EST?}}.<br><br></div><div>All the best,</div>\r\n<div>{{Matthew}}</div>",
  category: "Sales Emails", 
  description: "Writing a Cold Sales Email", 
  user_id: 1
)

template5 = Atemplate.create(title: "{{A Business Week article for you}}", 
  content: "<div>Hi {{first_name}},<br><br></div>\r\n<div>Congratulations again on {{your news last week}}. It really made an impression on me – {{I’ve found myself thinking about your company a fair amount since then}}.<br><br></div><div>{{Here’s a Business Week article that thoughtfully describes some of the same opportunities that your announcement addressed [link]. Am I reading this right?}}.<br><br></div>\r\n<div>{{Then ask a question about how the article impacts the person’s company}}. Hope you find it interesting!<br><br></div>\r\n<div>Regards</div>\r\n<div>{{your name}}</div>", 
  category: "Sales Emails", 
  description: "Keeping in Touch Sales Email", 
  user_id: 1
)

template6 = Atemplate.create(title: "{{We Messed Up}}", 
  content: "<div>Hey {{FIRST NAME}},<br><br></div>\r\n<div>You have every right to be upset. I sincerely apologize for the issues we had with the website yesterday. We clearly didn't have the necessary infrastructure in place to handle {{SPECIFIC ERROR}}.\r\nAnytime something like this happens, we learn a lot about how {{PRODUCT NAME}} can get better.\r\n<br><br></div><div>Yesterday was no exception and we are already hard at work on changes to prevent this from happening again. Finally, we have {{credited your account $25, which will be subtracted from your next bill}}. Hopefully this lightens the blow a little and shows how serious we are about keeping {{PRODUCT NAME}} up and running.<br><br></div>\r\n<div>My personal phone number is {{XXX-XXX-XXXX}}. <br><br></div><div>If you have any further questions or feedback, it would be my pleasure to listen. Thanks very much for your time.<br><br></div><div>Sincerely,</div><div>{{Name}}</div><div>{{Title}}</div>", 
  category: "Customer Support", 
  description: "Server Downtime Email", 
  user_id: 1
)

template7 = Atemplate.create(title: "{{[Company Name] Credit Card Update}}", 
  content: "<div>Dear {{Sir/Madam}},<br><br></div>\r\n\r\n<div>Thank you for choosing {{company name} as your {{company service - i.e. vehicle history report provider}}. We strive to provide the best customer service to our users.<br><br></div>\r\n\r\n<div>I noticed that your credit card was declined when making a purchase. There are several factors that could contribute to this - from error in credit card number, CVV or bank error. Do you have another credit/debit card that you would like to use?<br><br></div>\r\n\r\n<div>If you have any questions, feel free to contact us via this email and we will get back to you as soon as possible. Have a wonderful day and we look forward to your purchase at {{company name}}.<br><br></div>\r\n\r\n<div>Warmest Regards,</div>\r\n<div>{{Your Name}}</div>\r\n<div>{{Customer Support Specialist}}</div>\r\n<div>{{Company Name}}</div>", 
  category: "Customer Support", 
  description: "Customer Credit Card Error - Declined on our side", 
  user_id: 1
)

template8 = Atemplate.create(title: "{{[Sample] Unsatisfied Customer}}", 
  content: "<div>Dear {{Sir/Madam}},<br><br></div>\r\n\r\n<div>I apologize to hear that the {{product type - i.e. report}} did not meet your satisfaction. {{Provide reason - i.e. An NMVTIS vehicle history report has the mileage when the vehicle is registered at DMV - however, a law was past a few years ago preventing us from displaying owner information.}} <br><br></div>\r\n\r\n<div>We believe in providing our customers with {{100% satisfaction guaranteed}}. {{Since we are not able to provide you with the desired satisfaction, we will provide you with a $10 refund and absorb that loss ourselves}}. {{It will be credited to your credit card within the next few days}}.<br><br></div>\r\n\r\n<div>Good luck {{on your journey to purchase a vehicle and we hope that someday, (company name) will be an option for you again}}. Have a great day.<br><br></div>\r\n\r\n<div>Warmest Regards,</div>\r\n<div>{{Your Name}}</div>\r\n<div>{{Customer Support Specialist}}</div>\r\n<div>{{Company Name}}</div>", 
  category: "Customer Support", 
  description: "How to refund a customer in a nice way", 
  user_id: 1
)

task = Todo.create(task: "Check Stripe for Customer Charges", 
  completed: false, 
  position: 0, 
  user_id: 1, 
  created_at: "2014-03-24 07:46:12"
)

task2 = Todo.create(task: "<------ Contact Alvin for an interview", 
  completed: false, 
  position: 1, 
  user_id: 1, 
  created_at: "2014-03-25 07:46:12"
)

task2 = Todo.create(task: "Send weekly stats to keep team motivated", 
  completed: false, 
  position: 2, 
  user_id: 1, 
  created_at: "2014-03-26 07:46:12"
)

task3 = Todo.create(task: "Prepare pitch to TechCrunch", 
  completed: false, 
  position: 3, 
  user_id: 1, 
  created_at: "2014-03-27 07:46:12"
)

task4 = Todo.create(task: "Email one guest blog a week", 
  completed: false, 
  position: 4, 
  user_id: 1
)

task5 = Todo.create(task: "Check out Alvin's Portfolio", 
  completed: false, 
  position: 5, 
  user_id: 1
)







