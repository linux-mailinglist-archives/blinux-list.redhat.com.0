Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD6B758763
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 23:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689716590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Je3SXSYEOY/AvR2aijVq3ZCDs2ZQnbCt6zhFJ4Hz+yo=;
	b=XGl9liNNqmh8QbyRnzGbV3E6xLdiIEmDzmxFhni788aq9KvGreRH46QzU8cZIWu6szYcy4
	RldyLY8PWa+0Szp34LAjU5KdIg6PnXhFn0H+5QOcdUyv+UwkglBh7aIgaNoU+vChbhjK3b
	rPq4Dd8F6Kp7Lw/QqzCm43fbKQ9jmxs=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-166-uxCjWmy1P2CGjEmhFVRxTw-1; Tue, 18 Jul 2023 17:43:08 -0400
X-MC-Unique: uxCjWmy1P2CGjEmhFVRxTw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6AA43815EED;
	Tue, 18 Jul 2023 21:43:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 61472492B01;
	Tue, 18 Jul 2023 21:43:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC52F19465A3;
	Tue, 18 Jul 2023 21:43:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 17:43:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console E-mail client for my need
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.489.1689716021.687810.blinux-list@redhat.com>
Message-ID: <mailman.489.1689716584.687812.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use mutt with speakup, and it works very well.
But yes, that's after tweaking, configuring, and adding some support scripts.

On Tue, Jul 18, 2023 at 06:05:10PM -0300, Linux for blind general discussion wrote:
> Hi, I'm setting up an environment on my new Gentoo installation. I'm
> thinking of setting up an e-mail client at the console rather than a desktop
> client like Thunderbird, because console programs tend to be more performant
> and stable. On the other hand, I prefer text reading on desktop programs, as
> there are more convenient commands, e.g. the famous continuous reading
> command found in Orca. Thus, I thought of choosing a console client that
> allows me to open a text editor like leafpad to read plain text e-mail
> messages, and open a browser like Firefox to read html messages.
> 
> Upon searching, there appears to be only a few console clients still
> maintained, namely Mutt, neoMutt and sup. Sup is curses based, but NeoMutt
> seems the most active, though it probably requires a lot of time and
> patience to configure properly, as it doesn't have any interactive settings
> wizard; one needs to carefully read and change files manually.
> 
> Can someone say if it's worth trying? If so, what screen reader works better
> with it: fenrir, orca or speakup? Am I missing any other good client?
> 
> Thanks,
> Cleverson
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Europan Dance, at https://www.scifishorts.co/authors/rudy-vener

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

