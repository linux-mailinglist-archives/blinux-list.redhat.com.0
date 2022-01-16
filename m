Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4534B48F9E0
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 01:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642291521;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+so4W55o+tKXuBwScQ+TEOvjv42tBxyLmGc2ylEmsT8=;
	b=ZVb0JAq5z3Y8r/C36rIXVJ0nKXkJseuBYdSpEN20XQJiBOzp+34605vVFZUi5RnIZ0iLwf
	V3sEqpDua/NoKvdcJ8hwUUSDNA3x/8y36UygkmozRX+3OWSNfTAkYciKVBsPXLHfjQ/9Mb
	q50d9hTneVH8mrxlzbApdow01RrpnuQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-173-uSKt4xgDMtSVP4EebeOPgw-1; Sat, 15 Jan 2022 19:05:17 -0500
X-MC-Unique: uSKt4xgDMtSVP4EebeOPgw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7993A1080865;
	Sun, 16 Jan 2022 00:05:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FD7075704;
	Sun, 16 Jan 2022 00:05:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 451A54BB7C;
	Sun, 16 Jan 2022 00:05:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G04cIU000463 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 19:04:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 54E1114171FE; Sun, 16 Jan 2022 00:04:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F63C14171FD
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:04:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34B81805B25
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:04:38 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
	[209.85.216.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-354-gJvXP96bNkuvqdu7YizrLg-1; Sat, 15 Jan 2022 19:04:36 -0500
X-MC-Unique: gJvXP96bNkuvqdu7YizrLg-1
Received: by mail-pj1-f46.google.com with SMTP id
	g11-20020a17090a7d0b00b001b2c12c7273so8830463pjl.0
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 16:04:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=StNtE98gjs0Ncnu4QyYtvGVTt9AqvAnL0RXROCglnPg=;
	b=H7jKRh3RH920kkiFwTmIMyFxkMz4ua1pkKWbgnJ8pvR9fRBZpDufmxHOu/heAR5euX
	asqLIuoxzq/JlBhK6PvZbk4JXG+YW2Y54lv0Z1SMG9/vNVEKjhPtEc9+0l92hWlbfGp+
	XqccW73i9Li/1mslYi1aLKFNF4M/B04FVblbtBmx5wMIEFRJDvz6kpISJR48wPcqMRPU
	QpdDH/O10M6i6koS0Oj0DZ4l9sGpIeJNREH/IR/UZW9QC8cuXDBzxFCbTZ7CEmFLJ5YP
	uRu9NNtiHIALVSUTIpqWz5EUZB4DnGe+TrwGsX2bZ6GSE/uC+mbS0BHpGhlis2gEEgGC
	mxqA==
X-Gm-Message-State: AOAM5336RN+eemOscAyPkrT2ExAUdWfQkkz29MKeMzNmkC9wVkP6BZKU
	lyDMYnOLnhDqvGzIQ5wC1X8QMlb53lQ32Q==
X-Google-Smtp-Source: ABdhPJxMlR6BAdbaNBK/0EjNyxdorDgdVY09i48gdNASoiIf5sRtu13KzQTz5s6n93pqRSiGS/86FQ==
X-Received: by 2002:a17:902:e80f:b0:14a:43d9:c91 with SMTP id
	u15-20020a170902e80f00b0014a43d90c91mr16195846plg.160.1642291474802;
	Sat, 15 Jan 2022 16:04:34 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	o14sm5209293pfh.49.2022.01.15.16.04.34
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Jan 2022 16:04:34 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: possability of linux install question
In-Reply-To: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
Date: Sat, 15 Jan 2022 16:04:32 -0800
Message-Id: <3066477C-D5AF-42BD-A1A5-3BA15061F674@cfcl.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20G04cIU000463
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

Depending on the version of Windows you're running, it might be worthwhile to try installing Windows Subsystem for Linux (WSL):

https://docs.microsoft.com/en-us/windows/wsl/
https://docs.microsoft.com/en-us/windows/wsl/install

This would let you play with the Linux command line ans such, but still leave you in a largely familiar environment.

-r

> On Jan 15, 2022, at 15:15, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hello all,
> 
> I've been wanting to try out linux but haven't wanted to give up or mess up any of my working windows systems.  Would it be possible to install some version of linux on a CD or a DVD; then just boot a computer from that disk bypassing windows altogether?  If so, I'd have to make it either talk or drive a Braille display.
> 
> Wonder if anyone would have any suggestions?  Thank you.
> 
> Howard
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

