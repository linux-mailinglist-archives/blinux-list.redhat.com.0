Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 28424381C45
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621136617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hIftr/EJ6heOA8JN6FASTHHDw5GbczZL8n2+9aHGDyQ=;
	b=OcQD2UjJxYmnm9giHiDCCSTKW1bC4oZ/wzyp0scf0e9OzOYv0VzRoD2aYbjxOoD2CdawhV
	k6cQa+ELazMGd87vv2pEsz7J4yeT5/6bBEL2jxjxc5me4LUh/POCPt09Kn80O/ky2rBkiX
	VPL4ZQ7XJTqBF5ugiBkPbH6HcjBMTlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-SoSWv29oMdKYl-f9ViIp6w-1; Sat, 15 May 2021 23:43:35 -0400
X-MC-Unique: SoSWv29oMdKYl-f9ViIp6w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44CC2801AE6;
	Sun, 16 May 2021 03:43:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FE6959451;
	Sun, 16 May 2021 03:43:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 069EA55344;
	Sun, 16 May 2021 03:43:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3hSDn025346 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:43:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0804F1134CA5; Sun, 16 May 2021 03:43:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 027C51134CA2
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:43:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8465101A531
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:43:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-86-TMTRvGlRMHq8JHFd8lODXQ-1; Sat, 15 May 2021 23:43:22 -0400
X-MC-Unique: TMTRvGlRMHq8JHFd8lODXQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjSlt08wZz2WVJ
	for <blinux-list@redhat.com>; Sat, 15 May 2021 23:43:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjSls6SgWzcbc; Sat, 15 May 2021 23:43:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjSls63XbzcbW
	for <blinux-list@redhat.com>; Sat, 15 May 2021 23:43:21 -0400 (EDT)
Date: Sat, 15 May 2021 23:43:21 -0400
To: blinux-list@redhat.com
Subject: ypl.sh
Message-ID: <alpine.NEB.2.23.451.2105152342150.9643@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Here's that script I wrote about earlier.  It needs youtube-dl and ffmpeg.

cut here.
#!/usr/bin/env bash
# file: ypl.sh - download youtube playlist and clean filenames
playlist=""
youtube-dl -o '%(title)s.%(ext)s' -x --restrict-filenames --audio-format mp3 --prefer-ffmpeg -a $playlist

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

