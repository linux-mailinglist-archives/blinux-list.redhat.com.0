Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79843F2BA
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 00:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635460016;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4+M9nsT2hxtPB7p16kOQHpYprRR+FpeGqLwtUjq1va8=;
	b=NmsRXHKQM3Dy6cRxX7UKwJBINExJQzZAUAo+eyh5AKyOLhvShRdUK9rvHVXHxivchK4Ta4
	JwCyuipgm2rl964aMWd3ZZelnEg0kBcfASc+6NH/FP00jhQ/75ptm/4tmdKIAYnwi1jxTY
	lWF1rUYL2I6mSVhZmrk+YfA0w2q4ku4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-88M-QtQDM9GRv7pOLVRHbw-1; Thu, 28 Oct 2021 18:26:52 -0400
X-MC-Unique: 88M-QtQDM9GRv7pOLVRHbw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 270C11808310;
	Thu, 28 Oct 2021 22:26:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 929EB60C04;
	Thu, 28 Oct 2021 22:26:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1EF6F4A703;
	Thu, 28 Oct 2021 22:26:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19SMQbIV001348 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 18:26:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5DC9A2026D5D; Thu, 28 Oct 2021 22:26:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58D632026D46
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 22:26:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5ED9A106655B
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 22:26:34 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-PjGDAUBJMzqHMm1gc5Y34g-1; Thu, 28 Oct 2021 18:26:32 -0400
X-MC-Unique: PjGDAUBJMzqHMm1gc5Y34g-1
Received: by mail-qk1-f179.google.com with SMTP id a132so6375695qkg.0
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 15:26:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QjYiv52UTWl9dep+573RMFfu89IhcrUFuu2NJqsxgHE=;
	b=hK6LFRiDIitdtCtx1Rpz0UG3tOCuG6fPD7VmWaDnwuJa1mcKFwBpY/er52nj0kLTSC
	DCDvp3RVpaHrAyAD1Ngy3TT7ZNbgT5P5x3C+PS3XA2Czgx9vkSMOCY/5a8xy3yj/dUEB
	7ryAEOre5J7xN7rWmLzKs08OHMHgJxsAoBl8c/BUznNmVS+lrlVecK04pyDh4MzWh1f2
	QvAqk0ZJGsQs/gNm0IlfQWc3fDiqEdXl/pCLj7fDD09oTaDOiv23OWTiOtX/eNnNG1UC
	aMkGfcLTo1424JAxdKTwmKLZLwll7Xmt9FmEXqV09QCLgANSHPnjQ7ctwi2ypVIiWfrv
	18Eg==
X-Gm-Message-State: AOAM533BpBG54a5z1q/pp1DuZGT13R7BQWkvUOyxJCCzRADi3YgtsfAR
	+IOQ4jc2Amsdzuvucd9/zoCOGkRDHJEd1eKxkJhxajFohrM=
X-Google-Smtp-Source: ABdhPJx36O3BZiUd4vv3WTMd3/1EO1wfusnOZTZdeTpPN7I3L/Nxzzn9cWjmsvTSgpJjWys6UkAzeV04urIdPxMyd+I=
X-Received: by 2002:a05:620a:c50:: with SMTP id
	u16mr5858839qki.203.1635459991899; 
	Thu, 28 Oct 2021 15:26:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4087:0:0:0:0:0 with HTTP; Thu, 28 Oct 2021 15:26:31
	-0700 (PDT)
In-Reply-To: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
References: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
Date: Thu, 28 Oct 2021 22:26:31 +0000
Message-ID: <CAO2sX31WiLVDNE0wdj-oFK+Hp-fZjo0hhuAQHLtXnDq8ndg-5Q@mail.gmail.com>
Subject: Re: System image backup?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

I use partimage for this purpose, but it does have a few limitations:

1. The partition you're backing up or restoring has to be unmounted,
so it can't be used on the root partition of a running system. I get
around this by running partimage from a LiveDVD, though the
inconvenience of booting into the live environment to make backups
means I don't make backups as often as I should.

2. As far as I know, Partimage's operation is all or nothing. Creating
a new backup copies everything from the target partition and there are
no incremental backups, restoring a backup erases everything on the
partition. For this reasons, I try to keep how much I have on my root
partition as low as possible and have to remind myself to copy the
contents of my home directory prior to restoring a backup.

3. As far as I know, partimage doesn't support ext4. My own system
runs on ReiserFS, but I understand ext4 is a very common filesystem
these days.

On the upside, Partimage only copies the files instead of every
individual block, so it's much faster than dd, produces much smaler
uncompress images, and can compress the images it makes directly.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

