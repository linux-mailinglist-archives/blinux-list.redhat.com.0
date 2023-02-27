Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C990A6A420A
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 13:52:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677502353;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vdkn+HDGwHbscP3fCeVwf1eX+6RKdopzmKRCFvAX7y8=;
	b=OGP5LkVSPOaPAcSAl8VlCsRBQ7KkGJ90/YMrI1Wf5J3IT7DlEx9SQ7aUj/rXOjGRA3hLHX
	8WE7dbgfw/vS2/Pt7OhJn4TQ7rw+z6aXVSPqIc9ogBiX0193O5IFnJJBJL0HIvxXqBuIKS
	0PijWe3Pj9lg/2zYAp2jILcT6TlbOyg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-283-sSJ380KPOB-PnuAj739zkw-1; Mon, 27 Feb 2023 07:52:32 -0500
X-MC-Unique: sSJ380KPOB-PnuAj739zkw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7930518F0246;
	Mon, 27 Feb 2023 12:52:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CD8FD492B0F;
	Mon, 27 Feb 2023 12:52:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 295EB19465A2;
	Mon, 27 Feb 2023 12:52:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Feb 2023 07:52:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup or fenrir on fedora
In-Reply-To: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.460.1677502348.3183651.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

pip3 install fenrirscreenreader



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 27 Feb 2023, Linux for blind general discussion wrote:

> My arch machine has fenrir.
> Is there a way to put either fenrirscreenreader or speakup on to a fedora system?
> The speakup page might need updating.
> When I use the shell, for now I use t d s r.
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

