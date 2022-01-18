Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2036F4921A1
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 09:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642495872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FTH165oNTgPFOli/5btWeAb73M3Rhiyn7h7GRlQ+Glw=;
	b=ZsFr6BUrKBa9g/EPyJLx/N6F0G6YvOuCcX/QFieHsKNSZsGEVfCJzSK8snWOv0gWGsGW8H
	1rg86lZZ5S+zZQyLIPnFqwYxEtuMarQ3AbytFbyI2MbzZEESVkI3C2EAdE3wuw4Y44PdLM
	pbbelUFClq6lWOKupoT/nfJblgjsLRA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-5Ro5D_0GOpi7A0uJiDKoYA-1; Tue, 18 Jan 2022 03:51:08 -0500
X-MC-Unique: 5Ro5D_0GOpi7A0uJiDKoYA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D33908144E0;
	Tue, 18 Jan 2022 08:51:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 212EF55F64;
	Tue, 18 Jan 2022 08:51:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18DD71806D03;
	Tue, 18 Jan 2022 08:51:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20I8ouSk020841 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 03:50:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 415A2C23DB1; Tue, 18 Jan 2022 08:50:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D432C23DAD
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 08:50:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26CB7108C0E1
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 08:50:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-355-NBP8uDy0PDSiFdxCHn0-IQ-1; Tue, 18 Jan 2022 03:50:54 -0500
X-MC-Unique: NBP8uDy0PDSiFdxCHn0-IQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JdMtj4r56z3pfn
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 03:50:53 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JdMtj4Gggzcbc; Tue, 18 Jan 2022 03:50:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JdMtj3qP2zcbP
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 03:50:53 -0500 (EST)
Date: Tue, 18 Jan 2022 03:50:53 -0500
To: blinux-list@redhat.com
Subject: re: starting out with linux
Message-ID: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To control keyboard layouts, /etc/vconsole.conf is the file.
If KEYMAP= variable has nothing to the right of the = then KEYMAP=US is
the default.  The man 5 vconsole.conf should give format information and
read up on man  8 localectl too.
KEYMAP=dvorak-l in /etc/vconsole.conf likely will help.  If familiar with
sed, it likely will be the quickest way to get this result.  If not,
another editor may be needed.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

