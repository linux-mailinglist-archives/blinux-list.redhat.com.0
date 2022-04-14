Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB7500B37
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 12:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649932504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UlsNh/076WcpocO5z+c3E58g3iV4rfOpuop57XDod0E=;
	b=XUcoMoqkmCfCI4piC78McGVHKpmkXpyx8H7xtA7N3SRo4zZXZLqLMsp2LxBnhPfpL4flku
	NakFM+TU8Do25xurRk/IODQc96SXKTl9V/GUNTFjV6XQezyn0SZSHHP+jL1weT4xkclsCL
	1i5S0/j9EpC20/f+qT7puZ4RP5Mt0gM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-252-Wea592xQOH6Cu3jJhHy4NQ-1; Thu, 14 Apr 2022 06:35:00 -0400
X-MC-Unique: Wea592xQOH6Cu3jJhHy4NQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03D9D1014A6A;
	Thu, 14 Apr 2022 10:34:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C1F7040D1B98;
	Thu, 14 Apr 2022 10:34:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 40D6C1940349;
	Thu, 14 Apr 2022 10:34:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 11:34:43 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
 <mailman.8597.1649918264.111201.blinux-list@redhat.com>
 <mailman.8424.1649927158.111209.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8424.1649927158.111209.blinux-list@redhat.com>
Message-ID: <mailman.8587.1649932494.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Quoting has its benefits though, being able to go back and check a discussion or what was said when is very, very useful however. Like if you said something yesterday in response to something I said I can go back and reread the whole back and forth to refresh my memory on it without having to leave the program I'm in however.

Putting your name at the end of a message is....probably something I should do on this list more, though knowing me I'd throw it in somewhere else just to keep people hunting for it because why not, but where it gets ridiculous is when people put stuff like

Sincerely
Respectuflly yours
Name Nameson

The first two bits aren't needed. It's not a formal letter. It's an email. You're not emailing your boss to ask for a raise or doing something in an official capacity, you're just some rando on the interwebs who to me, seems like if you put stuff like that at the end of an email or forum post....you have a big ego and think that things are way more serious than they are.

I mean. To be clear. I don't have a problem with you or Kyle putting names to posts. It helps keep track of who said what. What I have a problem with is people being overly formal and stiff on emails. I'd rather hear what people have to say, but it's downright hilarious when a brutal roast is followed by 'Sincerely'

I'm all ...yeah, that was a sincere message. you were sincere in your burn, internet stranger. The reason I don't put my name is many many many moons ago I did, and was summarily disciplined on a forum for it because, quoe, your writing style lets people know who you are plus your signature. Which actually is a good point.

If I see Brent's sent from the console... even without a name, I know who it is. If I see a rant on Windows 11 I can take a guess it's Kyle pointing that out for example. So that raises an interesting question, in terms of netiquette, which is preferred, names or signatures on a list like this?

And no, I don't think a new list is needed. I think instead of that, there's other ways to keep track of who said what. For the record, I, Jace was the onee pointing out deafness is s a spectrum, see I put my name there not at the end of the mail, but it's there...

But point is. There's ways to keep up with who is talking if you pay attention and pick up on how people write on the list and what they message about however.

Now I just need to quit being lazy and set up a signature for my messages.

On Thu, Apr 14, 2022 at 02:05:39AM -0700, Linux for blind general discussion wrote:
> Well, Didier, I am Chime-and-I-and-a majority of folks identify at an end of
> messages, before the list headers. I for one almost never quote, as for me,
> listening to several lines of text which I've already heard  are seemingly a
> waste of time. In alpine I have quoting set at a loest level, but
> unfortunately it still displays all that "on 13 April, this person said" And
> no I don't think we need a replacement list, as this one has served many of
> us well for many years. I rather long for the days of CompuServe, when there
> was no quoting. Thanks.
> Chime
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

