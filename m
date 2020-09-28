Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5B48527B255
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 18:47:40 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601311659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7GKoHP+KQTyx/vPjAgzyI9LguyP2N8RD3VVU8liej8I=;
	b=Il/Gu+yFQ+tLWZH1i+F1BmQCQb731RlrmCcjswjHztc3KstGegQsVJX6pUKybfwMbYU0D2
	qhXBzcNToZ2B0l2sARnLbwmxEUK/scAEg8U0kR/dXq6gUF3jd9pxSZSe6lt/LeuqlgBcg0
	8LS4oUVICmTMw5bI+WjY3aZ1IHd4J/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-nDNRsi8FNGKb6eVJMEZZgw-1; Mon, 28 Sep 2020 12:47:37 -0400
X-MC-Unique: nDNRsi8FNGKb6eVJMEZZgw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3B91100C68F;
	Mon, 28 Sep 2020 16:47:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA05127BCF;
	Mon, 28 Sep 2020 16:47:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AFB3618408A0;
	Mon, 28 Sep 2020 16:47:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SGlJew025984 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 12:47:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE8E21C5BB; Mon, 28 Sep 2020 16:47:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8BCD9E77
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 16:47:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D107685829D
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 16:47:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-185-Ueu_3JZhN7WrbhSrQQ3LIQ-1; Mon, 28 Sep 2020 12:47:09 -0400
X-MC-Unique: Ueu_3JZhN7WrbhSrQQ3LIQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C0T2P36d5zdrB
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 12:47:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C0T2P2Qkbzcbc; Mon, 28 Sep 2020 12:47:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C0T2P1znRzcbV
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 12:47:09 -0400 (EDT)
Date: Mon, 28 Sep 2020 12:47:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: gentoo!
In-Reply-To: <dd3eb5a7-8e1f-b37f-5f75-bb8f56557a7d@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2009281242500.13904@panix1.panix.com>
References: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
	<5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
	<alpine.NEB.2.23.451.2009281046441.11282@panix1.panix.com>
	<dd3eb5a7-8e1f-b37f-5f75-bb8f56557a7d@gmail.com>
MIME-Version: 1.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

Two instances this mistake is in the handbook web page.  First on stage3
file and then on portage snapshot instruction extraction.
The next show stopper happens when I try to use emerge.
/etc/portage/make.conf throws an error stating invalid variable
sync-uri.
I didn't add that variable to the file though one of the steps I did may
have added it for me.

On Mon, 28 Sep 2020, Linux for blind general discussion wrote:

> Date: Mon, 28 Sep 2020 11:14:09
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: gentoo!
>
> Yes. The letters x, J and f can be in any order, but the J must indeed be
> uppercase.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

