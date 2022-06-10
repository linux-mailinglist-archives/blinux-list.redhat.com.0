Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A58E0546963
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jun 2022 17:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654874979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VPOyfdsh3/GbPaiqFd8t07AfJYXbIzEKjNbo/cMC04c=;
	b=DVvvyhB5HFgSH6rLEP2NkBey3u5sG2XhkGnyyTX9H0i0TJ3bLxdCotdmDEbsGL/aYP8GBR
	5uObAyr3WhlNBEQwC8NFgEUCO0h8Zma27GARx8+YQOVzUwjDwP98UvKe33aYvcYNyFu1eL
	i8DEb497XbbCbeIEJjHz96u4Ntu9Hko=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-uGCuPxeeNGOUygwwsxtL1w-1; Fri, 10 Jun 2022 11:29:36 -0400
X-MC-Unique: uGCuPxeeNGOUygwwsxtL1w-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DDD1185A79C;
	Fri, 10 Jun 2022 15:29:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 92B09492CA3;
	Fri, 10 Jun 2022 15:29:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DC53B1947054;
	Fri, 10 Jun 2022 15:29:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.23757.1654870523.111204.blinux-list@redhat.com>
References: <mailman.23757.1654870523.111204.blinux-list@redhat.com>
Date: Fri, 10 Jun 2022 15:29:23 +0000
Subject: Re: Buying from System76 or Slimbook?
To: blinux-list@redhat.com
Message-ID: <mailman.23701.1654874966.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Considering that Secure Boot appears to be an anti-Linux measure
Microsoft sold to the ignorant masses as a security feature, I think
the better question is whether any Linux-friendly vendors ship systems
that have it disabled by default and with a boot order configuration
that's ready for installing whichever flavor of Linux you prefer?

I don't have new Desktop money, but if I did, the ideal would be if I
could unbox the new tower, plug in my keyboard, earphones, and
ethernet, pop an installation CD/DVD in the optical drive and be ready
to install my preferred distro on first boot instead of having to get
hold of a monitor I don't need and put up with the frustration of
walking someone less tech savvy through disabling secure boot and
fixing the boot order or tracking down a sighted person who actually
knows enough to be a proper assistant.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

