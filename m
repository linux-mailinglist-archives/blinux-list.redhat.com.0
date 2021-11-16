Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3E2453C94
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637104372;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8m84p+B/4aeWTUv3qGm0b9JpfnkPdGbOgYytg7Yj0kU=;
	b=fZkTAJhR1KfxjWhkbGnNosw3Fa/9QA3HIqUU1i7C5D2VJNCAw8OZwO22Fxpz0l98H9Hpx+
	j9W0om3zZqq7PPj4qYw6hE36KVQvaN2fw+vXeV0mqEj41aq8cr7NnfXD3ihDlk1/2fE6fo
	iRwXxco0svQp8FMmJ/i0yRZX9DeH0Ow=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398--YONeL0UPb6jJP1pOdL_XA-1; Tue, 16 Nov 2021 18:12:48 -0500
X-MC-Unique: -YONeL0UPb6jJP1pOdL_XA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A185A1054F90;
	Tue, 16 Nov 2021 23:12:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8815F5D9DE;
	Tue, 16 Nov 2021 23:12:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 697D04A703;
	Tue, 16 Nov 2021 23:12:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGNAWjI020656 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:10:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6598404727A; Tue, 16 Nov 2021 23:10:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E252A4047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:10:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C91A7185A794
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:10:31 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-87-OqDna3HmMIys3WqvEZ35Pw-1; Tue, 16 Nov 2021 18:10:30 -0500
X-MC-Unique: OqDna3HmMIys3WqvEZ35Pw-1
Received: by mail-qk1-f171.google.com with SMTP id t83so586346qke.8
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:10:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yTO1oAXgpxzow4B22zmA2CPymehwTx+xaCLA2ozlWsk=;
	b=1vyPLIzZKlxHyq9p3W4ldxJRWEHtB7i8emiDgxSGR/iP7t0aYPIqw9PYSx/AAGj0sx
	yotbJNSy3f5Wl9y8qn1mGJIdeZYGzjyhAJ75pfTfIQL2hVtU9ayv3it/hCJiAovdDqSx
	DPq+x9vE2GJJOH8Ld/4v4/qXAvlAmDbbn2ntdl+VGm84r7KJuz0JAAS1Vl6HhE03FmLX
	q3NslqDz80mTNQNUwXRH81LcjKnVjDp9OiRLqtiyxf1+rbHahQkGRoVcNSFY5q7NXLNW
	u/FR8stOndcRPO5Oo7EaogLg/tH4Hay+PMOZ9qEOb9xLkSMBVW5jCAmnXZzQ5iyTfR/l
	e4JQ==
X-Gm-Message-State: AOAM532iafG9mqd8ZsPtBMXL7MEG3eu7rP+YoCVBCYnludzDCS/Fsmmw
	fic7i7DC8ET0nqM264iyvoo8AvvCrIvqaJ9LXYQNBak0
X-Google-Smtp-Source: ABdhPJyJj+PIo6UKP8n4xC0b8mCVCfPZc0RsLS7uJWgzujE+PnHBwVHPyM62OwPggJWJGFLJDQgkfpzVs7y9/n0BoXc=
X-Received: by 2002:a05:620a:1423:: with SMTP id
	k3mr9567371qkj.248.1637104229725; 
	Tue, 16 Nov 2021 15:10:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 16 Nov 2021 15:10:29
	-0800 (PST)
In-Reply-To: <c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
Date: Tue, 16 Nov 2021 23:10:29 +0000
Message-ID: <CAO2sX333Mg3ihDNBtc6_yac1dxB2=WtN0nLoWsvZgGSEbmm7KQ@mail.gmail.com>
Subject: Re: Correcting an sd-card?
To: blinux-list@redhat.com
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

Also, assuming the SD card is formatted vfat, fat32, or similar,
you'll need the dosfs-tools package to have access to the fsck
utilities for that family of file systems.

If the SD card is 64GB or bigger, it's possible it might have come
formatted xfat, and in my experience, when a device says "works with
SD cards up to 32 GB" what it really means is "doesn't support xfat",
though I have a 512GB card formated fat32 that works just fine in a
device that only supports 32GB.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

