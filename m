Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 63EDD203A31
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 17:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592838080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wTZ97DASt00pnf9BFO9TSCDIREuwbcNIME1ARDyb6Oc=;
	b=N5E5uFvec4Zpt3cK6gkbRKCQKvBW+WSY/QwSrO0J209niFAmtmOBvwSf7QbLSJIrcdz1GT
	KX7450xfNkcF0JznKjNqnOyrfhai2kB+s0SA5oCfeAFBkVe6TsAx9mRSGut+vlEXdoQDzT
	nGHyIWtsLFSs2aKOd0502B2/zqcnBV0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-HpPw0IssOl6I9Q8bndPt8g-1; Mon, 22 Jun 2020 11:01:17 -0400
X-MC-Unique: HpPw0IssOl6I9Q8bndPt8g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05000A0C05;
	Mon, 22 Jun 2020 15:01:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4684C5C221;
	Mon, 22 Jun 2020 15:01:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44FD4833B1;
	Mon, 22 Jun 2020 15:01:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MF14qK015513 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 11:01:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8FDD62029F70; Mon, 22 Jun 2020 15:01:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B5A62016F2C
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 15:01:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8773F108C272
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 15:01:02 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-67-SBRvlHjMMeyeAlp_-RL19w-1; Mon, 22 Jun 2020 11:00:59 -0400
X-MC-Unique: SBRvlHjMMeyeAlp_-RL19w-1
Received: by mail-qk1-f178.google.com with SMTP id j80so4426999qke.0
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 08:00:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=HZK704izhtfcwWSCSTmOGz8nI0bRnyZBWgLc32ozYvY=;
	b=hGAU4ZM3zHFI+pbTDYgIFScQZ0Rbu2kCHTJaZOgDxHjnH1tc7I+HUgN9J1YH10H6Bt
	DPHBl1a6DX/eNIYXFwaWl8Qzax1e0pgA2eVZ7Kmt5I+CEUrgnq0KOLeiBA1a1H+S1qux
	ryqDuPCj2JAyZR1zzT2+Ge3jTRcwCsfvjREv491ifzUyF7R10VP/KfRxu8zIpd6yyoPK
	SuDddch7curQz4CV8zl0ijdCdq+3IXImPL2TLI2uJt/SZd4zHaADRHpP71uvlqCKqFGv
	q1rHKvlT77GA85qYdU9yn5DstnaMyZlcJjNiHo96kBZIqX9UCuZZKnMPYMPZocYM4XVh
	dPkQ==
X-Gm-Message-State: AOAM533VXHGd8roy/D1sWSrOu0A462bPq4K/zGsNsNQZ1HWJKBvka8C9
	bj2FsB88gNXJwUnVH5n/9IadUXnUC7XWtrhF/bj66xmm
X-Google-Smtp-Source: ABdhPJzPqEBQQ4Mv9ssKpdnjWMgZyAt8cjo8k7Nsz7JK7Xg0kRGLzq6pcBgem/NUQmL+/doT9Ec2NqCAM0+eEa4f1Bc=
X-Received: by 2002:a37:5bc3:: with SMTP id p186mr5564303qkb.401.1592838058921;
	Mon, 22 Jun 2020 08:00:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Mon, 22 Jun 2020 08:00:58
	-0700 (PDT)
In-Reply-To: <2A1D7016-E760-46B1-BB5E-3A7C56B8BC88@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<2A1D7016-E760-46B1-BB5E-3A7C56B8BC88@gmail.com>
Date: Mon, 22 Jun 2020 15:00:58 +0000
Message-ID: <CAO2sX308N-y=iFGV53feLkM3_4BqEcTDdjSOXoSL+BLKh8KneA@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

SBL is a console screen reader, and one of the reasons it's my
favorite is that screen review is as simple as holding down caps lock
and using the arrow keys(left/right for character-by-character,
up/down for line-by-line).

It's the default text-mode screen reader used by Knoppix when run in
it's accessibility-focused Adriane mode and is also available as an
RPM package in OpenSuSe, but to my knowledge, those are the only
distros it's avaialable for.

No clue where it lies on the kernel versus userspace spectrum(espeakup
depends on the speakup kernel module while part of the original
impetus for Fenrir was to create a fully userspace screen reader that
would work on systems that exclude speakup from their kernels(and
while I don't understand Kernel development much, I understand speakup
has been stuck in something called staging for years and that only the
more inclusive builds of Linux import anything from staging).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

