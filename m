Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F52D450F86
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637000990;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kqSG20+m7AuJQ2pcPSEiGcFMbTdQKS29KB4vRm3juMI=;
	b=Dl1sT6E8tTvc04wAnc/oO0tivUlfZ2PGSRoK5E4JGdIA8Uh4RHBcUvLa61aHGxsdWc+b0b
	blcIRVMAJ8xCJ8zQQzPz0XHjMO/uuswC8t+X8ldRuTekpwBA2qqz+yaR0M/pUTMV6L4BpK
	FDKZSx9UiVTfWEvMBW5jkWI6XS0zK9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-rQzn7kSaMeaASHG1XcLkvg-1; Mon, 15 Nov 2021 13:29:46 -0500
X-MC-Unique: rQzn7kSaMeaASHG1XcLkvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3BCB8042E6;
	Mon, 15 Nov 2021 18:29:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FA735C1A1;
	Mon, 15 Nov 2021 18:29:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EFB534A703;
	Mon, 15 Nov 2021 18:29:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFITbsn006285 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 13:29:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F99F51E2; Mon, 15 Nov 2021 18:29:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A33951DD
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:29:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D2C6811E78
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:29:34 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-150-fef5_8vLMhCqULsTv2x5YA-1; Mon, 15 Nov 2021 13:29:32 -0500
X-MC-Unique: fef5_8vLMhCqULsTv2x5YA-1
Received: by mail-qt1-f173.google.com with SMTP id t11so16490868qtw.3
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 10:29:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7Bz6hlqbipnEBAoYXrl5sZr675szpPfTY2BJ3CJJC3I=;
	b=vx0AWpUg0/GuaEgmjVPe3oJF8jeftC5vfXtNamQ3Rj7EfpoF39iufcWktwgIbFcjZ8
	OB/bKswvlAV9u49NeqAMOQ4qKR8ZsBHuXRsf6yGyp09+igTk0nqYizamQyticI1dIqKm
	KzBsDcz39LeO4PSxspmhUbktM3AmN3oFmElAZvaxhXjg+fjsDhYJzuDe7OP7sd0zr9IA
	3NlkQjm7gE0/bpvTqCZ+HbTT48yhSWNh+gC4QRvsm2woraUsf6cf47cjoXSfU/YIJ7OV
	rH8Pxh1dNrSPoZw1tLxhDc2uIqgwOmXVSanwckeq/5hIgyaLJwFNbCIFwxGi/H9iOIAz
	UGjg==
X-Gm-Message-State: AOAM5323NQzqRxe4pezOzixpaqcc2Ov2M7I/7By61OWVH+AFRnpmWMp8
	0TABgCTnu9aVfnNAcc0fsHEazxIJKKFbAKQR/OeQtgAg
X-Google-Smtp-Source: ABdhPJxnm08MzUtuvct5xlknSDQU8zkzRPUSzb3kfrqvDfbRSVj4Y/kPq8fo2lij13teYZG5mUWALtNv0kLEj0h0mis=
X-Received: by 2002:a05:622a:18e:: with SMTP id
	s14mr1122182qtw.203.1637000972067; 
	Mon, 15 Nov 2021 10:29:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Mon, 15 Nov 2021 10:29:31
	-0800 (PST)
In-Reply-To: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
Date: Mon, 15 Nov 2021 18:29:31 +0000
Message-ID: <CAO2sX30OqNuxkiZ+wUaONt=XiWkGCdzT4HfwUzWYYmENsBbrew@mail.gmail.com>
Subject: Re: Gui vs. cli software
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I generally gravitate towards CLI applications as I often feel like
GUIs just get in the way and massively bloat the size of an
application, and if I could find a text-only web browser I found
anywhere near as usable as firefox is with Orca, I'd ditch the GUI
entirely.

That said, CLI isn't for everyone and often times, using a GUI versus
using a CLI requires very different mindsets, so which is better for a
given user comes down to that user.

The nice thing about Linux is that, for most things, you have a choice
between a GUI way of doing things and a CLI way of doing things for
any given task, and often several ways on both sides, and switching
between the two is almost trivial, and as a general rule, Linux
doesn't try to rail road you into a particular way of doing things...
and if a distro does try to take choice away, you can just try a
different distro.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

