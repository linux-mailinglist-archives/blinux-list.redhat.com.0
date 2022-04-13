Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9575002B3
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 01:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649892904;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jpq09Ywm7wn1G3lfx1ADezBLFJAT0eEDGxK9v2FzIlU=;
	b=hWZAI7ZWk7ofGl9prMiQmNjnkDPo3jcxMOyUTsUV0M7HBzf+6mQYGUcDauKcmW/jEUD6Vi
	vPZDo4wbHkMdsUm+lHJIL9mjjz/E8V8gaUbMXgTJAgWtiyf4H3kiPwu0vMKPXfiKTdemvc
	wrgJ8v2j4GIPNsJGAC/cAl+JgYMDBC4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-ny24VFrVMU-V6p8JSvDCNw-1; Wed, 13 Apr 2022 19:35:01 -0400
X-MC-Unique: ny24VFrVMU-V6p8JSvDCNw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C30263820547;
	Wed, 13 Apr 2022 23:34:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 074D2200C0CF;
	Wed, 13 Apr 2022 23:34:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7C1941940353;
	Wed, 13 Apr 2022 23:34:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 19:34:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8191.1649860611.111209.blinux-list@redhat.com>
 <mailman.8286.1649861527.111202.blinux-list@redhat.com>
 <mailman.8346.1649867449.111204.blinux-list@redhat.com>
 <mailman.8350.1649881422.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.8350.1649881422.111208.blinux-list@redhat.com>
Message-ID: <mailman.8344.1649892897.111209.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

These debates can be both informative and useful for those new to linux
> who haven't made their choices yet.


Unfortunately I would say probably not. Usually in situations like this, 
once someone trying to make a choice to come to Linux or to stay where 
they are sees all this get lost in a shell and hand-edit config file 
kind of stuff, they usually run away before they get stuck in the 
quicksand. Or worse, they end up tossing the virtual machine someone 
told them to try into the recycle bin because it is just too hard to 
use. Of course this also applies when new users are trying to find out 
what applications are available for this or that and they are told of 
EMACS, Mutt, Vim and the finer points of what people affectionately call 
"links the chain" and "lynx the cat" vs w3m with all their quirks, or 
having to learn how to get startx to play nice so that they can run a 
more capable browser like the Firefox, Google Chrome or Brave that they 
are used to using, that is not only more comfortable, but is necessary 
on today's web, when all they had to do was to run a live iso of a 
ready-made distribution with a fairly modern desktop on it and they 
could be right at home in minutes. If someone asks me about this Linux 
thing they heard about, I like to tell them about what they can have up 
and running and feel fairly comfortable using in about 30 minutes or 
less, and if they like that, great. Then if they want to learn more 
about the power user stuff they can do, then and only then would I even 
mention a terminal, a shell or terminal applications. I probably still 
wouldn't say too much about EMACS or Mutt other than their availability 
though, since even though I've been using various Linux distros for 
almost 20 years, started of all things on Slackware, and even ran a home 
web and email server fairly early on, even I gave up on both of those 
because of the steep learning curve involved in just getting past the 
initial setup process. Even now, even though I still have my own mail 
and web servers, I still tend to use things like ISPConfig for my server 
administration, since although the web server is very easy to set up, 
deploying a mailbox on a virtual domain is still not for the faint of 
heart, unless it has an automated script like what comes in most 
web-based control panels that makes it much easier to set up. I mean if 
not for the craziness involved in setting up a mail server with 3 or 4 
mailboxes on 2 to 3 domains, I would just run caddyserver for my 
websites, which can do a lot really easily, and the caddyfile is very 
easy to understand and edit, although like most other web servers, it 
doesn't support .htaccess, which does lots of per site URL rewriting and 
custom error stuff that just isn't as easy to do on a per-site basis in 
other ways supported by non-htaccess servers. Still in any case, one 
point I really like to make is that although other operating systems 
tend to take features away from users, Linux tends to add features to 
desktop environments and applications, or just to add applications, all 
while taking care not to take things away from power users, and even 
adds things that make the power user experience better over time.


Sure I know this list is a general one, aimed at users of all levels and 
skillsets. But being a more generalized list, it's probably better to 
keep things on a more general level that while not excluding power 
users, won't make new users turn tail and run for the window either. 
This is the beauty of the GNU/Linux landscape as a whole. It's not the 
wilderness, and it's not a barren wasteland either. It's a whole world 
with enough freedom and even comfort for everyone. I found long ago that 
it is not the geeky OS that only a server admin or someone with a 
masters in computer science could love, and I do enjoy letting the world 
know that I use it and they can too.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

