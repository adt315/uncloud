DROP DATABASE IF EXISTS uncloud_db;

CREATE DATABASE uncloud_db;
USE uncloud_db;

CREATE TABLE IF NOT EXISTS Users (
id INTEGER NOT NULL auto_increment,
email VARCHAR(255) NOT NULL,
username VARCHAR(255) NOT NULL UNIQUE, 
password VARCHAR(255) NOT NULL,
-- avatar ??
PRIMARY KEY (id)
);

CREATE TABLE posts (
	post_id INT NOT NULL AUTO_INCREMENT,
	post_name VARCHAR(255) NOT NULL,
    username_author VARCHAR(255) NOT NULL,
    post_body TEXT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO posts (post_name, username_author, post_body)
VALUES ("Every Day With Anxiety", "Young Bold Hag", "More like every moment. Some days are better than others, yes. But this is worse. Each moment can be different. I have to try to prepare. Prepare for something that is not predictable. Are there patterns? Sure. Over time you can begin to detect triggers. By this time, there will be differences your brain has adapted to try to cope. Not in a logical way. No, it’s been in survival-mode. It’s just becoming more neurotic to adapt so that you might still function well enough to eat and sleep. While my brain is busy trying to keep me alive in it’s own right, I am trying to survive it and perform my role in life as if I am okay to play the part. We aren’t exactly a team. Alas, I cannot live without it, as it cannot live without me. 
Oh yeah, we haven’t even started on my body. Even when I get the right type of therapy or medication or enough time with one or both has passed to have mentally and emotionally dealt with some type of anxiety or trauma, my body doesn’t always team-up with us, either. That sucks. Attitude: positive: check. Mentality: focused and productive: check. Emotions: calm and somewhat happy: check. A lot of work to get here: check. Major muscles tremorring uncontrollably and stomach painfulling flopping and clenching: doesn’t belong. I used to only have shaking, nausea, dizziness, tension, shortness of breath, loss of vision, etc. when I was also feeling nervous anticipation or filled with fear suddenly. After years of therapy and figuring out which medications work better than others for me, that changed. I still had regular anxiety and panic attacks, too. This was an unexpected add-on to the software that affected the hardware. Great… right when I was getting the hang of the operating system’s commands.
I learned (eventually) that any kind of treatment needs to be part of a wholesome treatment. We must treat the body for the same things we treat our minds and emotions. Leave one piece out, and it is still sick with the same illness, just different symptoms. I always knew our bodies had memory. I just didn’t know that memory was so complex.
It’s been a long time that I have lived with anxiety. As long as I can remember. Yes, my childhood was crap. Yes, that set me up for continuous crap in my life. The PTSD was diagnosed early. It got its own additions in my teen and early adult years. Then there was Social Anxiety, Depressive Anxiety and of course Genera/Unspecified Anxiety. It’s kind of like my insomnia. The docs can’t narrow it down because it looks like I have all the common ones. Can’t fall asleep OR stay asleep when I do. While diagnosing is a bag of fun, it’s not the important part. What the symptoms do to your life is what matters. Finding actual treatment that doesn’t just suppress those symptoms also matters.
I’m not really here to present the question of what to do when you thought you’d solved a problem. I’m here to get into how to live through moments, not just days, of anxiety. I am no expert or professional. I’m just sharing as someone who has to live with this problem looming daily that can be active or just taunting moment-to-moment.
Do I go ahead and take a Xanax 20 minutes before my virtual class to be sure I make it through? Can I get out of bed before my youngest child tomorrow morning? Will I be able to accomplish anything on my to-do list? Or will the anxiety be so crippling that dinner time comes around before I can manage to make phone calls, respond to emails, pay bills, send out the mail or focus on schooling my child or myself? Do we need laundry or groceries? When was the last time I called my family? Can I handle putting on a face for them? Some of these things only take a few moments or simply initiative. Some things are bigger commitments. Some people don’t understand the term “crippling anxiety”. It can be mentally, emotionally and even physically crippling. I’ll sum it up for anyone who hasn’t caught a clue yet; life halts, doesn’t get done,one  can’t think or act to one’s own will. Of course you can find more elaborate and better stated explanations on the internet. Especially medical websites. But as I started with, I have my moments.
There are many things I have tried to make life work with anxiety. Not just therapy and pills. Also changing habits, exercise, visualizing, prayer, meditation, shorter to-do lists, affirmations, on and on. Different ways to change my feelings, my attitudes or my routines are always temporary. Maybe one day I will find the golden ticket but, for now, anxiety makes it so that I cannot rely on my own brain, mind or body consistently. Other than our consensus to almost never leave the house. Relocating away from everyone I know during the COVID-19 pandemic certainly helped with that one.
...to be continued.
");

INSERT INTO posts (post_name, username_author, post_body)
VALUES ("Turning Off Triggers", "Young Bold Hag", "To those who have not considered the obvious… Have you ever heard the phrase “What you eat is what are”? This is what I would like you to consider when pondering or planning how to maintain your anxiety or keep depression from pulling you down with it.

I am not being insensitive nor ignorant enough to suggest that you are causing your symptoms so, please do not dismiss what I have to say on any such assumption. I am writing about this here because this is the place where people can understand how incredibly callous and outright stupid it is for someone to imply that you should have control over your mental health condition by just changing your mind to mirror their opinion, or your feelings their attitude, on the subject when they clearly have a less than basic understanding, thus the crap that falls out of their mouth.

With that out of the way, I’d like to write to you a bit about how crippling anxiety or even just bad thoughts can be. I don’t mean “negative thinking”, though it is important to habitually replace those types of thoughts with positive ones. That’s just not what I’m blogging about today. This is more about the phrase above and how what you consume can truly have an effect on your mind and body. Yes, literally food but, aslo

...to be continued
");

INSERT INTO posts (post_name, username_author, post_body)
VALUES ("Insomnia Brain", "Loopy", "My entire life I’ve suffered from insomnia. When I was young, no big deal. I could run off fumes for days, working two to three jobs and still manage busy home and social lives. As time goes on however, not only do I feel the effects physically but, it’s also taking a serious mental toll. My memory is affected most of all. This makes sense considering when you sleep is when your brain processes and organizes all of the information it’s collected during waking hours. So, these days I just can’t seem to retain much. Some days I hardly have a vocabulary anymore! I lose track of my thoughts in the middle of them and focus is a feat out of reach. I’m surprised I could even complete this cohesively (I hope). I guess my worst fear is getting to the point where I am as helpless to learn new things or even make use of what I have already learned as I feel. I have tried so many things to fix this that I have come to the conclusion that perhaps the only real fix is to change my entire lifestyle. Thankfully, this sort of holistic approach is very appealing for me. It will take time and work but, getting to a point where I can live away from noises other than nature, follow my body’s natural patterns, work from home and practice habits that reduce physical and mental stress, may just be the ticket. Living in a demanding fast paced society does not set one up for good environment control nor healthy habits. Wish me luck! I’d like to sound as intelligent as I once was and use my brain to the full ten percent ;-P");