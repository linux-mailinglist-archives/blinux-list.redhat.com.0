Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 45D6F29A6A9
	for <lists+blinux-list@lfdr.de>; Tue, 27 Oct 2020 09:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603787667;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R1lQZR62GWl7IQNGC54UUPZ+8XVnuuxjFzknQOoPf4Y=;
	b=VgxmdD+8Q0hvSuz4xsDdJVTpvVVVjCOjFZA7gcSxlnluFoRW6TCZZdc+9QiqVXG1eKc591
	EfIE/y/MHVpoex0qPD/SM50AwD/m1uUKzKch/ul/eSxhXZ1zWGdRq7j3OMjj/AVcEY2pR/
	yasnfh4pm0FDZ5EkRYBFE1tjG6SSJZg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-67wxbjECNMWfvke-q0Y5Lg-1; Tue, 27 Oct 2020 04:34:25 -0400
X-MC-Unique: 67wxbjECNMWfvke-q0Y5Lg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A574964085;
	Tue, 27 Oct 2020 08:34:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6609662A0B;
	Tue, 27 Oct 2020 08:34:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8830B1832FB5;
	Tue, 27 Oct 2020 08:34:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09R8PuHf018210 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Oct 2020 04:25:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 030212166B27; Tue, 27 Oct 2020 08:25:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F289A2156A36
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 08:25:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C8FB8007A4
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 08:25:53 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-290-Ud6-nzmTPfGgRp613ke38A-1; Tue, 27 Oct 2020 04:25:51 -0400
X-MC-Unique: Ud6-nzmTPfGgRp613ke38A-1
Received: by mail-qt1-f178.google.com with SMTP id h12so390373qtc.9
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 01:25:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=OlDnM77tJ0hqihkGm9OgOL52h0M0vkpi+XXN+GFbbK4=;
	b=QZ/8uY2qMiAwBrvS6A0z1idrzckQo194JOZBBJ15JXYnMO5l4C98BbcyAGggRn5T6q
	T/cj6gyPP7ouTDLbPmBW7//oiq6pDB6KVIeBvkoWKRValyR4sSKWztPdn98yltuRNC3n
	J7rSu4JVaZRR9rhkNReUwsPHAEI5K+dI7RYAFT/7ciiuqL8rysutlGQn6CekJ4h2E8/X
	Y2jEzDrXlR61MdDVFiMJ0v0H44QiiRb2ENSx4e0acUxDtbumReZzVP40JwA0xYz11RWK
	a/Kc/ZXVADIZjXM4cT/JV52LRSw7hfJgP2bX3UcewtkjfwCwQuhTC4fCXEoXKpMX0Ymc
	6Ifw==
X-Gm-Message-State: AOAM533Dz9ioXXW0sY6ImvSd53nAB2929zJ8nBtnY4l1mXEeXuLpSfle
	p0p2F8eZLnaM8nHvwXN0lpAuU/r6snC6twDCClzLVQ/B7Bo=
X-Google-Smtp-Source: ABdhPJxnNZbnNeg2cR9kUvGTnfB/g469alWDeFvj4ArjYhCIouyOX6c+PkrINMqPRMyQSrrY8dIkFy7a8yGsW3qbHiM=
X-Received: by 2002:ac8:12cd:: with SMTP id b13mr937276qtj.257.1603787150576; 
	Tue, 27 Oct 2020 01:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <07C9A138-5900-4138-9663-B659A1DC7D74.ref@yahoo.com>
	<07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
	<5c169b90-14b6-62cf-f898-79fc149eee6b@crosslink.net>
	<Pine.LNX.4.64.2010262224160.308363@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2010262224160.308363@server2.shellworld.net>
Date: Tue, 27 Oct 2020 01:25:39 -0700
Message-ID: <CAJ1g4g-wgzCGf=zf6V5077YcAF48HPxjPYFC8rKYkY9xwSsYhw@mail.gmail.com>
Subject: Re: the brave browser?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 26, 2020 at 7:33 PM Linux for blind general discussion
<blinux-list@redhat.com> wrote:
>
> Hi folks,
> Came across a reference to  this fairly new tool.
> www.brave.com
> I hope laughs.
> In any case, the Brave browser is an opensource tool which I understand is
> inclusive for some in other platforms.  Wondering if anyone has tried the
> Linux editions?

I did briefly, a few months ago.

It's a fork of the Chromium browser, i.e., the open source
infrastructure used in Google Chrome and Microsoft Edge. It was still
immature when I tried it. I decided to come back to it in a year or
so.

Sorry for that accidental Send hit.

Best regards,

Paul

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

