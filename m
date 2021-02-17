Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7063A31DCF9
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613578342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bLifOsYaO4iM9vvGVd500tDGrye0CFCYo84o9PLm4ys=;
	b=GPy04dk0NRbHM6b6AETgA2hhBHsagzu4sKRQLxFHPXWKWhKOYbyQivbkeO+oh0LwKUhWzr
	LI7X4wVMLCZYVVQr/6IkS6Y1unMV+7DLErrSv4EWfoLMgkWKSDMczSnLDQ+kCW1jO34T2o
	sfEX2QklhTcTiMsoBOwLOS4lYP0AD9M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-pz_Kv0UxPD-AK3cefm177A-1; Wed, 17 Feb 2021 11:12:20 -0500
X-MC-Unique: pz_Kv0UxPD-AK3cefm177A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52477801979;
	Wed, 17 Feb 2021 16:12:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EE0E5D9D2;
	Wed, 17 Feb 2021 16:12:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99E4018095CA;
	Wed, 17 Feb 2021 16:12:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGBxD4026079 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:11:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3341E20CA48A; Wed, 17 Feb 2021 16:11:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E56820CA486
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:11:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0184C185A7BC
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:11:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-573-T9IvwyLOPtyHkaDDqFVCpg-1; Wed, 17 Feb 2021 11:11:54 -0500
X-MC-Unique: T9IvwyLOPtyHkaDDqFVCpg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DgjXB0qQ2z1T1H;
	Wed, 17 Feb 2021 11:11:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DgjXB1cn9zcbc; Wed, 17 Feb 2021 11:11:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DgjXB1R61zcbW;
	Wed, 17 Feb 2021 11:11:54 -0500 (EST)
Date: Wed, 17 Feb 2021 11:11:54 -0500
To: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
Subject: Re: Is this possible?
In-Reply-To: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
MIME-Version: 1.0
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

shellworld.net is running ubuntu, so that ought to be possible unless 
misconfigured.


On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> Hi folks,
> Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu for 
> example?
> Karen
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@listman.redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

