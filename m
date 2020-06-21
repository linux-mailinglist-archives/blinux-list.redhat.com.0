Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF16202C78
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 21:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592768759;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MuAxtfy/JAjmVr37mCGVPSwZ4MvYgpgQ1c1MHyWenPU=;
	b=PxB0wrLkucqj36uMe1zfxUXODlJgJNldNlKXK3Y1ZWMIm4dhpK18kDhTlStSFSXTAsghtZ
	7QQQ70/+an+X0a9fIAwEJl7Xu4oX20ZJqrkz7CasWb5ku6gE4qTCjeHTCovyC2mrt6hvds
	GIx6VhsYCh9zxyy4LO3wA28P65odRHs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-o8sBXMwqNUKw30SZNhLDiQ-1; Sun, 21 Jun 2020 15:45:57 -0400
X-MC-Unique: o8sBXMwqNUKw30SZNhLDiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8503184D140;
	Sun, 21 Jun 2020 19:45:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CA3960BEC;
	Sun, 21 Jun 2020 19:45:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45FDC1809542;
	Sun, 21 Jun 2020 19:45:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LJjcOS012072 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 15:45:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C3BC110F0B7; Sun, 21 Jun 2020 19:45:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7538F110F0B6
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 19:45:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 767CD858EE2
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 19:45:35 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-252-zekSm071OEmCEJvRvBKncg-1; Sun, 21 Jun 2020 15:45:33 -0400
X-MC-Unique: zekSm071OEmCEJvRvBKncg-1
Received: by mail-ot1-f50.google.com with SMTP id s13so11423737otd.7
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 12:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=LqkU1ptjKiITtzM8U+8CTzldMvl935OQ55TOE1tQM+8=;
	b=bf0ANGDCnPpJzcIiRQBk7Wd4X9O8Od83c4fYnLC5VTjHPX3gbKG+BIcKbCqLpsl/1i
	N5AMKeS7kJuwG9XQfYtSqRTfIAkwGP51mR7bGCjoMTLLdyZ9udM+cmD7u+1LBGat/f/J
	k7LJuYfytZHUSidum6QewjD+qtOQxiW6G77KpQsZmr993xiihLrdZh4HRSy5fag3j/7v
	EyssHq31k2lTZO7oF/0vBNwVRIuUv77Aw7IIYcLW8cdjqG5qtocPk/3/SI/ixBykRIN+
	8GM69/FohKroUuKVtLfjQDJUAhcUzaHx8ApRRnl5Ylk95VTY2oAg5c3C1z4jBV7Oi6IO
	h3ng==
X-Gm-Message-State: AOAM5302ZSlAiqN+mGyIgbFm9Am9JEVEdfrrjrVUNObn1PnxOTmFATB7
	fZohk12Wl9h3Gj4xVgVywDw0wtd0jGM=
X-Google-Smtp-Source: ABdhPJyUt8CyulDi8mpepJdXqMTWN2cOb3KAvfsKPdgqWdUEuzgSSG4Nzc5wKaTv7om1KkbdtYSklA==
X-Received: by 2002:a9d:67ce:: with SMTP id c14mr10966064otn.337.1592768732302;
	Sun, 21 Jun 2020 12:45:32 -0700 (PDT)
Received: from DESKTOPIOCCUEU (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	l24sm2791161otf.79.2020.06.21.12.45.31 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 21 Jun 2020 12:45:31 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>	<alpine.DEB.2.22.394.2006141355001.3348482@chime>	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>	<20200615100242.GC2180@rednote.net>	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>	<20200616065933.GF2180@rednote.net>	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>	<20200621074757.GA2690@rednote.net>	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<CAO2sX30NoqTTbmvf6b-r1ezo3QY-oxKtjzYTQw0tXp3BmOoK6g@mail.gmail.com>
In-Reply-To: <CAO2sX30NoqTTbmvf6b-r1ezo3QY-oxKtjzYTQw0tXp3BmOoK6g@mail.gmail.com>
Subject: RE: Prospects for an accessible and open version of Android?
Date: Sun, 21 Jun 2020 14:45:28 -0500
Message-ID: <01fc01d64804$84853600$8d8fa200$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQGZK+slG/6BXdlfubFJMhEMIF5qtwKYrNjyA3xbqb0Bwn2VBQJ8xQIBAeOD/aECLTktBgIb+7HVAkMFBTEBvD5URgIJfZDsAkKsaYQBWWaCnqiMgZsg
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On the issue of planned obsolescence, I had my iPhone 4S for over five
years, and it got updates from Apple through that whole time. I paid it off
long before the five years was up. It was getting long in the tooth at the
end, and I did notice a significant improvement in performance when I
replaced it with an S7 from Samsung, but it was still usable when I retired
it.

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Sunday, June 21, 2020 10:55 AM
> To: blinux-list@redhat.com
> Subject: Re: Prospects for an accessible and open version of Android?
> 
> While I agree price is an issue(even at it's minimal specs, the Meerkat is
about
> 5.5 times the price of a 4GB Pi 4 with case and all the needed accessories
to
> power the Pi from a wall socket, and all you really get for that extra
money is a
> SSD for holding the OS, a second 4GB of Ram and the greater flexibility of
> running an x86 distro), but I don't really get the size argument. The 10cm
cube
> engraved with a 1cm grid I keep around for making rough measurements won't
> fit in my pocket, but a plastic container I have that, comparing it to the
cube is at
> least 4.5 inches wide, 5 inches long, and two inches thick fits no problem
and the
> Meerkat is only 4.5*4.5*1.5 inches if I remember correctly. Hell, I'm
pretty sure
> the Meerkat is smaller than a Nintendo DS classic and Playstation Vita
combined,
> and if I were to pull those out of my box of old hardware, I have no doubt
both
> could fit in the same pocket.
> 
> Now, admittedly, maybe I'm just lucky to have decently sized pockets and
> normal pockets really are as tiny as implied, but I don't hold my Pi 3 in
my hand
> and think"I wish this thing was smaller), and while the only Smartphone I
own is
> a dinosaur from the Android 2.x days, whenever I think about trying to
> repurpose the old thing, if anything, I wish it was big enough that the
keys and
> key spacing on it's built-in keyboard where on par with a TI-83 graphing
> calculator and that it had a full-sized SD slot and everytime I hold
someone else
> smartphone, I tend to think along the lines of "would it kill them to add
enough
> bulk to fit a higher capacity battery, physical keyboard, full-sized SD
slot or any
> of the other things that have been sacrificed in the name of
miniaturization as a
> terminal goal?
> 
> That said, it'd be great if planned obsolescence didn't render phones
borderline
> unusable by the time the average person has paid one off and if Android
wasn't
> stuck in proprietary driver hell that prevents all but the most popular
models
> from ever getting aftermarket support.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

