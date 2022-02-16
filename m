Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D2E4B8DDE
	for <lists+blinux-list@lfdr.de>; Wed, 16 Feb 2022 17:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645028632;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MI9dGbxGntbkJFh/MjY55kUZtIWh0IVxOcuHFQzqc+s=;
	b=QbbABbsQOGitV74GhOtgp2phZ85lS/a6oHkxUhXzKC6JOrBu5njfSC08DQOyscX+lJbjef
	WF/3MZZa0FdFLOxLFFMhP+zjzdyoS6tlYcjgsyYepTAIcRH4pA+rc5GuKHRRidLMPsXHHk
	XtT+R/XbP7iY6+vk9w3/wVumHSP/RoM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-0k5tzdkcP-KoosHBDa5mwg-1; Wed, 16 Feb 2022 11:23:49 -0500
X-MC-Unique: 0k5tzdkcP-KoosHBDa5mwg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1747E2F25;
	Wed, 16 Feb 2022 16:23:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E5CD7B9E5;
	Wed, 16 Feb 2022 16:23:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 182171809CB9;
	Wed, 16 Feb 2022 16:23:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21GGNbx9026630 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Feb 2022 11:23:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F602145FBB0; Wed, 16 Feb 2022 16:23:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B49E145FBAF
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 16:23:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45F7A3811F2F
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 16:23:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-irjsuz6BPTyzRM1zhMWEyg-1; Wed, 16 Feb 2022 11:23:34 -0500
X-MC-Unique: irjsuz6BPTyzRM1zhMWEyg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JzNYd5tYmzJpp
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 11:23:33 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JzNYd5LRkzcbc; Wed, 16 Feb 2022 11:23:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JzNYd4xC5zcbC
	for <blinux-list@redhat.com>; Wed, 16 Feb 2022 11:23:33 -0500 (EST)
Date: Wed, 16 Feb 2022 11:23:33 -0500
To: blinux-list@redhat.com
Subject: sourceforge manjaro-architect iso
Message-ID: <641cedbb-598e-5f4a-1354-88abe4a39077@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

I got this one downloaded.
Probably it won't boot talking.
If everything works as I expect,
I figure to use pacman-key --populate and pacman -syu before running
setup.
Then installing espeakup and enabling espeakup and starting espeakup
before running setup.
If I'm lucky, I'll have speech through the entire install and maybe be
able to enable it in chroot environment so I have speech after first boot.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

