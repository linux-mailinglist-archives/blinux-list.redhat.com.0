Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 765AF3BE188
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 05:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625628616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FiIDC1oTQByyofY3O7Lm5mW5uuyl0/chYWAQTnzVL2o=;
	b=PLiDlg0zCTw6X21f9+ZpZ47GgWO9x2OrdgO7HuG2czHE9vbxZXQJLrw3Lzj5xZQ5xODZws
	6clrM5Dm5OchuW7Q0h+kz+0dbcci67NWLDJrP5Y6oSWrBiot9qvspPvct62+jl0lHfy4rW
	sCiOIOjdnbobXfXA49ZUREnqoIo8rjs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-2AWB2UiIPFK-yF0K98z9qw-1; Tue, 06 Jul 2021 23:30:14 -0400
X-MC-Unique: 2AWB2UiIPFK-yF0K98z9qw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80871102CB73;
	Wed,  7 Jul 2021 03:30:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 674F160CCC;
	Wed,  7 Jul 2021 03:30:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2C7B71809C9A;
	Wed,  7 Jul 2021 03:30:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1673U8pB014384 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Jul 2021 23:30:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8354F10087FA; Wed,  7 Jul 2021 03:30:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F32010087F8
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:30:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB43080270A
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:30:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-61-B8folFMlPB6U3B1VPl3W0g-1; Tue, 06 Jul 2021 23:26:09 -0400
X-MC-Unique: B8folFMlPB6U3B1VPl3W0g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKPw12PQpzQ3t
	for <blinux-list@redhat.com>; Tue,  6 Jul 2021 23:26:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKPw11QMXzcbc; Tue,  6 Jul 2021 23:26:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKPw10yLhzcbP
	for <blinux-list@redhat.com>; Tue,  6 Jul 2021 23:26:09 -0400 (EDT)
Date: Tue, 6 Jul 2021 23:26:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Linux laptop
In-Reply-To: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
Message-ID: <alpine.NEB.2.23.451.2107062324320.29659@panix1.panix.com>
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
	<693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
	<c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When I want a backspace beep, as root I run modprobe pcspkr if the
hardware has a pc speaker.  With only a sound card, I have no idea what
could be done in that situation.


On Tue, 6 Jul 2021, Linux for blind general discussion wrote:

> Are these machines already loaded with Linux? I tried a system76 distro, but
> found it was a real challenge getting a back space beep to work in a console
> in TCSH. Also, at that time when we upgraded to kernel 5.11 I lost speakup,
> but now its some months later, so maybe you would have better luck.
> Chime
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

