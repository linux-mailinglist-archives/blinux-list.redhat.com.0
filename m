Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60E0E24D80B
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 17:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598022546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7JFpUktRi8JyqQew7Twz5FPnclCkNWGi1+C1f1lJlmE=;
	b=Zh56mhcnHGVOaFVS3+wZrfc1MMlhyNDw03lnSFvrNi+WHkhky2KfP3gqax24ZLZLlbX4kp
	JwA6/U65hDiPKmy6SAQdCs4cnbunhE1R9DgAooic5DQGaotgeakjmFuu+rjkd0uGG5PcLj
	dYbLwBx5BYib+2bijXuaYh4jd+5oAyw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-548-GowvyTAwMrqWbwaK_NIJAA-1; Fri, 21 Aug 2020 11:09:04 -0400
X-MC-Unique: GowvyTAwMrqWbwaK_NIJAA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A5F4425EF;
	Fri, 21 Aug 2020 15:08:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A781C1055A54;
	Fri, 21 Aug 2020 15:08:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9B28181A06D;
	Fri, 21 Aug 2020 15:08:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LF8la2011521 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 11:08:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D18782166BDD; Fri, 21 Aug 2020 15:08:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD0D92166BA3
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:08:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96F71186E135
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:08:45 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-354-ITEjqwJWPyyrf-yh3cxfpg-1; Fri, 21 Aug 2020 11:08:42 -0400
X-MC-Unique: ITEjqwJWPyyrf-yh3cxfpg-1
Received: by mail-qk1-f180.google.com with SMTP id 2so1624873qkf.10
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 08:08:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=V3o8CFCIOjcaGCVcXxdyail4yGImjZPxtT/6BipR8F4=;
	b=C0VMi+fJiaTCmL5jHpROgf21AbrqZJoUk7qo2hy9bRKacZui8+vF0LVXRjsQLbw12v
	8bd8b3jDcF4gUgYbXwOutpZUE9O9hUP0nie907BUl5Uq44luwAU+0rcOruepQgXqL4up
	QJmVMkTrQ7GFH4L22odvEXS9X5XsLitnhTy2T5HkkA0R2MTC9ky3ZkRNaxcOGDBpE4/d
	pTQfWK1E/TReShs21v8FiYM/7aKi6OPoDRaqKJjBcXkdDx6yGcnmnOogWAa8CPx4VlKS
	r1JtxkNQVTgSE0+cK0TUbNJbdaVdnmgAzENczJ6vpptd5Kzv804E6yvwRzAfMjcpBOdN
	HkCg==
X-Gm-Message-State: AOAM5334St8UZ92QgZFXIdNlEnQwqjkpE2iISTTrb6Uq5HNyYZZ7V2Il
	n5XSB0bHVuSN5LKSr+0jVYdxriwNEAPSgJr6PZVhVcQ8n0w=
X-Google-Smtp-Source: ABdhPJwHDE8x45MywJMbVjiRU0SRLlk4RaQQBoX1Ivuijm5FZNqI1kXfE5WG/QSNcDxhdDG/lFTbheLpJ/wZvXbv9ak=
X-Received: by 2002:a05:620a:2041:: with SMTP id
	d1mr1517494qka.401.1598022521966; 
	Fri, 21 Aug 2020 08:08:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Fri, 21 Aug 2020 08:08:41
	-0700 (PDT)
In-Reply-To: <CAGJxbF42w1GYaWYJooTreuJV1hSC3BKQ9h8gUpKWOx7D2VAz_A@mail.gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<CAGJxbF42w1GYaWYJooTreuJV1hSC3BKQ9h8gUpKWOx7D2VAz_A@mail.gmail.com>
Date: Fri, 21 Aug 2020 15:08:41 +0000
Message-ID: <CAO2sX30HjWEB+pTv-K_9acVVEX0WSd1bE+j7v4PwRcoGQTeMhA@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I feel like the criticisms leveled against Debian here are a bit unfair.

Yes, Debian Stable is rather out of date by the middle of Debian's
development cycle, but the same can be said of ubuntu LTS and pretty
much every other LTS edition of a distro that offers an LTS release.
And that comparison is probably the most important thing to remember
about Debian stable: What Debian calls Stable, just about any other
distro would call LTS.

Debian Testing, while not fully up-to-date, generally has the latest
stable release of most actively maintained packages, and sometimes
even release candidate or solid beta versions. If there's a newer
version and it's not in testing, usually it's either completely new or
unstable stumbled upon a release critical bug(e.g. Orca 3.36.4 never
made it to Testing due to the breakage it caused, but Testing now has
Orca 3.36.5). I'm pretty sure Debian actively discourages people from
running Testing on production workstations, but my experience back
when I used Vanilla Debian and upgrading everything
non-Knoppix-specific to the version provided by Testing on my
Knoppix-based setup suggests Testing is, on average, at least as
stable as many STS releases of other distros, a sentiment I've heard
echoed by many other Debian Testing users...

And while it's a bit more advanced, though still infinitely easier
than compiling everything yourself, you can have both stable and
testing in your sources.list, set stable as the default release, and
then manually upgrade just select packages to their Testing version,
which will only upgrade other packages if the testing version of the
selected package depends on a newer version. This method also leaves
open an easy downgrade path if a new version does break
something(though again, if the package was already sourced from
testing, and there's a broken upgrade, you might be downgrading
further than the previous testing version).

Debian Unstable is where you start risking random package upgrades
breaking important stuff, and even then, my ventures into Debian
Unstable have been smoother than what I remember from running Ubuntu
Unstable back in the day or with Windows 98 or vanilla XP before I
freed myself from Microsoft's shackles.

If there was an official Debian package for SBL and switching from
espeakup to SBL as the default console screen reader was as simple as
install SBL, run a script that makes it the default, and reboot and I
could figure out how to launch Firefox+Orca as a stand-alone
application without the need for a full desktop, I'd switch back to
Vanilla Debian in a heartbeat... though I'd probably still keep a DVD
of the latest Knoppix configured to boot in Adriane by default around
as a rescue disc(unless someone has a better suggestion for a Live
environment to boot up and use partimage from for backing up and
restoring images of a root partition).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

