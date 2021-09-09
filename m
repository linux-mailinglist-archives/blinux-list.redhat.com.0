Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 50CA3404605
	for <lists+blinux-list@lfdr.de>; Thu,  9 Sep 2021 09:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631171760;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wD6ZybAsp9b9NTeC910IFWNKY36+atknoP1i+h7bgJY=;
	b=P9OZEpnBdherhxD8FPWUonCknQvROe3d48CLYtIzn7eo2NBHa4HKoD0K0sPejMVQwzjvf0
	ZAKCMZv6hgE1EjFm2RvGwX/5Q5I8Ob7H0WHinsFwKdgg2jGKvzErN+mzSObWVA8kXrhkul
	o83i0QiIOfjSUKVO7SOvXuUrhPQ/b/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-ZtsBeylOOXC_NS0GUV4_1A-1; Thu, 09 Sep 2021 03:15:58 -0400
X-MC-Unique: ZtsBeylOOXC_NS0GUV4_1A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C2D6824FA8;
	Thu,  9 Sep 2021 07:15:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5834E26DEC;
	Thu,  9 Sep 2021 07:15:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EBF81801241;
	Thu,  9 Sep 2021 07:15:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1897CS0l020895 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Sep 2021 03:12:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E6A6C10D14FF; Thu,  9 Sep 2021 07:12:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1C30101B890
	for <blinux-list@redhat.com>; Thu,  9 Sep 2021 07:12:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 998E9811E78
	for <blinux-list@redhat.com>; Thu,  9 Sep 2021 07:12:24 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
	[209.85.222.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-Rk4ekSpKPhmviSyDVKue5w-1; Thu, 09 Sep 2021 03:12:22 -0400
X-MC-Unique: Rk4ekSpKPhmviSyDVKue5w-1
Received: by mail-ua1-f42.google.com with SMTP id x21so442531uan.6
	for <blinux-list@redhat.com>; Thu, 09 Sep 2021 00:12:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=oMDyEz+ZDigVUcuhUyre5+OYsOUNCkQIolYPjLWY15Q=;
	b=F/KNr3T7i7t9NdA/oYCNw1+il9hogDfsRM9ZOdZpPb/Wuvhr4Upl3ywoahfG3mpqlV
	Ve4+jhxNC/hNdR7pMOwZMEI3xA47zHXOp2c+L1evspOPgOkvKAEfB2iopcLIjRRcMqxE
	CyUac9PX4UL5b32GA+UBAFgzA04Sch6g56m9ICoVs3Vqiqu3uvi0cq5Qryx8QQpeC0Wt
	O5KhUEcWu5JROn4w0I9ko5HJMAPI2ork8v23+CZYGf7LHA2JzxpkE7jglsV8/1LlZjtQ
	8yUq43fWDBOrdK1TMJMD5PuRAHsibpsT3I3yyDvN3sj+7Yi5Yte+iNIll1xzXlTSIHbU
	hy2Q==
X-Gm-Message-State: AOAM532Hk6zgrXY6m/7qLgL9+PRUDOdp8xhM/FDqX+C7Svbib9M/S+8C
	Z8/I8ODk0m5hK9tMJHAvfERTdwG/nlrH0XWsufvgwjWj1lcWCQ==
X-Google-Smtp-Source: ABdhPJw9jr+AJosJbxBsJ215f1QkXRw7GJnDrHUKmmYJztg3IkJ9IiYShyBG9jQ/VYh8tRp0b9S+BcHRvAqNXaZbSaQ=
X-Received: by 2002:ab0:60d8:: with SMTP id g24mr662525uam.110.1631171541388; 
	Thu, 09 Sep 2021 00:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210909.070308.340.1@192.168.1.100>
In-Reply-To: <20210909.070308.340.1@192.168.1.100>
Date: Thu, 9 Sep 2021 09:12:12 +0200
Message-ID: <CAPo=n-8WB_-_igGBzHCQmFAb3=R+G-q8-s0c=0SoQvx1Xq99fg@mail.gmail.com>
Subject: Re: TUI player that save position
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you quit mpv with "Q" (that is, capital q), it will save your position
for that file specification and directory context. For example, if you
start mpv with "mpv *" in some directory, quit it with "Q", and later go to
the same directory and start it with "mpv *" again, it will play from the
last heard position in the last played file.

HTH,

Rynhardt

On Thu, 09 Sep 2021, 09:04 Linux for blind general discussion, <
blinux-list@redhat.com> wrote:

> Is there a terminal-based media player that saves your position as, for
> example, when playing movies or audio books in one file? Perhaps a flag in
> mpv that will save position on exit?
> Thanks.
>
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

