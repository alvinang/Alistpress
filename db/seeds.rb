# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# IMPORTANT!! ONLY SEED DB AFTER YOU CREATE A USER..

template0 = Atemplate.create(title: "{{Kevin Wong suggested we get in touch -- UC San Diego CS student}}" , 
  content: "Hi {{Jack}},\r\n<br><br>{{Dave Wong}} recommended I reach out to you. My name is {{Kelly Davis}} and I'm a {{UC San Diego computer science\r\nstudent}}. {{QUICKLY INTRODUCE YOUR REFERRAL -- IF YOU HAVE ONE -- AND YOUR\r\nAFFILIATION}}<br>\r\n<br>I read about your {{firm's push into clean-tech solutions}}. At {{UC-San Diego, we’ve begun some interesting research here on the topic, and I think there could be a great collaboration}}. {{FOR THE PURPOSES OF\r\nTHIS EMAIL, THE PITCH IS IRRELEVANT. THE POINT OF THIS EMAIL IS COORDINATING THE\r\nPHONE CALL, WHICH I OUTLINE IN THE NEXT SECTION}}<br>\r\n<br>Do you have time for a 10-minute phone call? If so, would any of these times work? {{ALWAYS SPECIFY\r\nA SHORT TIME PERIOD. THIS RISK-REDUCTION TECHNIQUE SERVES AS A WAY TO COUNTER\r\nTHE COMMON OBJECTION BUSY PEOPLE HAVE OF IDIOTS WASTING THEIR TIME ON A 30-\r\nMINUTE CALL. IF IT'S 10 MINUTES, HOW BAD COULD IT BE?}}<br><ul><li>This {{Wednesday (8/10)}} all day\r\n</li></ul><ul><li>{{Thursday (8/11)}} any time after {{1pm PST}} {{IF THEIR TIME ZONE IS PST, YOU PUT YOUR TIMES IN\r\nPST}}</li></ul><ul><li>This {{Friday (8/12)}} any time after {{1pm PST}} {{I LIKE 3 CHOICES, AND I TRY TO PROVIDE ONE ALLDAY\r\nOPTION, AS WELL AS TWO NARROWLY DEFINED TIMES. THE \"AFTER 1PM\" SUGGESTIONS\r\nHELP BUSY PEOPLE COPE WITH THE PARADOX OF CHOICE}}</li></ul><br>If those don't work, just let me know -- I can work around your schedule. {{YOU ARE EXPLICITLY\r\nACKNOWLEDGING THAT THEY ARE HIGHER-STATUS AND POLITELY OFFERING TO HONOR\r\nTHEIR SCHEDULE. GOOD}}<br><br>I can call your office line. Or if you'd prefer, my phone number is {{(415) 555-5555}}. {{GIVE THE BUSY\r\nPERSON THE OPTION OF WHAT TO DO. SOMETIMES, BUSY PEOPLE WILL JUST CALL YOU\r\nRIGHT WHEN THEY RECEIVE THE EMAIL IF THEY HAVE A FEW MINUTES}}<br><br>Thanks,<br>{{Jennifer}}<br>{{Add URL to credentials, i.e. LinkedIn}}", 
  category: "Introduction", 
  description: "How to Setup a Call", 
  user_id: 1
)

template1 = Atemplate.create(title: "{{Requester}} <==> {{Recipient}}", 
  content: "Hey {{recipient}},\r\n<br><br>I wanted to introduce you to {{Requester/person wanting intro}}. {{Requester}} works on {{project/startup}}\r\nand {{3-5 word description}}. They are crushing it: their Facebook page got 100,000\r\nlikes in two weeks and just finished a $10M Series A.\r\n<br><br>{{TRUST/SOCIAL PROOF}}I met {{Requester}} at AwesomeConf and we were chatting about {{recipient's\r\nexpertise}}.\r\n<br><br>{{Requester}} asked if I knew of anyone in {{recipient's skill}} as he/she wants to learn how to expand their\r\nofferings. You were the first person that came to mind! I hope you can spare a few minutes to {{talk/skype/\r\ngrab a coffee}} with {{Requester}} sometime {{date at least a week away}}.\r\n<br><br>{{Requester}}, meet {{Recipient}}. [trust] I've known {{recipient}} for a several years after {{something you\r\nworked on/did with recipient}} I helped him with marketing his startup.\r\n<br><br>{{OPTIONAL - STATEMENT ABOUT RECIPIENT'S WORK FOR POTENTIAL RECIPROCITY}}&nbsp;{{Recipient}} is actually working on\r\na new project and I'm sure he/she would love to hear your thoughts.\r\n<br><br>Cheers,\r\n<br>{{your_name}}" , 
  category: "Introduction", 
  description: "How to Introduce Two People", 
  user_id: 1
)

template2 = Atemplate.create(title: "{{UCSD soph}} will be in {{NYC next week}} -- coffee?", 
  content: "<div>Hi {{Recipient Name}},</div><div><br></div><div>My name is {{Your Name}} and I'm a {{Sophomore}} at {{UCSD}}, where I'm studying {{Technology and Psychology}}. I'll be in {{New York next week}} and was wondering -- can I take you to coffee? {{TRY TO MAKE IT AN ACTIVE QUESTION, EVEN IF GRAMMATICALLY INCORRECT}}</div><div><br></div><div>{{Greg Brown and Maggie Yu}} actually suggested I get in touch -- I've been working on a {{persuasive-technology}} project that might be interesting for your work at {{Acme Corp}}. [USE REFERENCES AND SPECIFICS WHENEVER POSSIBLE]</div><div><br></div><div>How does next {{Thursday, 7/8 or Friday, 7/9}} work? I'm free all day, especially the afternoon, and I can meet wherever is convenient for you. [BE EXPLICIT THAT YOU CAN WORK AROUND HIS SCHEDULE AND MEET ANY TIME]</div><div><br></div><div>Thanks,</div><div><br></div><div>- {{Trevor}}</div><div>My cell: {{(555) 555-5555}}<br>LinkedIn: {{URL}}</div>", 
  category: "Introduction", 
  description: "How to Setup an In-Person Meeting", 
  user_id: 1
)

template3 = Atemplate.create(title: "{{Introducing Ning to Blue Shirt Capital}} {{A USEFUL SUBJECT LINE!}}", 
  content: "Hi {{Nivi}},\r\n<br><span><br>Thanks for offering to introduce us to {{Blue Shirt Capital}}.</span><span><b>&nbsp;</b>I've attached a {{short presentation about our company, Ning}}</span><br><span><br>Briefly, {{Ning lets you create your own social network for anything. For free. In 2 minutes}} {{WHAT IS THE PRODUCT? WHAT DOES IT HELP THE CUSTOMER DO? WHO IS THE CUSTOMER?}}</span><span><b>&nbsp;</b>{{It's as easy as starting a blog.</span>\r\n<span>Try it at <a href=\"http://ning.com\" target=\"\" rel=\"\">http://ning.com</a>}}&nbsp;{{LINK TO THE PRODUCT, SCREENCAST OR SCREENSHOTS}}</span><br><br>{{WHAT'S THE BIG PROBLEM OR OPPORTUNITY?}}&nbsp;{{Ning unlocks the great ideas from people all over the world who want to use this amazing medium in their\r\nlives.}}&nbsp;<br><span><br>{{We have over 115,000 user-created networks and our page views are growing 10% per week.</span>&nbsp;We previously raised $44M from Legg Mason and others, including myself.}} [SOCIAL PROOF AND TRACTION]<br><br>{{Before Ning, I started Netscape (acquired by AOL for $4.2B) and Opsware (acquired by HP for $1.6B).}} {{TEAM AND CREDIBILITY}}<br><span><br>{{I've admired Blue Shirt's investments from afar.}} {{WHY ARE YOU INTERESTED IN THIS INVESTOR?}} {{We're starting</span>\r\nmeetings with investors next week and I would love to show Blue Shirt what we're building at Ning.}} {{CALL TO ACTION - SUBTLE SCARCITY}}&nbsp;&nbsp;<br><br>Best,\r\n<br>{{your name}}<br>{{your email}}&nbsp;<br>{{your phone}}", 
  category: "Pitch Emails", 
  description: "Elevator Pitch to Investors", 
  user_id: 1
)

template4 = Atemplate.create(title: "{{[Inquiry] Background in dispatch systems with Pinpoint}}", 
  content: "Hi {{David}},\r\n<br><br>I’ve got a {{startup related question}} for you that I think might be right up your alley.\r\n<br><br>We’re {{starting CriticalArc}} and we’re {{focused on providing solutions to problems that depend on\r\nstreaming status and location in real time}}. {{Things like duress and critical incident response. We’re\r\nbuilding a very robust back end to support these mission-critical applications. We’ve got a preliminary\r\nlanding page up here: <a href=\"http://www.criticalarc.com\" target=\"\" rel=\"\">www.criticalarc.com</a> and we’re planning to demo our first system at a startup event\r\nhere in Sydney on 31st March….we’re currently engaging customers and coding like hell.}}<br><br>{{I know that you have a background in dispatch systems with Pinpoint and I was wondering if you had an\r\nopinion here: As a startup seeking investment and a scalable business, do you think we should be\r\nfocusing on an infrastructure or solution play? Or could we do both to start with and decide to focus on\r\neither a general web infrastructure business or a dedicated solution business some time down the track?}}<br><br>{{Basically, out of the box, should we be SimpleGeo for realtime, or should we provide a solution like what\r\nyou did with RightCAD at Pinpoint?}}<br><br>I’d love to know your thoughts.<br><br>As a separate bonus question, I was also wondering if you’re {{seeing much activity in this area at the\r\nmoment?}} {{Is real time location hot like the groupon-clone thing that you’re probably being pitched every\r\nother day? Or do you think there is some space here? It’s a bit hard to judge from Australia presently.}}\r\n<br><br>Hey, thanks for reading this….{{you’re probably up to your eyeballs with Techstars applications at the\r\nmoment. Good luck with the summer program.}}<br><br>Best Regards\r\n&nbsp;<br>{{name}}<br>{{title}}<br>{{Company}}", 
  category: "Pitch Emails", 
  description: "Reaching to Out to Investors for Advice", 
  user_id: 1
)

template5 = Atemplate.create(title: "Updates on {{Company Name}}", 
  content: "===================================\r\n<br>+ Top 3 Challenges\r\n<br>+ Metrics\r\n<br>+ Whats New / In The News\r\n<br>===================================\r\n<br><br>&gt; Top 3 Challenges\r\n<br>1. {{Getting Press}}<br>2. {{Hiring Biz Dev}}<br>3. {{Building Sales Team}}<br><br>&gt; Metrics\r\n<br>1. {{Revenue / Target}}\r\n<br>2. {{Return Usage / Retention}}<br>\r\n<br>&gt; Whats New / In The News\r\n<br>1. {{[Source] – [Title] [Shortend URL]}}&nbsp;<br>2. {{Hired Rails Programmer (@username)}}\r\n<br>3. {{New Customer – Fortune 500 company}}" , 
  category: "Pitch Emails", 
  description: "Keeping Startup Advisors Informed", 
  user_id: 1
)

template6 = Atemplate.create(title: "Here's the info you requested about {{product_name}}...", 
  content: "Hey {{first_name}},\r\n<br><br>Here's the info I promised you about {{Company Name}}:\r\n<br><ol><li>I've attached a short PDF that gives an overview about {{product name}}.</li><li>Also, if you'd like to check out {{product name}}, here are two QUICK ways to take it for a test\r\ndrive: 1) Check out our demo: {{link to demo}} 2) Check out our demo video: {{link to demo\r\nvideo}}.</li></ol>Once you've checked out the PDF and the Demo, I'd love to get on the phone with you or meet in person to tell you more about the business. <br><br>Please let me know TWO times that work for you and I'll schedule it. <br><br>Thanks in advance, <br>{{link to your product with tag line}}<br><br>" , 
  category: "Pitch Emails", 
  description: "Initial Connection to Investors", 
  user_id: 1
)

template7 = Atemplate.create(title: "Congrats on the {{product release/great quarter/NYT coverage/financing/new customer}} {{THE MORE SPECIFIC THE BETTER}}", 
  content: "Dear {{first_name}},\r\n<br><br>{{You and your team have really accomplished something. The feature/product/press mention yesterday is\r\nmaking a big impression among the people I talk to. I wanted to reach out and say congratulations.}}<br><br>{{My company has been doing pretty well also. We recently announced [customer/competitor] as a client\r\nfor our [product]. Maybe something like this could help you continue your impressive momentum?}}<br><br>{{I’d like to follow up about this with a quick phone call. We can cover the important issues in 20 minutes.\r\nCan I call you next Tuesday at 8am EST?}}<br><br>All the best,\r\n<br>{{Matthew}}" , 
  category: "Sales Emails", 
  description: "Writing a Cold Sales Email", 
  user_id: 1
)

template8 = Atemplate.create(title: "{{A Business Week article for you}}" , 
  content: "Hi {{first_name}},\r\n<br><br>Congratulations again on {{your news last week}}. It really made an impression on me – {{I’ve found myself\r\nthinking about your company a fair amount since then}} {{Here’s a Business Week article that thoughtfully\r\ndescribes some of the same opportunities that your announcement addressed [link]. Am I reading this\r\nright?}}\r\n<br><br>{{Then ask a question about how the article impacts the person’s company}}<br><br>Hope you find it interesting!\r\n<br><span><br>{{your name}}</span>", 
  category: "Sales Emails", 
  description: "Keeping in Touch Sales Email", 
  user_id: 1
)

template9 = Atemplate.create(title: "{{Addressing your comments on pricing}}", 
  content: "Dear {{first_name}},\r\n<br><br>I just got your email, {{and before you get swamped with other things, I wanted to ask you a couple of quick\r\nquestions about your pricing comments:}}\r\n<br><ol><li>{{Is our total package price too high, or mainly the way I proposed the payments would be structured?}}</li><li>{{Are there aspects of the overall proposal that didn’t resonate as much with your team?}}&nbsp;</li></ol>{{Sometimes I get too carried away with all we could do together. By staging the rollout, we could lower our&nbsp;price while still leaving the option to expand later. As to your comment about breaking down the price by&nbsp;billable hours, I find that’s not always the most helpful way to view our value. I’m happy to go into my&nbsp;thinking here when we next talk.&nbsp;}}<br><br>{{Are you free for a call tomorrow at [time]?}}&nbsp;<br><br>{{your name}}<br><br>", 
  category: "Inquiries", 
  description: "Handling Pricing Objections", 
  user_id: 1
)

template10 = Atemplate.create(title: "Project Inquiry", 
  content: "Hey {{recipient name}},\r\n<br><br>Here are a few questions to get this process started.\r\n<br><ol><li>{{Give me three sentences describing the project.}}&nbsp;</li><li>{{When is launch?}}&nbsp;</li><li>{{Are we designing and developing it?}}&nbsp;</li><li>{{Who is hosting?}}&nbsp;</li><li>{{Have you run a software project before?}}&nbsp;</li><li>{{Is your budget over $50,000 for the initial launch?}}&nbsp;</li><li>{{How did you find our site?}}</li></ol>Thanks,\r\n<br>{{your name}}", 
  category: "Recruiting", 
  description: "Qualifying Leads for Web Projects", 
  user_id: 1
)

