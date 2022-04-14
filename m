Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA1B5002E0
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 02:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649894533;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hipAUkw5HPYh+Vo/FjigtoU5hEpgNt72SOhFhKBM75I=;
	b=TfZamVboO4sBClxKKyEDDJuNi0JqJIqyJrx4G30AGqluTkST7l2dHj9kvu9tZpJEl6DhTi
	cswhOQu6EJDyUWbbVzCHY0RuUbQ6dlNZ4EBsrATddZc/oEK7liQYeXVZYM2lUhcPzxLpqo
	zHHO4wNLLTy2wdNQyCRdpjSXMi7vF74=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-654-GaMTPATIPZmZb6UeHJChSw-1; Wed, 13 Apr 2022 20:02:09 -0400
X-MC-Unique: GaMTPATIPZmZb6UeHJChSw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E46001C01705;
	Thu, 14 Apr 2022 00:02:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CFABF1415113;
	Thu, 14 Apr 2022 00:02:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 722F41940353;
	Thu, 14 Apr 2022 00:02:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 20:01:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.8363.1649886716.111208.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8415.1649894526.111202.blinux-list@redhat.com>
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

These are valid points. But what I get from Windows: a mostly clean
> accessibility experience (mostly thanks to NVDA and community support), and
> a good many apps designed by and for the blind.


Having been on a laptop recently just to test a website, I can say that 
although improvements have been made that make NVDA easier to use, its 
virtual buffering makes things harder to use, not easier, and the 
accessibility experience I found far less clean. This laptop I was on 
was fairly new, and I still had major problems just browsing because the 
whole thing was made slower by the screen reader having to copy the page 
from the website. Even worse since it has to infinite loop over the 
original and compare it with its copy in case anything ever changes. 
Next I must point out that although I am blind, I have never fallen into 
the category of "the blind." This is a point I failed to make early on 
in this thread, although I make it here. I, AM, NOT, THE, BLIND, I, AM 
HUMAN! I shout it from the rooftops. I, AM, HUMAN, it's only my eyes 
that don't work so well. I will also point out that some years ago, I 
found myself running that horrible beast of a non-operating system just 
to play two games and to use a twitter client that was made for as you 
so eloquently put it, "the blind." Once I saw that this was all I was 
using it for, I tossed that virtual machine into the trash faster than 
you can say "toss that virtual machine into the trash." I found that it 
certainly wasn't worth my time and energy to keep it running just for 
that frivolous activity that I could do on the host Linux OS with just a 
little more effort, and the Twitter website really isn't so bad that it 
needs "for the blind" treatment.

> I mean I have Google Chrome set as my default browser right now. And I can
> uninstall a lot. There's no Candy Crush Saga, and I just uninstalled Dizney
> Plus.
>
> What? How did you do all that? I got help trying to get some of that crap gone, and it WILL, NOT, GO, not even on 10. OK I think 3 of us were able to wrestle Disney Plus off the thing, but getting rid of that Microsoft browser is a no-go, along with many other things that just didn't have the appropriate uninstall or remove type of buttons, only a link that took us to a help page about how to uninstall software. But the crap simply won't go, no matter how hard we tried to get it gone. Did they fix this in 11 with the default browser thing? There was much talk around the interwebs about the browser in 11 being stuck, and it taking hours to try to figure out how to change the default, and then once enough people figured out how to change it, Microsoft went and fixed them so they got the Microsoft browser back and couldn't change it anymore. This is what happens when you let a single company with a known history of bad business control every aspect of your computer. They can do what t
 hey want with it, no matter how much of a power user you think you are.
> Windows Terminal exists. They even have a Windows package manager. But if
> you don't like that one, you use Scoop, or Chocolatey, which also have some
> Linux apps and command line programs.
> OK I'll give you that cmd is still a thing, and believe it or not, you will find many articles around the interwebs that tell you to open up cmd to do this or that. And I guess they've made it somewhat more useful again? Last time I used anything like that, they were taking things away from it to make it less useful, not adding choices to make it more usable. I pretty much lost it when they took move away for example.


> That's still true. But you'd just install Thunderbird wouldn't you? It
> works even better on windows than Linux because the accessibility bus is
> faster to load all those messages into its buffers.
>
>
Um, no. If Google Chrome is any indication, it would be slower, as it's 
loading all that stuff into buffers that are not needed and take time. 
One banking website that I tested felt quite sluggish on a rather new 
laptop. I can do my banking much much faster here on this 8-year-old 
all-in-one computer than I was able to do on that laptop. I felt like I 
was slogging through mud using that thing. I'm sure email in Thunderbird 
would be just as bad. It used to feel sluggish here as well, but this 
has been greatly improved now. I no longer notice any sluggishness here, 
even on less resource packed machines, even in large folders, which I 
will admit used to be a high pain point, not because of the 
accessibility bus itself, but because of event floods that have been 
largely fixed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

