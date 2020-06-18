Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id F13481FDA8B
	for <lists+blinux-list@lfdr.de>; Thu, 18 Jun 2020 02:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592441279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C5+U9k9/EVqkqVAMZVXqBVFIreMtxi4Jqvi1LJxY41s=;
	b=MgW6COpqz5bSh6RzGmtyhdaznb0KQB62qrR9P94pMxq1KcxBN6DiIk2bqQ9dQbsYi2YZNa
	KssB2r8/ZBP4nxDzzWv39t0+s9bgpxMzAdzMJYIvuo2wEuv4cokdEeQY04fJ6Md2cPhj1S
	VcFMCDEQHG0ZEDY5ht8Rq8QcBTJKyY4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-dU1GfMUIOkOLil1a1rk2EQ-1; Wed, 17 Jun 2020 20:47:57 -0400
X-MC-Unique: dU1GfMUIOkOLil1a1rk2EQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0146DA0BDA;
	Thu, 18 Jun 2020 00:47:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E29510013D6;
	Thu, 18 Jun 2020 00:47:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02A4D833CD;
	Thu, 18 Jun 2020 00:47:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05I0lVJo029513 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Jun 2020 20:47:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 98D9AF102C; Thu, 18 Jun 2020 00:47:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94904EE847
	for <blinux-list@redhat.com>; Thu, 18 Jun 2020 00:47:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6C52101A526
	for <blinux-list@redhat.com>; Thu, 18 Jun 2020 00:47:28 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-474-GFAW7BdvMWieeQygQr_YbA-1; Wed, 17 Jun 2020 20:47:25 -0400
X-MC-Unique: GFAW7BdvMWieeQygQr_YbA-1
Received: by mail-ot1-f43.google.com with SMTP id g5so3204041otg.6
	for <blinux-list@redhat.com>; Wed, 17 Jun 2020 17:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=64i/bkK8ZIO4x+L5xZ9bx+waSlVPJZ9DhMPRGkJ1yy8=;
	b=NuxcG2YjQ/kOtxixYz6E1iACvLmzI4ZKz4XUYd82Y0dFPw3sjTcLVvtTHkoprUmkpQ
	F1eqBb9SR93khdzH7G3/sTDgIyiFRt+XNqNT7aP1B0lnUB90mxrjqNrexi4/IifJ2IVB
	GXmPN+xFk18iXLU08yieYorHJ1ugM8nJQBeXKKu+J4n/tBXsVV+Nay4i8nHhvYaBatFK
	8wHPnRId0DajMHZ9pC9+JvQOwZjDOS2+RGtd8D5orMIZmmtt8nlm4OcsXU8ZoJCUU1cl
	kKPqyUpGK6jrAcaiYAuer4JiULfFOa5gTR5/OEOh2vkHj1wPt6jDS6/bMl5yuuTAbWtj
	oAsw==
X-Gm-Message-State: AOAM532KV5fFXlQTqbKsj2cmC7/CYkM4gI6xAbBXR0o49POvHX8o3IxX
	SSEVSagWiDn9RoKOxaeWYOCWYVYmINfNjN2lc/Cieqjc
X-Google-Smtp-Source: ABdhPJws8JzkvDblCCdyWQqZaOhYEa5hBe2bnO4gqo1ubHghpcbIsWaB71tknXfQFLOKuUJez6y3/YgSx2+Uat262pk=
X-Received: by 2002:a05:6830:17d0:: with SMTP id
	p16mr1407957ota.148.1592441244758; 
	Wed, 17 Jun 2020 17:47:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:12d6:0:0:0:0:0 with HTTP; Wed, 17 Jun 2020 17:47:24
	-0700 (PDT)
In-Reply-To: <be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
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
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<CAO2sX31RY2cas9Bg6sURkAWAuLvohJ6TBux4SE-NxAmaMuVPqg@mail.gmail.com>
	<be1b173c-19e7-fe1f-d6a2-d7ecf3f264cf@gmail.com>
Date: Wed, 17 Jun 2020 19:47:24 -0500
Message-ID: <CABKqQvHEVRfF-o3tWKBr9sEF2eLcVi8Lv1HC0j0=qbZ0hJf4pg@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have the latest version of Stormux set up. When I start it, I get no
response from the keyboard until I press Control-Alt-F1. I basically
have Fenrir and the terminal and that's it.

Amanda

On 6/16/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> At one point, there was a kit available that would turn a Raspberry Pi
> into a laptop. I wonder if this is still a thing. As for running Linux
> on the Pi though, I would recommend Stormux
>
> https://stormux.org/
>
> On the Pi4, it runs a complete MATE desktop, using the Orca screen
> reader and RHVoice for speech. I believe Fenrir is also included and
> working if you just want text mode.
>
> ~Kyle
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

