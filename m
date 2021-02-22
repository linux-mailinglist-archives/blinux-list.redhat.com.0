Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A12433221BB
	for <lists+blinux-list@lfdr.de>; Mon, 22 Feb 2021 22:48:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614030482;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VXXSAoAm17xPOeRAmJE6AL9cg72Id0o7YWNRVpNCPo4=;
	b=MJ499NRB3Omfeo6WHNJ4OB5D4PcuoCoNZ3a2eZg541thv/U4sohzOB5cXC+F92mQftBKM4
	GSQ9YGs7Or5CWNi5CzQABKmndwV6/04Z7frU1vkyp5VdlpX9ev96qq07wHbqEpJ691OgDu
	wlEbLjee1yxKOVrmrY66bSdBtOIuXzA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-F56kPe-8M8GUeCnWHu8XwQ-1; Mon, 22 Feb 2021 16:47:59 -0500
X-MC-Unique: F56kPe-8M8GUeCnWHu8XwQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DA2C8B155B;
	Mon, 22 Feb 2021 21:44:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F13745D9D3;
	Mon, 22 Feb 2021 21:44:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 380EC18095C7;
	Mon, 22 Feb 2021 21:43:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MLhhvx018115 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 16:43:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2FB141D0B0; Mon, 22 Feb 2021 21:43:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A85EEE86C
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 21:43:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE990100AFE5
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 21:43:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-182-qje3X4pSPoqpc9I60zxNvw-1; Mon, 22 Feb 2021 16:43:38 -0500
X-MC-Unique: qje3X4pSPoqpc9I60zxNvw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Dkwff0l8Vz1gLM
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 16:43:38 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Dkwff00NSzcbc; Mon, 22 Feb 2021 16:43:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Dkwfd6nNlzcbV
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 16:43:37 -0500 (EST)
Date: Mon, 22 Feb 2021 16:43:37 -0500
To: blinux-list@redhat.com
Subject: curl vs. wget
Message-ID: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
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

Has curl got any speed advantage for large file downloads compared to 
wget?
I know about axel and want to leave axel out of this comparison since some
web sites block axel though for large files when axel can be used it's 
well worth the time savings.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

