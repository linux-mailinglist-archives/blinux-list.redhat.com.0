Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E37635003F5
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 04:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649901817;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oCt1JSzwJhBEFMwatI+ZLrlw73W23WAH6ysF3o5E094=;
	b=Txrm5rxRfemyU8lbeeTq01a8ISgsx9wCznywdWkX6bXY+mkiR5Cb346pPcpm1wVeU3jD2F
	ubLzmuIiFAZBwHdZjkjQuuocMgtxd2PmBneTKo4j3Pab7PAMfJC+S0Nh7w1uVQLGCmoYDq
	DDXooR7Oe/tA33vGGPZU2dGs3nZuoUk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-fduAWPmrNWiHK5MQAD9xHg-1; Wed, 13 Apr 2022 22:03:34 -0400
X-MC-Unique: fduAWPmrNWiHK5MQAD9xHg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A9503804060;
	Thu, 14 Apr 2022 02:03:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B4AE0404D2F5;
	Thu, 14 Apr 2022 02:03:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0A2981940353;
	Thu, 14 Apr 2022 02:03:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 22:03:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8323.1649896260.111207.blinux-list@redhat.com>
 <mailman.8220.1649898351.111205.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8220.1649898351.111205.blinux-list@redhat.com>
Message-ID: <mailman.8227.1649901807.111205.blinux-list@redhat.com>
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

Kyle,
Great sentiments. 
When my Vinux system finally bit the dust, I discovered slint, and it's even better
than Vinux, at least from my perspective.
With slint, I can switch from hardware to soft synths in speakup, and to
fenrir, if I want to get out of speakup entirely.

Rudy

On Wed, Apr 13, 2022 at 09:05:36PM -0400, Linux for blind general discussion wrote:
> Oh wow! I can't see who you are because this list obscures the sender's
> email for security reasons, but I love everything you just said. My whole
> focus when I was doing my computer business thing was to work with everyone,
> not just certain everyones. I probably had more customers who could see than
> I had who did not have working eyeballs, but my point of sale for everyone
> was to upgrade the OS on their computers to make it run faster and more
> securely. Yes, I did at one time work with Sonar and with F123, and even
> worked a little with the attempts to revive Vinux, but it actually didn't
> hurt too much when both Sonar and Vinux pretty much went the way of the
> dodo. I guess I could express my feeling as a slight disappointment, but not
> much more. F123 was a little different, as I was a paid contractor working
> on it, so that did hurt quite a bit more, I mean no one wants to stop making
> money, but even that was manageable.
> 
> 
> Now that I know that I am to make a major career move, I will be having to
> put my face out there for the world to see. But the one thing I noticed is
> that my instructor in the class I'm taking to get me started on this new
> career path, when she learned that I am blind, kept this fact to herself
> when I asked her specifically about a non-visual alternative to something in
> the class, saying instead that she knew why I was asking the question and
> tried to answer it to the best of her ability. I felt like this recognized
> my humanity above all, and that is a very good thing. ANd having been
> selected for this class and having worked with this instructor prior to it,
> having purchased related educational materials and even having won a contest
> from her based on my abilities, not on my non-working eyeballs - she had no
> idea at that time that they don't work - I know that I am in the right place
> at the right time dealing with the right person/people. I'm not "the blind,"
> I'm not treated as "the blind," and I'm not even selected for anything
> because of my blindness. I am human, and my skillset and the fact that I
> know I want to improve my skills and am passionate about the career path I'm
> taking are what propell me to my destiny, and that just feels much better
> somehow. I tried to express this to someone who is on this same career path
> who said that we should support people just because they are blind, but he
> didn't seem to get it. I simply couldn't make him understand that it's our
> skills and our abilities, as well as the positive impact that we make on the
> people around us and on the world that make us successful, not the blind
> beggar mentality that says I need you to support the poor blink. These are
> people who I would say exude negative energy, and I have decided that I only
> want my spirit to be fed by positivity.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

