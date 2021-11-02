Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF65C442ECD
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 14:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635858445;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0cY/DIOrjWNdvPFdTQo9gWTEWVrtrP3y9tqy4pEufto=;
	b=QvrbNWu7O4TdezNB08a0jf1wB3wryE1RZbuph+wM5z/Oqy4mrr4YA+OtTbaqO+QIqaFckD
	07cQQ40tNale7MQ0Gr/9GcfTfKC81yB1mpGiGSi4rS95B++7KDycgsEx0616p+9eXWSAB7
	7myEa0pTZaN5lAitr/HzqqiK/3Qfos8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-G2zF33KbNxOsxhOtskW6Bg-1; Tue, 02 Nov 2021 09:07:21 -0400
X-MC-Unique: G2zF33KbNxOsxhOtskW6Bg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FF5F1023F4E;
	Tue,  2 Nov 2021 13:07:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08C56100E12C;
	Tue,  2 Nov 2021 13:07:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9B1A4EA2A;
	Tue,  2 Nov 2021 13:07:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2D7AeE015003 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 09:07:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1216340D1B9E; Tue,  2 Nov 2021 13:07:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E2FB40D1B9D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 13:07:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA492180138C
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 13:07:09 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-588-iulICvv2MMWq7kGyl5HGyA-1; Tue, 02 Nov 2021 09:07:08 -0400
X-MC-Unique: iulICvv2MMWq7kGyl5HGyA-1
Received: by mail-yb1-f172.google.com with SMTP id v138so47430611ybb.8
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 06:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ovFE/ivrY5ilDKnVRkewISqNvgDUxEQZl8pbpV7oVjo=;
	b=pgSr6hH/78ANAwVXOUvNJG4V4xNZF5+ySHiAhZwBRPXsTnF2WqPtpOdvwzGHGlx8qw
	4tGR4A808K6l8m7NKjx3rJJKxAJrtMYa8NEj5cdBoIT9Y3BMQD4Kr+7GfeSXXsDV+ZOF
	CWYIIMtu7xygqnuwHZQepK5upDESgrEJjqIIsf3pjQCuLD37px8wh+YzSdkktMOpNcC/
	Kb4MgscB5X0zf/nQiCdGfm6Tt1uP5JEo5QbOgnBWJLPK5lB8bdngcSAVEZ9UHyc9ipbn
	XjeH9V77mjEC/sfryfS+03lJHQDGyK9BbqfB043UN8HxCtTp0OjTUASTnQ4adXqt91ZX
	467A==
X-Gm-Message-State: AOAM533okFxGn3NddRxnM4quVov/24E1x8QgARwXwfeaeVYGzEXuKlc/
	EzRPp4dR/wnTLqCkbN6ZspoeK17zK1mIIYxyubbhfT3P/Hc=
X-Google-Smtp-Source: ABdhPJxKriVr6jgpcUYIPUbeADqY11lzJBc8IIdlCJcD0fO/rc9URk2mXsDjVTX8WB+5eSkGUMMCUHQ0mLRk2zupAzE=
X-Received: by 2002:a25:2a89:: with SMTP id q131mr4463522ybq.436.1635858425877;
	Tue, 02 Nov 2021 06:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
	<CAGJxbF6OOu6AygAWQm1+mi9SCAsNshWYSTcooNHzG+n7PQiXPA@mail.gmail.com>
	<36bd3345-96bb-1017-ea91-515a51d27b23@gmail.com>
In-Reply-To: <36bd3345-96bb-1017-ea91-515a51d27b23@gmail.com>
Date: Tue, 2 Nov 2021 08:06:54 -0500
Message-ID: <CAGJxbF5-71mrqr8EgJjRnbFHQCUPYTvFw8meCeViu1TTKCnHHw@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Kyle, why is it that you get so defensive when choice is given? You did it
for Gemini, talking about how bad it is, when you don't have to use it. You
don't have to use this screen reader either. If Orca makes sense to you,
then great. If a new one makes sense to others, that's great too. It means
more Linux users.
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 2, 2021 at 7:49 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> And there's my point. I did read documentation, but I shouldn't have to
> take a class or get a degree to figure out how part of my screen reader
> is supposed to work. I shouldn't come out of reading documentation to
> try to figure out part of my screen reader only to be left more confused
> than when I started either. I turned on Orca and figured it out right
> away, whereas when I needed to try to get nvda working just to partition
> a disk for someone I was working with at the time, it failed miserably,
> and getting a degree in screen reader design and development just to
> figure out what an object was or how to navigate it simply would not do.
>
>
> And I do believe you were made aware of why there is a difference
> between navigation key toggling and focus mode. OK yes, I rather dislike
> focus mode in general, since I can remember when Orca's browser
> navigation just worked, and I could navigate to a text box and just
> start typing something and it would just work, and I could simply tab
> off the textbox to interact with the next control. Sadly those days are
> gone, although there is a setting that gives me back much of this
> functionality. I do still have to turn off structural navigation in some
> cases where I don't want focus mode, but this is due to the website I'm
> using. Focus mode on the nearest text field on textnow.com for example
> puts me in a field where I would be sending a text message, which is not
> what I want to do when I'm calling a system that needs me to dial
> numbers. And entering into focus mode on an odd part of the page locks
> me into that section, so I am unable to read up or down if needed.
> Fortunately in this case, all I have to do is to turn off structural
> navigation anywhere on the page and just dial the numbers I need. The
> same is true of Google Voice, which I use extensively for my job that
> requires that I enter an agent number and a one-time password to be
> connected. I have found it much easier to just type in my codes with
> structural navigation turned off than to have to go and open the dial
> pad, then find the open text box, which puts me into focus mode and then
> dial my codes. Again, is it perfect? No, not by any stretch, but it's
> also not unusable or even painful. Toggling structural navigation allows
> you to use your navigation keys to do other things in places where you
> don't want focus mode, and I for one don't want to see this
> functionality taken away because you or someone else thinks it's
> unnecessary. It is certainly a necessary part of my workflow, as
> demonstrated above.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

