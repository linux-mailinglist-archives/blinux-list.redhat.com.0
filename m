Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7E43EDC83
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 19:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629135556;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Df7TN+IuMV6RUAJS0nTbH3sKGMnxAp8BY3I7MeH0OIw=;
	b=B+yt0bGtmcLjO4N4gzt7ujrDvHhz3dVaW9oNf83hY1KoQh79BmrPnKvo2r02UbkMRQxuCH
	kRmwSgUGSfAC1ttEAM9C9Kyv/CEFfscZNesvs+sZlQ+7Zi+0zlQ9ihpN4EiiJWFstXU7Y8
	tExyQPB9ApOHms9h7EHibdta/LaKjY0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-06a59rMmO06rqA1ILLDkXQ-1; Mon, 16 Aug 2021 13:39:13 -0400
X-MC-Unique: 06a59rMmO06rqA1ILLDkXQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D65C1F2DA;
	Mon, 16 Aug 2021 17:39:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5D7119C46;
	Mon, 16 Aug 2021 17:39:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BECDD4BB7C;
	Mon, 16 Aug 2021 17:39:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GHd38Y003371 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 13:39:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30CC1AEC83; Mon, 16 Aug 2021 17:39:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C069AB401
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 17:39:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7445D101A54C
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 17:39:00 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-414-5hSZn8sIPSij-LjpFVxaXA-1; Mon, 16 Aug 2021 13:38:58 -0400
X-MC-Unique: 5hSZn8sIPSij-LjpFVxaXA-1
Received: by mail-lf1-f43.google.com with SMTP id w20so36037243lfu.7
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 10:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=1gxs0W6rVay4v4r6t+CezUaqqay5M9fzqWuIOiPZK5k=;
	b=TEfQp6OrS0yaH5Dsnem71UbR1Pbru86Iv6ORV6TwByVxB+1AugzY4Wh8TJtrIRGQoq
	O7OpxjNoClwba/q0dU+/VOLM1yZr3rWW/OK2TDdzlgCbHYUtmRPzzibnnFBE4GF4P1bU
	G+LWdl8uw6XGvOaOWwG9aSkU1sSDWu2CncEStRK/Qe5/CC7W/nwnb5H7MXU5O2b3F+3w
	LtFemVYie3b1AYGVdGU7/ZkH0+od9btSmPDOF0frqjoa/FKbexVloWr5+Q+Hpfko6SRH
	JhxOZ8VQMZrXGyvA7rvywo4ptVa2RLGhc2FTb4Blp2yKOTwSuW4Oy65KAtmZRz6ZHK/m
	EL2g==
X-Gm-Message-State: AOAM5322vN2W87B9mUoM9vzAuAcG5d7LpCqdHHUeRsAei+HSOdwuUBlS
	2izwbY5gIIku7Dfl6APTJhpUPlWb99c=
X-Google-Smtp-Source: ABdhPJyW5YwgtL++xi+htChEbBHkP7sh1EbiMYtso1b9uiAyx0oEXJ0tarc3GpX/UkO2enRextQF2g==
X-Received: by 2002:ac2:5326:: with SMTP id f6mr10482718lfh.131.1629135536643; 
	Mon, 16 Aug 2021 10:38:56 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	y17sm1003157lfh.246.2021.08.16.10.38.56 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 16 Aug 2021 10:38:56 -0700 (PDT)
Date: Mon, 16 Aug 2021 20:38:55 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to make brltty start at boot?
Message-ID: <20210816173855.kgq7yge4lfv2eik2@alex-pc>
References: <0c95938c-58d5-68c8-13e8-46188a282fba@gmail.com>
MIME-Version: 1.0
In-Reply-To: <0c95938c-58d5-68c8-13e8-46188a282fba@gmail.com>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Aug 15, 2021 at 04:53:57PM +0200, Linux for blind general discussion wrote:
> Hi all,
>
> I find that my BRLTTY does not start at system boot, is there anything I can
> do to make it do so? I know that if you have a display connected, it will do
> so, however, I don't always have the display connected to the Linux machine,
> mainly because I also have a MacBook, and only one display.

I'm curious, why would you want to run brltty without a connected display?

> If anyone can help, thanks so long.

you need to do several things.
1. if you don't wante to start brltty  at desplay connection.
  you need to mask[1] brltty@.service
2. you need to enable your desplay in etc/brltty.conf
3. and then enable and start brltty.path unit.

[1]: https://wiki.archlinux.org/title/Systemd#Using_units

> --
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my arch powered ice cream toaster

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

