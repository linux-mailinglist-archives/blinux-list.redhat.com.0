Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDE14605E4
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 12:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638098770;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w2ECj8qM3O/IK1TUkkj3X/6ipB4g8GQokKn1LD1GIYQ=;
	b=W9MyJUGbEAe32QOxB7YoNdPevh3aw76EtLi+KLp2i0xDQY8Bl14Ml5dF0upot3vHTrRa+w
	1YgcVg7WeFub3xQIoo9B26APGG/qkZB08cDEyCngbh5WtzvMFDulxoO5aC5M47y1qaz24w
	vJi1ppf7cckt4hPlqt8U2jMUA8cfLGI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-169-xyRDCwkjOe6JpgeIl7H58g-1; Sun, 28 Nov 2021 06:26:06 -0500
X-MC-Unique: xyRDCwkjOe6JpgeIl7H58g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C795980573B;
	Sun, 28 Nov 2021 11:26:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B1E95D9DE;
	Sun, 28 Nov 2021 11:26:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06D8A1809C89;
	Sun, 28 Nov 2021 11:25:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASBPkVA016281 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 06:25:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 00492C08F3B; Sun, 28 Nov 2021 11:25:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF9CAC08F26
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 11:25:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8EF5811E76
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 11:25:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-206-yZbcKlSFNhKQqgri2dAfOw-1; Sun, 28 Nov 2021 06:25:44 -0500
X-MC-Unique: yZbcKlSFNhKQqgri2dAfOw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J25kv4vP7z48Zd
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 06:25:43 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J25kv4THpzcbc; Sun, 28 Nov 2021 06:25:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J25kv4996zcbP
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 06:25:43 -0500 (EST)
Date: Sun, 28 Nov 2021 06:25:43 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Teamtalk on either Fedora or Slint?
In-Reply-To: <3068e201-6f85-6a93-cac3-2ab66b00d2c7@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111280624130.4366@panix1.panix.com>
References: <3068e201-6f85-6a93-cac3-2ab66b00d2c7@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

not yet on slint.  Could be that happens once version of slint goes to
15.0 though.  Team-viewer and teamspeak are available though.
netatalk is also available which is supposed to work with macintosh
computers though.


On Sun, 28 Nov 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I am just curious, is there a teamtalk client for Linux, and if so, how
> accessible is the thing? I know if you are in Windows, you have to install an
> accessible version of the client, and on the mac you can forget it.
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

