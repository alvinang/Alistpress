# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# IMPORTANT!! ONLY SEED DB AFTER YOU CREATE A USER..

template0 = Atemplate.create(title: "{{Kev suggested we get in touch -- UC San Diego CS student}}" , 
  content: "<div>Hi {{Jack}},<br><br></div>\r\n<div>{{Dave Wong}} recommended I reach out to you. My name is {{Kelly Davis}} and I'm a {{UC San Diego computer science\r\nstudent}}. {{QUICKLY INTRODUCE YOUR REFERRAL -- IF YOU HAVE ONE -- AND YOUR\r\nAFFILIATION}}<br><br></div>\r\n<div>I read about your {{firm's push into clean-tech solutions}}. At {{UC-San Diego, we’ve begun some interesting research here on the topic, and I think there could be a great collaboration}}. {{FOR THE PURPOSES OF THIS EMAIL, THE PITCH IS IRRELEVANT. THE POINT OF THIS EMAIL IS COORDINATING THE PHONE CALL, WHICH I OUTLINE IN THE NEXT SECTION}}<br><br></div>\r\n<div>Do you have time for a 10-minute phone call? If so, would any of these times work? {{ALWAYS SPECIFY A SHORT TIME PERIOD. THIS RISK-REDUCTION TECHNIQUE SERVES AS A WAY TO COUNTER THE COMMON OBJECTION BUSY PEOPLE HAVE OF IDIOTS WASTING THEIR TIME ON A 30-MINUTE CALL. IF IT'S 10 MINUTES, HOW BAD COULD IT BE?}}</div><div>\r\n<ul><li>This {{Wednesday (8/10)}} all day</li><li>{{Thursday (8/11)}} any time after {{1pm PST}} {{IF THEIR TIME ZONE IS PST, YOU PUT YOUR TIMES IN PST}}</li><li>This {{Friday (8/12)}} any time after {{1pm PST}} {{I LIKE 3 CHOICES, AND I TRY TO PROVIDE ONE ALLDAY OPTION, AS WELL AS TWO NARROWLY DEFINED TIMES. THE \"AFTER 1PM\" SUGGESTIONS HELP BUSY PEOPLE COPE WITH THE PARADOX OF CHOICE}}</li></ul></div><div>If those don't work, just let me know -- I can work around your schedule. {{YOU ARE EXPLICITLY ACKNOWLEDGING THAT THEY ARE HIGHER-STATUS AND POLITELY OFFERING TO HONOR THEIR SCHEDULE. GOOD}}<br><br></div><div>I can call your office line. Or if you'd prefer, my phone number is {{(415) 555-5555}}. {{GIVE THE BUSY PERSON THE OPTION OF WHAT TO DO. SOMETIMES, BUSY PEOPLE WILL JUST CALL YOU RIGHT WHEN THEY RECEIVE THE EMAIL IF THEY HAVE A FEW MINUTES}}<br><br></div><div>Thanks,</div><div>{{Jennifer}}</div><div>{{Add URL to credentials, i.e. LinkedIn}}</div>", 
  category: "Introduction", 
  description: "How to Setup a Call", 
  user_id: 5
)

template1 = Atemplate.create(title: "{{Requester}} <==> {{Recipient}}", 
  content: "<div>Hey {{recipient}},<br><br></div>\r\n<div>I wanted to introduce you to {{Requester/person wanting intro}}. {{Requester}} works on {{project/startup}}\r\nand {{3-5 word description}}. They are crushing it: their Facebook page got 100,000\r\nlikes in two weeks and just finished a $10M Series A.<br><br></div>\r\n<div>{{TRUST/SOCIAL PROOF}}I met {{Requester}} at AwesomeConf and we were chatting about {{recipient's\r\nexpertise}}{{Requester}} asked if I knew of anyone in {{recipient's skill}} as he/she wants to learn how to expand their\r\nofferings. You were the first person that came to mind! I hope you can spare a few minutes to {{talk/skype/\r\ngrab a coffee}} with {{Requester}} sometime {{date at least a week away}}.</div><div><br></div>\r\n<div>{{Requester}}, meet {{Recipient}}. [trust] I've known {{recipient}} for a several years after {{something you\r\nworked on/did with recipient}} I helped him with marketing his startup.<br><br></div>\r\n<div>{{OPTIONAL - STATEMENT ABOUT RECIPIENT'S WORK FOR POTENTIAL RECIPROCITY}}&nbsp;{{Recipient}} is actually working on\r\na new project and I'm sure he/she would love to hear your thoughts.</div>\r\n<div><br>Cheers,\r\n<br>{{your_name}}</div>", 
  category: "Introduction", 
  description: "How to Introduce Two People", 
  user_id: 1
)

template2 = Atemplate.create(title: "{{UCSD soph}} will be in {{NYC next week}} -- coffee?", 
  content: "<div>Hi {{Nivi}},<br><br></div>\r\n<div>Thanks for offering to introduce us to {{Blue Shirt Capital}}.<span><b>&nbsp;</b>I've attached a {{short presentation about our company, Ning}}<br><br></span></div><div>Briefly, {{Ning lets you create your own social network for anything. For free. In 2 minutes}} {{WHAT IS THE PRODUCT? WHAT DOES IT HELP THE CUSTOMER DO? WHO IS THE CUSTOMER?}}&nbsp;{{It's as easy as starting a blog.}} {{LINK TO THE PRODUCT, SCREENCAST OR SCREENSHOTS}}<br><br></div><div>{{WHAT'S THE BIG PROBLEM OR OPPORTUNITY?}}&nbsp;{{Ning unlocks the great ideas from people all over the world who want to use this amazing medium in their lives.}}<br><br></div><div>{{We have over 115,000 user-created networks and our page views are growing 10% per week.</div><div>We previously raised $44M from Legg Mason and others, including myself.}} [SOCIAL PROOF AND TRACTION]<br><br></div><div>{{Before Ning, I started Netscape (acquired by AOL for $4.2B) and Opsware (acquired by HP for $1.6B).}} {{TEAM AND CREDIBILITY}}<br><br></div><div>{{I've admired Blue Shirt's investments from afar.}} {{WHY ARE YOU INTERESTED IN THIS INVESTOR?}}</div><div>{{We're starting meetings with investors next week and I would love to show Blue Shirt what we're building at Ning.}} {{CALL TO ACTION - SUBTLE SCARCITY}}</div><div><br>Best,</div>\r\n<div>{{your name}}</div><div>{{your email}}</div><div>{{your phone}}</div>" , 
  category: "Introduction", 
  description: "How to Setup an In-Person Meeting", 
  user_id: 1
)

template3 = Atemplate.create(title: "{{Introducing Ning to Blue Shirt Capital}} {{A USEFUL SUBJECT LINE!}}", 
  content: "<div>Hi {{Nivi}},<br><br></div>\r\n<div>Thanks for offering to introduce us to {{Blue Shirt Capital}}. I've attached a {{short presentation about our company, Ning}}<br><br></div><div>Briefly, {{Ning lets you create your own social network for anything. For free. In 2 minutes}} {{WHAT IS THE PRODUCT? WHAT DOES IT HELP THE CUSTOMER DO? WHO IS THE CUSTOMER?}} {{It's as easy as starting a blog.}} {{LINK TO THE PRODUCT, SCREENCAST OR SCREENSHOTS}}<br><br></div><div>{{WHAT'S THE BIG PROBLEM OR OPPORTUNITY?}} {{Ning unlocks the great ideas from people all over the world who want to use this amazing medium in their lives.}}<br><br></div><div>{{We have over 115,000 user-created networks and our page views are growing 10% per week. We previously raised $44M from Legg Mason and others, including myself.}} {{SOCIAL PROOF AND TRACTION}}<br><br></div><div>{{Before Ning, I started Netscape (acquired by AOL for $4.2B) and Opsware (acquired by HP for $1.6B).}} {{TEAM AND CREDIBILITY}}<br><br></div><div>{{I've admired Blue Shirt's investments from afar.}} {{WHY ARE YOU INTERESTED IN THIS INVESTOR?}}</div><div>{{We're starting meetings with investors next week and I would love to show Blue Shirt what we're building at Ning.}} {{CALL TO ACTION - SUBTLE SCARCITY}}</div><div><br>Best,</div>\r\n<div>{{your name}}</div><div>{{your email}}</div><div>{{your phone}}</div>",
  category: "Pitch Emails", 
  description: "Elevator Pitch to Investors", 
  user_id: 1
)

template4 = Atemplate.create(title: "{{[Inquiry] Background in dispatch systems with Pinpoint}}", 
  content: "<div>Hi {{David}},<br><br></div>\r\n<div>I’ve got a {{startup related question}} for you that I think might be right up your alley.<br><br></div>\r\n<div>We’re {{starting CriticalArc}} and we’re {{focused on providing solutions to problems that depend on\r\nstreaming status and location in real time}}. {{Things like duress and critical incident response. We’re\r\nbuilding a very robust back end to support these mission-critical applications. We’ve got a preliminary\r\nlanding page up here: www.criticalarc.com and we’re planning to demo our first system at a startup event here in Sydney on 31st March….we’re currently engaging customers and coding like hell.}}<br><br></div><div>{{I know that you have a background in dispatch systems with Pinpoint and I was wondering if you had an opinion here: As a startup seeking investment and a scalable business, do you think we should be focusing on an infrastructure or solution play? Or could we do both to start with and decide to focus on either a general web infrastructure business or a dedicated solution business some time down the track?}} {{Basically, out of the box, should we be SimpleGeo for realtime, or should we provide a solution like what\r\nyou did with RightCAD at Pinpoint?}}<br><br></div><div>I’d love to know your thoughts.<br><br></div><div>As a separate bonus question, I was also wondering if you’re {{seeing much activity in this area at the moment?}} {{Is real time location hot like the groupon-clone thing that you’re probably being pitched every other day? Or do you think there is some space here? It’s a bit hard to judge from Australia presently.}}<br><br></div>\r\n<div>Hey, thanks for reading this….{{you’re probably up to your eyeballs with Techstars applications at the\r\nmoment. Good luck with the summer program.}}<br><br></div><div>Best Regards</div>\r\n<div>{{name}}</div><div>{{title}}</div><div>{{Company}}</div>", 
  category: "Pitch Emails", 
  description: "Reaching to Out to Investors for Advice", 
  user_id: 1
)

template5 = Atemplate.create(title: "Updates on {{Company Name}}", 
  content: "===================================\r\n<div>+ Top 3 Challenges</div>\r\n<div>+ Metrics</div>\r\n<div>+ Whats New / In The News</div>\r\n===================================\r\n<br><br><div>&gt; Top 3 Challenges</div>\r\n<div>1. {{Getting Press}}</div><div>2. {{Hiring Biz Dev}}</div><div>3. {{Building Sales Team}}<br><br></div>\r\n<div>&gt; Metrics</div>\r\n<div>1. {{Revenue / Target}}</div>\r\n<div>2. {{Return Usage / Retention}}<br><br></div>\r\n<div>&gt; Whats New / In The News</div>\r\n<div>1. {{[Source] – [Title] [Shortend URL]}}</div><div>2. {{Hired Rails Programmer (@username)}}</div>\r\n<div>3. {{New Customer – Fortune 500 company}}</div>", 
  category: "Pitch Emails", 
  description: "Keeping Startup Advisors Informed", 
  user_id: 1
)

template7 = Atemplate.create(title: "Congrats on the {{product release/great quarter/NYT coverage/financing/new customer}} {{THE MORE SPECIFIC THE BETTER}}", 
  content: "<div>Dear {{first_name}},<br><br></div>\r\n<div>{{You and your team have really accomplished something. The feature/product/press mention yesterday is\r\nmaking a big impression among the people I talk to. I wanted to reach out and say congratulations.}}<br><br></div><div>{{My company has been doing pretty well also. We recently announced [customer/competitor] as a client\r\nfor our [product]. Maybe something like this could help you continue your impressive momentum?}}<br><br></div><div>{{I’d like to follow up about this with a quick phone call. We can cover the important issues in 20 minutes.\r\nCan I call you next Tuesday at 8am EST?}}<br><br></div><div>All the best,</div>\r\n<div>{{Matthew}}</div>",
  category: "Sales Emails", 
  description: "Writing a Cold Sales Email", 
  user_id: 1
)

template8 = Atemplate.create(title: "{{A Business Week article for you}}" , 
  content: "<div>Hi {{first_name}},<br><br></div>\r\n<div>Congratulations again on {{your news last week}}. It really made an impression on me – {{I’ve found myself thinking about your company a fair amount since then}}<br><br></div><div>{{Here’s a Business Week article that thoughtfully describes some of the same opportunities that your announcement addressed [link]. Am I reading this right?}}<br><br></div>\r\n<div>{{Then ask a question about how the article impacts the person’s company}} Hope you find it interesting!<br><br></div>\r\n\r\n<div>{{your name}}</div>", 
  category: "Sales Emails", 
  description: "Keeping in Touch Sales Email", 
  user_id: 1
)

template9 = Atemplate.create(title: "{{Addressing your comments on pricing}}", 
  content: "<div>Dear {{first_name}},<br><br></div>\r\n<div>I just got your email, {{and before you get swamped with other things, I wanted to ask you a couple of quick\r\nquestions about your pricing comments:}}</div>\r\n<div><ol><li>{{Is our total package price too high, or mainly the way I proposed the payments would be structured?}}</li><li>{{Are there aspects of the overall proposal that didn’t resonate as much with your team?}}&nbsp;</li></ol></div><div>{{Sometimes I get too carried away with all we could do together. By staging the rollout, we could lower our&nbsp;price while still leaving the option to expand later. As to your comment about breaking down the price by&nbsp;billable hours, I find that’s not always the most helpful way to view our value. I’m happy to go into my&nbsp;thinking here when we next talk.&nbsp;}}<br><br></div><div>{{Are you free for a call tomorrow at [time]?}}&nbsp;<br><br></div><div>{{your name}}</div>" , 
  category: "Inquiries", 
  description: "Handling Pricing Objections", 
  user_id: 1
)

template10 = Atemplate.create(title: "Project Inquiry", 
  content: "<div>Hey {{recipient name}},<br><br></div>\r\n<div>Here are a few questions to get this process started.</div>\r\n<div><ol><li>{{Give me three sentences describing the project.}}&nbsp;</li><li>{{When is launch?}}&nbsp;</li><li>{{Are we designing and developing it?}}&nbsp;</li><li>{{Who is hosting?}}&nbsp;</li><li>{{Have you run a software project before?}}&nbsp;</li><li>{{Is your budget over $50,000 for the initial launch?}}&nbsp;</li><li>{{How did you find our site?}}</li></ol></div><div>Thanks,</div>\r\n<div>{{your name}}</div>", 
  category: "Recruiting", 
  description: "Qualifying Leads for Web Projects", 
  user_id: 1
)

template11 = Atemplate.create(title: "We Messed Up", 
  content: "<div>Hey {{FIRST NAME}},<br><br></div>\r\n<div>You have every right to be upset. I sincerely apologize for the issues we had with the website yesterday. We clearly didn't have the necessary infrastructure in place to handle {{SPECIFIC ERROR}}.\r\nAnytime something like this happens, we learn a lot about how {{PRODUCT NAME}} can get better.\r\n<br><br></div><div>Yesterday was no exception and we are already hard at work on changes to prevent this from happening again. Finally, we have {{credited your account $25, which will be subtracted from your next bill}}. Hopefully this lightens the blow a little and shows how serious we are about keeping {{PRODUCT NAME}} up and running.<br><br></div>\r\n<div>My personal phone number is {{XXX-XXX-XXXX}}. <br><br></div><div>If you have any further questions or feedback, it would be my pleasure to listen. Thanks very much for your time.<br><br></div><div>Sincerely,</div><div>{{Name}}</div><div>{{Title}}</div>", 
  category: "Customer Support", 
  description: "Server Downtime Email", 
  user_id: 1
)