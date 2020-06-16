Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id A01BE1FACEA
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 11:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592300474;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GToeUvgZUOwkAsUXYZInXj556kSZySYcPnn6Z8fNKlQ=;
	b=Qs7lgZl0EwGuz/qwpHCjox9xIMBAtu/L+6O+IFjWF0Asa+8KqQw5718u4bbt9Mfrdt7XPP
	lh92Ik2m/CZpOD5BNMi08bYzM3g/ps5YKJWFEqD8ZNeOPDZuxrPvoMkhux/MpUlaJiVW2f
	BB+JR/xUpr9ztaxoXdE/PLEiQyKVMC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66-uwhXgtlMPiSQRM5lBwOmTQ-1; Tue, 16 Jun 2020 05:41:12 -0400
X-MC-Unique: uwhXgtlMPiSQRM5lBwOmTQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DB66873427;
	Tue, 16 Jun 2020 09:41:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA2661001E91;
	Tue, 16 Jun 2020 09:41:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77ED3833C1;
	Tue, 16 Jun 2020 09:41:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05G9esUp015598 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 05:40:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4CBB58057D; Tue, 16 Jun 2020 09:40:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 489D38057B
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 09:40:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63A561859160
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 09:40:52 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-72-LYGAEV3YOkGeSg9u6ymcEw-1; Tue, 16 Jun 2020 05:40:49 -0400
X-MC-Unique: LYGAEV3YOkGeSg9u6ymcEw-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 87634FCA77E
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 02:40:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Tue, 16 Jun 2020 02:40:47 -0700
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20200616065933.GF2180@rednote.net>
Message-Id: <843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05G9esUp015598
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think Amanda is trying to get back to the question I originally posted.
That is, she wants to set up a cell phone with a (mostly) FOSS Android variant,
in order to have an accessible, extensible, and extremely portable computer
that is under her (rather than Google's) control.

Although she might use the Android UI for some tasks, the goal is to have a
command-line interface and a set of blind-friendly commands that she can enter
via Bluetooth, SSH, etc.  Longer term, entering commands by braille or voice
might allow her to dispense with a separate keyboard.

As my posting indicated, there are several candidates for a base OS, but it's
hard to tell which one(s) would be a good fit for this use case.  Suggestions?

- Rich Morin

> On Jun 15, 2020, at 23:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I don't understand your question. An Android device is a Linux device.
> It runs on linux kernels, implements several Linux libraries. Its audio
> subsystem is driven by alsa.
> 
> The user doesn't see this, of course, because all of that is under the
> hood, so to speak. The user interface on Android is written in Java, so
> bears no resemblance to the graphical desktop one might see on a typical
> Linux computer, typically GNOME or KDE.
> 
> So, what are you asking? Please say more.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

