Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0835FDBF6
	for <lists+blinux-list@lfdr.de>; Thu, 13 Oct 2022 16:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665669874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SxJABOSqvDebcmjLPz2bHsQZ7Pb2X0f5xV7IjfesS8U=;
	b=QXqQ17RrYxmTKoW1uNfLqQv7UJjY4NsxeV/NeQUMAWLyu4Z6pDivpoSpPXgr8OowWeL2pK
	GRpRGjZDaFPYkFcuuTR2JqKO0mqXOmLcqc8i++uKTomFQ9EESGflpeALTFaJVyRUnqCKnP
	jvbwhpLDZdgnB8zrKnvDEC/lHvalNv0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-1HqruUuTO8ePxXOTxz7dzg-1; Thu, 13 Oct 2022 10:04:30 -0400
X-MC-Unique: 1HqruUuTO8ePxXOTxz7dzg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C5871C0BC6B;
	Thu, 13 Oct 2022 14:04:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 09550492B05;
	Thu, 13 Oct 2022 14:04:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C2C7619465A3;
	Thu, 13 Oct 2022 14:04:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Oct 2022 14:03:41 +0000
To: blinux-list@redhat.com
Subject: Re: New user question
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
 <mailman.33.1665650190.3007.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.33.1665650190.3007.blinux-list@redhat.com>
Message-ID: <mailman.54.1665669852.3011.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  As mentioned here, as a headless server, all the access-tech
would be on your local end, so as long as you have an SSH connection,
the rest doesn't matter much.  So I'd pick the server operating
system based on how easy it is to administer, and how easy it is                                                                                                                                                                   to fix things when they go wrong.  Thus, I'd tend to lean towards
a Linux distro that favors stability (like Debian or CentOS) over
bleeding-edge distros.

So what might matter the most is the accessibility of the admin-panel
for your hosting service.  I.e., how accessible is Vultr's admin
panel, and can you use the remote console accessibly?  Because
sometimes I've had to boot into a rescue environment via the web
(usually some sort of VNC under the hood) which isn't very accessible.

That said, I've moved all my VPS instances over to running OpenBSD
and FreeBSD, but I still administer them primarily over SSH, the
same as I used to do with my Linux servers.

-Tim

> In headless mode, the distro that you will pick is not relevent as you
> will do everything from the CLI!

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

