Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0E14FF6E2
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 14:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649853216;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oTUsd//OyZwYxsJSZhu6JtaGT7fJBjd5I0PMNVFZ0fU=;
	b=UQMzSRZBDNIDz7dYei6gqzULXu/fPvVhw+w9OahJAP1HYehS/HoQ+EvC8wFCPMT+Z3Nr1w
	Dr5tiGx55dEVObPr84ANPSZVXjuZTcDTaVfedzijc+RpUvspbIYohV94/P6PycMpZdTkmf
	K2IOrAPtC1888EQ3ST8XQY8rEVlrgRg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-X3JZuZ3aO3WD41yrYfDlaA-1; Wed, 13 Apr 2022 08:33:35 -0400
X-MC-Unique: X3JZuZ3aO3WD41yrYfDlaA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C14C086B8A4;
	Wed, 13 Apr 2022 12:33:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C6901457F13;
	Wed, 13 Apr 2022 12:33:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 77C921940374;
	Wed, 13 Apr 2022 12:33:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 08:32:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.8235.1649845924.111201.blinux-list@redhat.com>
Message-ID: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

so for some things, a CLI program is better and simpler with less work 
involved (for example on Mutt I can just open up my Blinux list folder, 
hit end, R, type then y to send, no need to tab 10 times then enter then 
ctrl+r then ctrl+enter to send this email), ...


Where do you get all the tabbing 10 times and all that extra work? You 
seem to have a highly unusual concept of how graphical email programs 
work. For example, using Thunderbird, I was able to open up just my 
inbox, press the shift+tab key once, which seems to be necessary only 
because of a focus bug, press end to get to the bottom of the list, then 
enter on the message I wanted to read, this one in this case, select the 
exact text I wanted to quote above and nothing more, press control+r to 
reply, edit the quote ever so slightly, just to add the ... at the end, 
go down to the bottom to write underneath the quote to answer the 
question, just as I would in any text editor, and when I'm ready to send 
the message, after proofreading of course, which I always do, but that's 
an editor thing, not something specific to email, I then just press 
control+enter to send the message. I have very easy to use conversation 
threading, full navigation capabilities that I normally see in a web 
browser, links just open up in the default browser without making me 
have to jump through all kinds of configuration hoops just to get that 
working, and best of all, configuration itself takes about 2 minutes 
from 0 to two email accounts ready to read and respond to email, instead 
of taking weeks or even months to set up and having to try to figure out 
weeks later what is still going wrong and why as was my problem when I 
tried to use Mutt, although I admit it was years ago that I tried it and 
gave up on it, as I never could get external email on an IMAP server 
working correctly; the only way I could use Mutt at all was when I tried 
to run a home-based email server that was my user account @ 
some.dyndns-provider.domain, and of course that ended up going the way 
of the dodo because already at that time email was something that only 
corporate types and server operators with boxes that were much beefier 
than mine in power-sucking data centers with T1 pipes and static IP's 
could actually run effectively. I mean now I can just run my email from 
a VPS, which I do, but now we're back to the external email problem 
again, since I use IMAP on the server to let me use any client I want on 
any device. Regarding IMAP, I couldn't even get Alpine working with 
that, even though the settings are supposed to be there; I just couldn't 
find them, and this was fairly recently. In Thunderbird, I just add a 
new account, and the worst case is that I may have to specify the IMAP 
and SMTP servers and ports manually. But even doing this takes far less 
time to set up on a new machine than text-based email, especially Mutt. 
I will grant you that of course I could just copy over configurations to 
a new machine, but that is not limited to Mutt, since Thunderbird and 
even the browsers have the ability to read saved config files that come 
from other machines. I'm just referring to first-run setup, or if I ever 
need to make any changes to the existing configurations, which is far 
easier to do in graphical email programs of all kinds.


I think the real showstopper for me when it comes to text-based 
applications is the sheer inconsistency between applications. On my 
graphical desktop, I have certain functionality that just works no 
matter where I am or what application I'm using. For example, alt+f4 
will close this window, shift+arrows will highlight text to be copied or 
cut in most cases, that is anywhere that text can be selected, then I 
have the standard control+x to cut, control+c to copy, then control+v to 
paste to the application where I want the text to appear, whether that's 
in the same application or a different one. In most cases, control+q 
also closes an application, and control+w closes the current window. 
These things all work 90% or more of the time. With text-based 
applications, there is much inconsistency. Just to give an example, 
control+x cuts selected text in most desktop applications, but it quits 
Nano, and in most graphical text editors, I press control+f to find 
something, this even works in browsers, but in Nano, I have to use 
control+w. What? And we're not even gonna talk about things like Vim, or 
the dreaded EMACS, or all the other text editors out there, with the 
exception of Micro, since it is on the path to rectify the consistency 
problem by using familiar keybindings for most things. The problem 
though is that the functionality I mentioned in Nano, control+x to quit 
and control+w to find something, are limited to Nano, Pico and I think 
it's called Pilot. Most if not all other text-based editors have their 
own keybindings that all work differently. This is pretty much fine once 
I have made all my choices of favorite apps and either got used to the 
differences and inconsistencies or reconfigured all their keybindings so 
that they're all the same, but for someone just sitting down in front of 
a computer for the first time just trying to edit a file or send an 
email, or even for someone doing this for a long time, the consistency 
of the graphical desktop applications and the functionality they share 
that is implemented in much the same way across applications makes me 
and many others feel more comfortable at the computer and certainly 
makes us more productive.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

