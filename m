Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3170468CEC
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 20:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638731242;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bJrNod0XdyzY3J0DBBnberfSY/sr4HCejP7YGN6qkgg=;
	b=UZSWRgx/9NKvFhyaSOnUS5wSLy/zN4WO/AOWBV9PUogWEEV7sNOFEAyBWR2V/ITLCxNy3M
	fI22+dubqh84HfLylUgrEIE1+8SRvTkHtYhWSB2W8qi6hbOY2GfNBupR9kn6Ev/aChvWKm
	MYWHyTrO+REMiVxu8XS8ZlamcFy4uno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-62-65YzDiTHOeu_LLmKKukIGw-1; Sun, 05 Dec 2021 14:07:18 -0500
X-MC-Unique: 65YzDiTHOeu_LLmKKukIGw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDF78102CB78;
	Sun,  5 Dec 2021 19:07:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B9F61B5AA;
	Sun,  5 Dec 2021 19:07:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 554DC1809CB8;
	Sun,  5 Dec 2021 19:07:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5J6JgY018134 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 14:06:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D680040CFD10; Sun,  5 Dec 2021 19:06:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1FD140CFD04
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 19:06:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B94D63C02B34
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 19:06:19 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-77-HSuiYzI1MriSSBHn_aTNzg-1; Sun, 05 Dec 2021 14:06:17 -0500
X-MC-Unique: HSuiYzI1MriSSBHn_aTNzg-1
Received: by mail-qk1-f182.google.com with SMTP id m192so9190848qke.2
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 11:06:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=4rdDBit/9fmNeFDDy/tP0jYdGstYapGk/fH2qfCAmw4=;
	b=zmDNCY8kOJAv24ym591HQKukfp5xJTOL/gF9ox/9B5my4WIBnA7Dw73bR8NsRdBOmJ
	JgRNzF8NVsLrjH6d5QUl+hbUoURN+wvBH3hQj0fnDn84ud0eabqxTTJkvplKPBEiGofJ
	u56ndC4lwwrwv4RLkDLOA8/ygXAZL3Q544SzfHsrA41nKV2kzxVlZtFj/eLXK1mOwIzI
	HP+mIkNus0GaJOTEd0PQmG7YMCZY+LR6/93S00q/4/snEqTkIsscmvM08DiBn/Av1UGC
	FiDr4GLDGWCHqZ4Ld/P0eGvTJC1bzADxPF7rO9lpc1161iRfF7skCjiUE2zYrEa1oRpV
	2AKw==
X-Gm-Message-State: AOAM530J3TuSMshb+JVZxx8A3xsunAdY1tQattvIWi5vZ1pvB3r8OSIn
	j9jZj5ZPt0yQoQWywSzG+kZQECXVM6aVcw==
X-Google-Smtp-Source: ABdhPJx97AUdbebjJMGJL5O6ouxzUmIRzm9Zx6a2E+EgYgWuHHcz3ZBqIXBHtqqk1JqLKwz1JrYTNg==
X-Received: by 2002:a05:620a:407:: with SMTP id
	7mr29308780qkp.506.1638731177081; 
	Sun, 05 Dec 2021 11:06:17 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	az16sm5737943qkb.124.2021.12.05.11.06.16 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 05 Dec 2021 11:06:16 -0800 (PST)
Date: Sun, 5 Dec 2021 14:06:15 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Useful aliases in .bashrc?
Message-ID: <5963fc12-e8e7-8f98-1c65-496cb4ea3dc@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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



For just about any often repeated task it can be duplicated as an alias or shell script with a short name of your choice or a function which
is also put into .bashrc or similar bash startup file..  The sh script below can be copied to a file with
the same "windows" name and will work just as the alias does.
On Sun, 5 Dec 2021,
Linux for blind general discussion wrote:

> Hi all,
>
>
> I have never really played with .bashrc, but have found it rather useful
> to add a few aliases to it.
>
>
> The one I find most useful so far is the alias to my "startwin.sh" qemu
> script. I use
>
>
> alias windows="sh ~/qemu/startwin.sh"
>
>
> instead of having to type, every time
>
>
> sh ~/qemu/startwin.sh
>
>
> If you have any useful aliases to share, please do?
>
>
> After all, why should we not make each other's lives a bit easier?
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

