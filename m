Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2E2501CFC
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 22:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649969943;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1mLllZ4Lmsvmc51u8jbTMqb8Kkk3HR3owUO4UZJR8Bw=;
	b=RwGC7xtyc6UbZRvvFjXOJB9j8PvqgMTOKRSf8QIM+1g1ATQPzBN3J1E0jLPq3i39p/Zz+F
	E+t75ddC5I5MflD12xSr+130dHbloIFJNFs0CeXzFB3oYOooD8fkdXnFucJiJH2Dt5jVr+
	uzt6oG5f8Z3bguk3hmYfmgD7Ic7/UBU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-kX2q__LRO2u1iaBE14-pTw-1; Thu, 14 Apr 2022 16:59:00 -0400
X-MC-Unique: kX2q__LRO2u1iaBE14-pTw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D6B129AB454;
	Thu, 14 Apr 2022 20:58:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 45C07401DFD;
	Thu, 14 Apr 2022 20:58:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AE709194034E;
	Thu, 14 Apr 2022 20:58:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
 <mailman.8562.1649966917.111208.blinux-list@redhat.com>
 <mailman.8563.1649967054.111208.blinux-list@redhat.com>
 <mailman.8696.1649969633.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8696.1649969633.111206.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 15:58:32 -0500
Subject: Re: FYI - Command Line Programs for the Blind
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8613.1649969936.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh, well yeah I don't use Outlook, I use the Gmail web app.
Devin Prater
r.d.t.prater@gmail.com




On Thu, Apr 14, 2022 at 3:53 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> We have a machine here running Windows 10.  It can be flaky--not so much
> the operating system as some of the software running under it.  Outlook,
> especially, has lots of fun bringing some version of the uncertainty
> principle to our lives here almost daily.
>
>
> Al
>
>
> On 4/14/22 16:10, Linux for blind general discussion wrote:
> > Wow. None of that happens anymore. It's been years since you've used
> > Windows, it seems.
> > Devin Prater
> > r.d.t.prater@gmail.com
> >
> >
> >
> >
> > On Thu, Apr 14, 2022 at 3:08 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> Also Windows just works. Nothing just crashes out of nowhere,
> >>
> >>
> >> When did that start happening? I always found just sitting down at a
> >> Microsoft computer to be a wrestling match. Random crashes usually at
> >> just the wrong time, many hoops to jump through just to do things I took
> >> for granted even in the days of good old-fashion DOS, just plugging in a
> >> printer or other simple device was enough to send my computer into a
> >> tailspin, and then there is all the antivirus and antispyware stuff I
> >> had to run that slowed down the computer almost as much as just the
> >> screen reader could do. Even the very first time I used a Linux
> >> computer, back before the days of graphical desktops with a11y that
> >> worked, I went from cursing my computer 3 or more times a day to cursing
> >> it maybe twice a month, and that was usually because I was intentionally
> >> breaking something so that I could learn how to fix it. That was before
> >> I tried to wrestle with EMACSpeak and Mutt LOL. I cursed EMACSpeak for
> >> like 5 to 10 minutes before I just gave up, and actually wrestled with
> >> Mutt for about a week before running back to Pine back in those days.
> >> Things have greatly improved since then.
> >>
> >> ~Kyle
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

