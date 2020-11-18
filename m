Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1D4852B8721
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 23:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605737254;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yz5f2kexpHh3ftNnsLGU570c3Qpmfg1Uks3dkR5wop0=;
	b=EVtJ5vhd5y0Oy0NZxRVoM76iP5Sc7bm7CYg8uUnW7LtfOJ5EvcA6z6HIln2MKGGlNqM1ed
	0KNxHTgX1Py/K/tRCW0DCystJzrpnj2oVeNVtAp8D+Nmq47iWqpYcZ+k7arcKZr4EXj3Qh
	9VCNYzR4UD/LcJIMEWghWD3vcGdW98E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-1gJanfMqMbCY0YCtmHLfzQ-1; Wed, 18 Nov 2020 17:07:32 -0500
X-MC-Unique: 1gJanfMqMbCY0YCtmHLfzQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B391F89CCC1;
	Wed, 18 Nov 2020 22:07:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C619E60BE2;
	Wed, 18 Nov 2020 22:07:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 56DE94EDB6;
	Wed, 18 Nov 2020 22:07:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIM7FAQ007435 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 17:07:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7C4CAFD4D; Wed, 18 Nov 2020 22:07:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A23ACB07B1
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 22:07:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F2E38007A4
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 22:07:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-318-9RlyLu5WM6C3gr1_RArzDQ-1; Wed, 18 Nov 2020 17:07:09 -0500
X-MC-Unique: 9RlyLu5WM6C3gr1_RArzDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Cbxk53J6xz1lbH
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:07:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Cbxk52N5gzcbc; Wed, 18 Nov 2020 17:07:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Cbxk51mxBzcbW
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:07:09 -0500 (EST)
Date: Wed, 18 Nov 2020 17:07:09 -0500
To: blinux-list@redhat.com
Subject: jenux only installs with gpt disks
Message-ID: <alpine.NEB.2.23.451.2011181703430.23218@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The actual jenux distro based on blackarch only installs with gpt disk
label and efi.
I'm going to check out what happens with android that used to install with
msdos earlier.  If that no longer installs with msdos, on one and possibly
both machines I have there's no more reason to test or use jenux in any
form.



-- United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

