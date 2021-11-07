Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F418D447391
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 16:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636299812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ucQ7iWCMSfKFCenOofVWDCzmdWqqV/qo0O8Yu032TQU=;
	b=PK2MyNtiLij9mlcLA5wMePxDmr6i3iZYZRfcpkfbjXSPE5Y4FI8cH73ougbL4R6KFJcaW1
	4lpYGZrAEomHIwXkrbUiLuuzvO885be3OaVsyfCifsQ5QEaDhb6PEULbees0MujEuEJ45j
	deSCl9aLZWUzaYWAANX3QUIGHvYCImI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-rlvgE3MwMqOeNiVUH8eeJw-1; Sun, 07 Nov 2021 10:43:28 -0500
X-MC-Unique: rlvgE3MwMqOeNiVUH8eeJw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59DA11023F4D;
	Sun,  7 Nov 2021 15:43:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41A7C5C1A1;
	Sun,  7 Nov 2021 15:43:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93B9F4E58E;
	Sun,  7 Nov 2021 15:43:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7FhKro015467 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 10:43:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B521F2166B26; Sun,  7 Nov 2021 15:43:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADF602166B25
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 15:43:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B32D106655A
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 15:43:16 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-596-ERI005AYO7irujgZAKf5xQ-1; Sun, 07 Nov 2021 10:43:14 -0500
X-MC-Unique: ERI005AYO7irujgZAKf5xQ-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 947822EE
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:43:13 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1QEChczjcAu for <blinux-list@redhat.com>;
	Sun,  7 Nov 2021 16:43:13 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 050752CB
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:43:13 +0100 (CET)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1mjkK8-00C8KW-EX
	for blinux-list@redhat.com; Sun, 07 Nov 2021 16:43:12 +0100
Date: Sun, 7 Nov 2021 16:43:12 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to get speech in a console session?
Message-ID: <20211107154312.ec7pmaoi77a3izmw@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
MIME-Version: 1.0
In-Reply-To: <001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: 947822EE
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[blinux-list@redhat.com];
	RCPT_COUNT_ONE(0.00)[1]; HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]; MID_RHS_NOT_FQDN(0.50)[];
	TO_DN_ALL(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]; SUBJECT_ENDS_QUESTION(1.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion, le sam. 06 nov. 2021 21:27:09 +0100, a ecrit:
> as far as I know there has been no change in Debian wrt this specific
> issue,

More precisely, as far as I know nobody really took the time to discuss
the proposed changes with Debian alsa maintainers.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

