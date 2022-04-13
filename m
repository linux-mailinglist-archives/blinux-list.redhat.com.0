Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B7B4FFF51
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 21:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649878219;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PgSIlRyjMQdlm9BB236dN7OE7q5OtRX9T+JSBU2ORcI=;
	b=ECvnXIEMD5uEcRVd7QwVsOhkMRj7N4eY6ROrG8rnAl6H4xFwmxdn4UKA8DVCXQhXo4h/ye
	Su8FUsiC6+1By84cfHjregExMpXulsIhdhRz+yQqmqNVHMQBwtGFIiKpCLEOluVbtC/nrW
	py0LXQtSChPb2M/4wSChx8Pg1Cn4vnc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-139-ouoMEVHoMJCfBXX7vo2N2g-1; Wed, 13 Apr 2022 15:30:18 -0400
X-MC-Unique: ouoMEVHoMJCfBXX7vo2N2g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3FFF803CB8;
	Wed, 13 Apr 2022 19:30:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7D01E40D1B98;
	Wed, 13 Apr 2022 19:30:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DD40D1940353;
	Wed, 13 Apr 2022 19:30:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 20:30:09 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8442.1649877631.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8442.1649877631.111206.blinux-list@redhat.com>
Message-ID: <mailman.8179.1649878215.111205.blinux-list@redhat.com>
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

And this is where everyone is different, though. I mean. I can figure out Mutt's config by going through it and understand what it wants me to do, whereas I personally find Thunderbird too cluttered by default having to tab around and turn things off instead of getting right to   emails however. And of course YMMV on it. I prefer a terminal app for stuff like managing a network, email and so on. You prefer GUI apps...but at the end of the day we're both getting the same task done, ust coming at it from different perspectives though.

What works for you doesn't work for my way of doing things however, which goes right back to the point about text stream vs full screen vs desktop vs other things point though. Just because the text stream is the Edbrowse's method of doing stuff....doesn't mean it works for everyone. I mean. I agree 110% with you Kyle that emacs has s a giant, sheer learning curve though. That and...okay here's another example.

I don't click with XFCE. It's too cluttered for a menu for my liking with everything crammed in, yet I know people who love it and use it as a dailyy driver. More power to them, but it's not what I personally use, I'm happy with my Ratpoison/Strychnine setup and Firefox and a bunch of TUI apps to get stuff done. To me, using Mutt and vim in a terminal is easier for my use case. I can get more one without having to tab around. Ican ust type and get more done productively.

On Wed, Apr 13, 2022 at 03:20:08PM -0400, Linux for blind general discussion wrote:
> But there's my point. It may be that you don't want your calendar and search
> bar, but others do. We can argue all day long that they should not be on by
> default, or that they should. The point I'm trying to make is that
> Thunderbird is mostly usable right out of the box, cluttered though it is,
> but Mutt makes you go through a ton of configurations just to make it read a
> mailbox, which is something that Thunderbird can do in about 30 seconds, but
> takes a week of fiddling about in Mutt's nearly incomprehensible
> configuration files that are not documented internally very well, or wading
> through tons of online documentation just to find out how to set up a
> mailbox. There is such a thing as exposing an end user to every conceivable
> setup, allowing him/her to make changes to every aspect of the system, and
> then there's dropping the end user into the middle of the ocean without a
> life jacket and expecting him/her to be able to find the way to the shore.
> As I said, I would pretty much consider myself to be a power user, and I
> couldn't survive Mutt configuration apart from *mostly* getting it working
> on a home computer that was doubling as an email server at the time, and
> that's not practical for most people, especially those who just want to be
> able to set up a new computer and start reading and responding to email in a
> few minutes.
> 
> ~Kyle
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

