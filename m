Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5B424C672
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 21:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597953448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z2FOWHIQzPlufCNxjn4+971rda3ZQn+phnyrEHEyoTo=;
	b=jTgSaOiAZhZytBo7fta+sqNMrT6oDFc4Vgwa0JacjNTS9VqBP8m90QrhhtY8DvPF47+Oey
	Awi2NEmIu1qRSmG2yJuQijsDHVa6IF1N88/OTgWnox2q8dBUqF8r/HSC957DRJFqonL+GT
	Z+oyaRGfBhEr+A9r+iKI+vk1pX/17wQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-KCXZUNw0Nr-L39_h62ICIw-1; Thu, 20 Aug 2020 15:57:26 -0400
X-MC-Unique: KCXZUNw0Nr-L39_h62ICIw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E8BD80ED9A;
	Thu, 20 Aug 2020 19:57:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28E50600DD;
	Thu, 20 Aug 2020 19:57:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 251BC183D021;
	Thu, 20 Aug 2020 19:57:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KJvChH013208 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 15:57:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7CDA2F4EB9; Thu, 20 Aug 2020 19:57:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7918AF4EB8
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:57:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 234CB801223
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:57:10 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-38-nniAy3ZXPqaqMRLtcHHxkQ-1; Thu, 20 Aug 2020 15:57:06 -0400
X-MC-Unique: nniAy3ZXPqaqMRLtcHHxkQ-1
Received: by mail-qv1-f44.google.com with SMTP id j10so1489468qvo.13
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EgWhCdv6UjTvmhiV2rnlF4NFKT4ueTu0DLmY1gyeXf4=;
	b=ZoUlbmeY2axUrUujnbUavkj8/9pILaTEJfN3llCcJ2Q38o8ofLG56hKDRely3H47c+
	/zcQZL+UQjF9H3BmRvOWjk25obp27LFXNHZ8esCx5BhV9M7X0tC0jpf96WSSTdvKv49r
	V3bquqTAExLeAIr+d0HmIKx8Cv06OrnMtMl3UM4IfC9hDV/+aE/j33goViR2kmpSsaSQ
	+7Uat8dr18dFYSQwQ9qeK4nPpRn+YXraE5s2Xm1FCzffUXMBdJyW10JSXWnhm47FXUMV
	b7RfQYpvmfivZJrrH7Rl8qkYTtSRO8iGBmE1Tu1k8fKzb40Muk6SA1uRcbweJoLrbm7p
	2ppg==
X-Gm-Message-State: AOAM531wXcU0XjdTuMRk+EtZQ1pSIIEXF1gwCc9zc95bTKueJkf9EJXH
	IrCSeg0oZCnfBx9fPxeKzKHrzXhNW1J4ufyOKjfQcWhn8QQ=
X-Google-Smtp-Source: ABdhPJyasFuZl8sKx613+nRRx95SMl88vtbYiXJxHN2rBgxibqec7zQ1O6l021HELXS8eniA0fS8PUQv+ja0ims4c8o=
X-Received: by 2002:a05:6214:68b:: with SMTP id
	r11mr480222qvz.226.1597953425153; 
	Thu, 20 Aug 2020 12:57:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Thu, 20 Aug 2020 12:57:02
	-0700 (PDT)
In-Reply-To: <d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
Date: Thu, 20 Aug 2020 19:57:02 +0000
Message-ID: <CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I confess I have a bias towards the command-line, and did most things
from a terminal emulator prior to going blind. Even if running a full
desktop environment with any regularity was something I was interested
in doing, I would hate a system that boots directly to a desktop
environment. Only reason I even bother with Firefox and orca is
because web browsing is the one everyday task I've yet to find an
agreeable text-only solution for.

Admittedly, if you just want a Windows-like experience minus
Microsoft's shenanigans, a distro that boots directly into Gnome or
Mate with Orca autolaunching might be best, and perhaps there are
better ways for a blind user to get started learning the command line
than Adriane's way of doing things, I really don't know, I had already
been using Linux full-time for 6 years when I went blind, having cutt
my teeth on the earliest versions of Ubuntu and having jumped ship to
vanilla Debian before they ever experimented with doing their own
desktop environment.

All I know is that one of the last Adriane CDs was the distro that
restored my ability to use a computer independantly after my vision
got too bad for a high contrast theme and large fonts to help in
Debian LXDE, I much prefer the way SBL does screen review to how
espeakup does it, and I like being able to launch the only graphical
application I use with any regularity without the need of launching a
full desktop. My way of doing things probably isn't for everyone, but
if sharing my experiences helps even one person, than I think it was
worth the effort to type up.

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

