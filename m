Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D17844F9FA
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 19:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636915391;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tiq5/NSoma7KYnXr55L0dRY6hwirknRPO043lLCqN+g=;
	b=V/ISwY5vBBvFV3fqnKGpuDm3sLfGwqBb1cHI9Lx2ay81G7Wyk6swoEwJr46BWK1Hf7hT7j
	VyDP1oD+h8K2NLZ2gkeufi4JwEpiFpJXSZhq4Xaa6jmJ50AuGHi+jK13JqL2M280Jmy9Q2
	LV937U+9V5GIh/4v4B2krJOKHP9Acfg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-72gxhmIwNhK6QuUdKXRBHQ-1; Sun, 14 Nov 2021 13:43:07 -0500
X-MC-Unique: 72gxhmIwNhK6QuUdKXRBHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDF101808303;
	Sun, 14 Nov 2021 18:43:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D7031346F;
	Sun, 14 Nov 2021 18:42:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 30D161801241;
	Sun, 14 Nov 2021 18:42:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEIgbb8018295 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 13:42:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 759A12166B26; Sun, 14 Nov 2021 18:42:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70D992166B25
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 18:42:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 923F985A5A8
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 18:42:34 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-562-whQUoXksNqOm2hH5ubQrag-1; Sun, 14 Nov 2021 13:42:32 -0500
X-MC-Unique: whQUoXksNqOm2hH5ubQrag-1
Received: by mail-qk1-f180.google.com with SMTP id p4so6110823qkm.7
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 10:42:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=vkMM8F0cQce14GA6BUidI/ayH9kbuVT7hOXmYpFpf+M=;
	b=hjAVGD3NwqeaU4XFmxMiyMbpRFJ2ZEBtw8oFWNd84RY/3Z4Y0k8aLATTbZr41BJCG/
	FimzqtzUdwPIy+6r00CUtmt9EeeABT5DKTi6hTRl9hRbuz0o1/GVXydghnIScDNIFT9g
	MDcscv7WaTsJUDnMRYJLQeoOmMvBHBsASHwUR2flacIbMjceeeH7EmkKDMyC1W9i28b4
	4Fk7Kb3IMIHSzPuuucoCRRi+MbDvIvE3kUmCKOqr776Rx1n3OiRT/g42M/j0xRpkmcuc
	9mibxVDiLgPP1W+r4Ac/Ac3LHDIMCs+Nw2p/bv40uwr2Ix+g5a29qLu0vVzQZiisc9qt
	AMCQ==
X-Gm-Message-State: AOAM532iBGRvSrJT+/11D8cXqcJp2eKZggiY96EmxVqQ6lPQ4AAKRtA6
	It93/sNLvgbtoJPgaT3QlSIboi2Eiik=
X-Google-Smtp-Source: ABdhPJyp1QtGulGpm/btWQ6SNZU0g9lz9F0d7PCKSR6e1xCCPC9jM0lXR5ULi6E77qjoCqFbR171KQ==
X-Received: by 2002:a05:620a:21c2:: with SMTP id
	h2mr25237506qka.387.1636915351994; 
	Sun, 14 Nov 2021 10:42:31 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	139sm5538180qkn.37.2021.11.14.10.42.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 14 Nov 2021 10:42:31 -0800 (PST)
Date: Sun, 14 Nov 2021 13:42:29 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <4955451e-b281-1a5e-52eb-57f687c6f88e@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

alpine is the mail client I use, even as I write this.  It is simple to use and is full featured and has an active mailing list.

On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> I agree.  If you are going to use a terminal client, Alpine works pretty
> good.  At least it did when I used it a long time ago.  If I recall
> correctly, with Mutt you need to create a configure file by hand before you
> can do anything with it.  At least pine creates a default file and if you
> want to change it, you can go into the menu to do that.
>
>
>
> On Nov 13, 2021 at 1:59 PM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> The Mutt email client should come with a warning label:
>
>
> CAUTION: FOR EXTREME POWER USERS ONLY!
>
>
> I'm sure if you like emacspeak, you'll probably love Mutt, as I gave up
> on EMACS as a whole after 5 minutes and gave up on Mutt after about 2
> weeks. But someone who is using Thunderbird as the thread starter has
> said should steer clear of Mutt and avoid it like the untamed, mangy,
> flea-bitten dog that it is.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

