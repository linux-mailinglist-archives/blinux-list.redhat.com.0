Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8BD4A24D6FF
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 16:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598018972;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bbd571N9wZp87pQ6R7fOS8gUMI56AyQ/goIeAhId4y4=;
	b=gzXms3118JeMrfEiGxOz4kCx4i27F9sjPkgXgWZNFL0Nb7SfwO2FLdmwz6sZvK7RJzAFVz
	qIqVf/nr8PYRYZzjBBF4hmbDF626lNDfLjfpkvVmD7xtDsuZRnuqBiztup+TCBY41wD/2y
	Z/m+M6MSgzmG7Yl//gQH0lXnFWOL3gw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244--HVPjl9hPFm9IsKRiFgD-Q-1; Fri, 21 Aug 2020 10:09:30 -0400
X-MC-Unique: -HVPjl9hPFm9IsKRiFgD-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1003D10309B6;
	Fri, 21 Aug 2020 14:09:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC3987E31B;
	Fri, 21 Aug 2020 14:09:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97F3E183D021;
	Fri, 21 Aug 2020 14:09:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LE9Mbs004455 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 10:09:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5FEB11175414; Fri, 21 Aug 2020 14:09:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1FCF1009A05
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:09:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64EDA18AE966
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:09:19 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
	[209.85.166.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-211-n6gfW8QCMuOiQ_e1YLhK-A-1; Fri, 21 Aug 2020 10:09:15 -0400
X-MC-Unique: n6gfW8QCMuOiQ_e1YLhK-A-1
Received: by mail-il1-f175.google.com with SMTP id f75so1196298ilh.3
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 07:09:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ksEXWX3wBLxXXBXw+CrfcRiuK7Z+ZY4skG1t1bJBa/Y=;
	b=djudM887daEFpuZn7yxIuLjRlQ0UxlzDVa0zj9zo3z487PHC7yIgO5vpmGuVH7Wc3y
	tIcmilYCO+WqXCiSln3fMdw7hFAFxKuVeU/93NcTpI0Ja+8W2PUORCTdF3YC6V8Ca6il
	aRpExG9QOg/vLlcWd/npQvPFbBhCAqapj+oSgDGyuyRhrW5jvOayb/AufphsLQvzy/79
	MBFfaHebviO4DVrqn1g3SfEuoC8iSz4buZjewY2hKSnx5kdMwGXdMhrwbNGTeuyqsDRU
	bmaBfl3GR2gCYon/L3dccS1OAVDiRcJ+9awLkx3Z+vL+TYQ65XcO1VSffCYEexTowOzE
	oMjQ==
X-Gm-Message-State: AOAM5339RG0KiALYrWfPG0azs0cSlb5gEiaaHno4axL8Iu3xkrmyp0av
	jMxsuMNCvNWJkXz/TI0STRSXdbrqFfzGrRdqAeuDgauRwPM=
X-Google-Smtp-Source: ABdhPJwro2WubGyR8rirdLw5NXLD0w+EMzd2TcojMaczuey53wI0HXv3PKSa+fYVu0oVhglwz1pAA3FEjVca5tVLSBM=
X-Received: by 2002:a92:d782:: with SMTP id d2mr2851479iln.167.1598018953912; 
	Fri, 21 Aug 2020 07:09:13 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
Date: Fri, 21 Aug 2020 09:09:00 -0500
Message-ID: <CAGJxbF42w1GYaWYJooTreuJV1hSC3BKQ9h8gUpKWOx7D2VAz_A@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I mean, why would I *want* to use Debian? Old packages, uses Speakup in
installer which, fo me, at least on other distros, has crashed. But the
main thing is old packages. Then again, there is Homebrew which can run on
Linux, but I doubt it has Orca, or anything like that. I mean, it's pretty
bad when a distro doesn't trust programmers of packages when they say
something is releasd, not just in beta. And for accessibility, the newer a
package is, probable that the more accessible it'll be. This is especially
the case for Orca. And no, a new user shouldn't have to build packages from
source to get the newest one. That should be of the package manager to do
these things.
Devin Prater
sent from Gmail.


On Fri, Aug 21, 2020 at 8:35 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Why not just using Debian? IMHO this is still the most accessible distro
> with a large community and a active team who cares about accessibility. And
> for a beginner its not more difficult to learn how Debian is working then
> learning to use another distro.
>
> For me Debian is still the best and I wonder why this is not the case for
> other users? Why do you prefere other distros?
>
> Ciao,
>
>   Schoepp
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

