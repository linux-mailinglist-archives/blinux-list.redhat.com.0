Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB68A501D40
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649970980;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wHXi7U3pZN/ZQxKjgQjei88LZWkkk/0YAQit/ebrWn0=;
	b=BAI9MQHjwpRHL8Wig1l++ut+D5LW9JjjSc/i0WOUHPF2OSSONvfmYTUh9ZAkKHSJ0uxTR/
	5XqHkXEgJHqlkrZE11zEiFZnto9sdmrnFKum46XbXTuTDT4M5PupWyVP/tCs5H2216d4MR
	JX0SiUUdn8cvzgl5tBRCR779HfmJ51E=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-222-reIsahc-P06KKBsPXzZPvw-1; Thu, 14 Apr 2022 17:16:17 -0400
X-MC-Unique: reIsahc-P06KKBsPXzZPvw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 621AB1C09059;
	Thu, 14 Apr 2022 21:16:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4D20A1415132;
	Thu, 14 Apr 2022 21:16:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D0EC7194034E;
	Thu, 14 Apr 2022 21:16:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 22:16:08 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
 <mailman.8562.1649966917.111208.blinux-list@redhat.com>
 <mailman.8563.1649967054.111208.blinux-list@redhat.com>
 <mailman.8395.1649970312.111205.blinux-list@redhat.com>
 <mailman.8704.1649970724.111206.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8704.1649970724.111206.blinux-list@redhat.com>
Message-ID: <mailman.8624.1649970974.111202.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I thought Geocities itself came back, or got forked and came back, or, something like that? There's at least two or three, oocities, neocities, geocities.ws, et al really...

On Thu, Apr 14, 2022 at 04:11:46PM -0500, Linux for blind general discussion wrote:
> Win11 uses less system resources, so it's a bit snappier. Of course, people
> will complain about any and every change. I complain about having two
> things to manage in web navigation in Orca, focus/browse mode, and quick
> navigation keys. But other people like it, and I sort of saw a few good
> uses for it, but focus and browse mode switched on and off without my
> control more times than I liked. So it's all about how a change makes a
> person feel, and how many people feel that way, and then how many people
> speak up about their feelings. Because more people will talk about the bad
> things they find than the good, me included. I was getting into NeoCities,
> a replacement for the old GeoCities, today and found that Linux users could
> mount the webdav drive just by opening their file manager and pasting in
> the address. Windows users have to use a whole separate app due to some
> SSL/TLS stuff that Windows hasn't fixed. But my thing is accessibility; I
> just can't let idiology override the need for good, solid accessibility.
> Usually. Android is another story, and is actually improving.
> Devin Prater
> r.d.t.prater@gmail.com
> 
> 
> 
> 
> On Thu, Apr 14, 2022 at 4:05 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
> > For what it's worth, I did find Windows XP far more stable than any of
> > the Win9x family... and Windows 2000 more stable than XP when I threw
> > it on the family computer around the time Vista came out... and the
> > few times I've had to use a Win 7 machine it didn't give me any
> > trouble... though admittedly, those Win7 machines were always in a
> > school setting with actual IT people around to keep the things up and
> > running... never used a Win 8 or 10 machine, but I've heard plenty of
> > gripes about bothand people wanting to stick with Win 7 even after
> > Microsoft dropped support... admittedly, much of the Win8/10 criticism
> > I remember hearing was about Microsoft replacing  Aero and forcing
> > people to get used to a new interface... and I suspect some of it had
> > more to do with trying to run them on insufficient hardware rather
> > than the OS itself having stability issues(For all its infamy, I
> > understand Vista is halfway decent on a rig that actually has the
> > horsepower to handle it).
> >
> > Haven't heard anything one way or the other as to whether Win 11 is
> > the new good windows or the new bad windows... but then again, the
> > Internet has been quiet about it to the point I totally missed it
> > coming out last year and didn't know it was a thing until it got
> > brought up in this... I hesitate to call this a thread because we
> > stopped talking about the original subject a long time ago and its now
> > a mish mash of perhaps half-a-dozen conversations... ooccupational
> > hazard of mailing lists I guess, it's so easy to go off topic while
> > forgetting to change the subject line and split off a new thread.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

