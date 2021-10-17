Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7F35D430A42
	for <lists+blinux-list@lfdr.de>; Sun, 17 Oct 2021 17:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634485065;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XEOF6LJx0mpPo6OhUyUw+/zz7lwRJQk3AK2Fzbjc4aY=;
	b=Cu613tpA+qLc5Y9YCxbDCry6N9kEPK9UMWlq2l44GUuYbqi/VGHRCv9WtMZ//qbZMmzt4Q
	1gg4mlFUfrs47csf/YYDzqm+pyOju+cRQy2QRWginTKNGiJyh/bZa7Qp64kiUJHdEhqs+N
	OIAePjWs7H8qgBkqoAoDKNeyloVWp0w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-3UcrZeAhOXab8pqpJkKQtw-1; Sun, 17 Oct 2021 11:37:42 -0400
X-MC-Unique: 3UcrZeAhOXab8pqpJkKQtw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08B1310A8E00;
	Sun, 17 Oct 2021 15:37:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E0F5B8543;
	Sun, 17 Oct 2021 15:37:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 201154A703;
	Sun, 17 Oct 2021 15:37:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19HFZ2OC028709 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 Oct 2021 11:35:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4925E2166B26; Sun, 17 Oct 2021 15:35:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4296E2166B25
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 15:34:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70EF21066558
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 15:34:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-51-CvqLguXHMiGOI5yLkNR3Ow-1; Sun, 17 Oct 2021 11:34:57 -0400
X-MC-Unique: CvqLguXHMiGOI5yLkNR3Ow-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HXPFs1tkzz47fX
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 11:34:57 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HXPFs11HMzcbc; Sun, 17 Oct 2021 11:34:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HXPFs0TSszcbW
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 11:34:57 -0400 (EDT)
Date: Sun, 17 Oct 2021 11:34:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: PinePhone Pro $399 Linux Smartphone Launches
In-Reply-To: <C0B50FAB-8C6E-4232-A846-1663CEAAE93F@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110171133390.6477@panix1.panix.com>
References: <C0B50FAB-8C6E-4232-A846-1663CEAAE93F@gmail.com>
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

smartnews is blocked in Turky and perhaps other countries.  I have a
contact in Turky who cannot open any smartnews urls so I know about this
first hand.


On Sun, 17 Oct 2021, Linux for blind general discussion wrote:

> Open SmartNews and read "PinePhone Pro $399 Linux Smartphone Launches" here: https://share.smartnews.com/dG4a3
>
> To read it on the web, tap here: https://share.smartnews.com/6KzU4
>
> ???
> SmartNews
> https://www.smartnews.com
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

