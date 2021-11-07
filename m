Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 207D1447508
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 19:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636311527;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=fF12bqKZCmXI+DhiX/DPPeZUCLlBSc1Dw3ok9ekceZQ=;
	b=D+E3xijA6AOBld5If/xgGM92F2ZS2X66yogc/xmXuPOVFeSjv9slPjXXczC/4Gr5Mtnq2m
	v1uJYgGD5Gxf/wR0Fi1o2oehFDEj72XNDHm6c5PK4b4Q/TgGJfufEbM588kIbyJEdfGPLb
	AWiDGyTyzOSq3SeCVfNnHRHbyhhZIzw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-562-GNkkv8MDMweA1Co07YaOFA-1; Sun, 07 Nov 2021 13:58:43 -0500
X-MC-Unique: GNkkv8MDMweA1Co07YaOFA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C20CD104ECE6;
	Sun,  7 Nov 2021 18:58:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C658B19730;
	Sun,  7 Nov 2021 18:58:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A02A18199EE;
	Sun,  7 Nov 2021 18:58:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7Iw3b6029371 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 13:58:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8703A4047279; Sun,  7 Nov 2021 18:58:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8296D4047272
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 18:58:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 686B11066558
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 18:58:03 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
	[209.85.216.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-N5xDFLX3PquOkDHu7riJdQ-1; Sun, 07 Nov 2021 13:58:01 -0500
X-MC-Unique: N5xDFLX3PquOkDHu7riJdQ-1
Received: by mail-pj1-f41.google.com with SMTP id
	gb13-20020a17090b060d00b001a674e2c4a8so7113910pjb.4
	for <blinux-list@redhat.com>; Sun, 07 Nov 2021 10:58:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:message-id:mime-version:date:subject
	:references:cc:to;
	bh=IM3geS4yBP9c9Ol22zNIpr+bReO37Yf7lTcrwEWj7gc=;
	b=0/yttR/R5v6l4sBDnF+BUrnwBtBeZQCN5nnlo/SMzutkPtGZ9NWNKG2xhQ64JoPVcI
	4jU6KE5OODrK+XEIAD2tknoOqbVDi9eAlLRv2ms8phJ/A+cO+ej4iVvb2W/TaDUgNEG9
	iRtu5xNRE+dT4prYaU/cmQlFE02W4F3Ct8tT20FT9Qo2+MIdrl9iZE29KjlDh4cyFT/a
	XmxyJJNaialNA1nu6WbsZK7EIwA+NWd34ZwS6oe5P8BeFaq1mHbXRJ1hln4Qf7xGv3b0
	EoRzUIepnSvc+4daKK8vhdzUk5nJnq/mdBYtaSzlunTkAKKnlysKIs5hy2+ebdk47QhI
	UEjA==
X-Gm-Message-State: AOAM532Zs3eBLMSdbWE3igVCwYagPLsFBVFMauZmZXuC82wNkRU7c58N
	qXvMzobaSdtwr3H78H9QAoa7jLxtd3IIuw==
X-Google-Smtp-Source: ABdhPJz3G7XmdDsEx05+G02ptY5pV0MDIuotPD8E5Hdup4NBDhYJA9I6EBLokYa31dooSbSKuGmTMQ==
X-Received: by 2002:a17:90a:db81:: with SMTP id
	h1mr47137406pjv.46.1636311479843; 
	Sun, 07 Nov 2021 10:57:59 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	t12sm14281789pjo.44.2021.11.07.10.57.59
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Nov 2021 10:57:59 -0800 (PST)
Message-Id: <13EE48EB-C14E-4201-BA39-FC0D73C8A7F7@cfcl.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Sun, 7 Nov 2021 10:57:57 -0800
Subject: Fwd: [Mailman-Users] customized From handling?
References: <m24k8oqwkn.fsf@sk.tsukuba.ac.jp>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
Cc: "Stephen J. Turnbull" <stephenjturnbull@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In response to a post on the "Mailman 2 Users" list, I received a couple of notes from one of the developers (Stephen J. Turnbull).  He says, in brief, that this list should upgrade to a current version of Mailman.

He also told me, off-list, that the Mailman 3 folks are seriously interested in improving its accessibility.  If anyone here is interested in participating in this effort (and has the needed time and skills), please consider writing to Stephen.  (Include a summary of your accessibility and/or software development chops.)

- Rich Morin

> Begin forwarded message:
> 
> From: "Stephen J. Turnbull" <stephenjturnbull@gmail.com>
> Subject: [Mailman-Users] Re: customized From handling?
> Date: November 7, 2021 at 00:00:40 PDT
> To: Rich Morin <rdm@cfcl.com>
> Cc: Mailman 2 Users <mailman-users@python.org>
> 
> Rich Morin writes:
> 
>> [the blinux admins] would probably be more inclined to update
>> within version 2.1.x (and tweak the config a bit) than to move to
>> version 3.
> 
> That's fine with us.  We are proud of Mailman 2, it's just that a
> decade ago we could clearly see it was reaching the end of the line
> for major feature development.
> 
> IMO, everybody should definitely update to the most recent version of
> Mailman 2 which is available from Launchpad via the bzr VCS (you can
> also download a tar.gz or maybe a .zip) as well as many distros'
> package repositories (if not the very most recent, something much
> better than 2.1.12 or 2.1.15).
> 
> There have been *many* improvements since then, including the DMARC
> mitigations mentioned elsewhere in this thread that may help address
> this problem, but also a number of security issues that affect third
> parties (a few cross-site scripting vulnerabilities, for example) have
> been addressed.  Staying up to date on Internet-facing software is
> just plain good citizenship.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

