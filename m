Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F13AD365E6E
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 19:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618939431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F4yo64YBDBeVZVgiB786NYQR5KUP1qCf6grnRqr1bYs=;
	b=eUT/g3YZQ1XdGdHWfi1V4MRMY7+xvz7FDEw5/6L906k8xa8j5oYY65B1ewoW1qtJ05qrZ3
	nNvfY5oyF5WGzj9tclsFGD/zI60uBGquGn1bCYTuXCCekBCi211hJTv3NhmtlG4DMw6/fo
	qdVfVU8T4YxD7Y7We88/HNsxmUraSk4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-511-x5dm_GNyNa6EtYCeqcgEzQ-1; Tue, 20 Apr 2021 13:23:48 -0400
X-MC-Unique: x5dm_GNyNa6EtYCeqcgEzQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8827010054F6;
	Tue, 20 Apr 2021 17:23:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4864C5C1B4;
	Tue, 20 Apr 2021 17:23:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 183541806D16;
	Tue, 20 Apr 2021 17:23:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KHNX06024385 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 13:23:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4B6A19D490; Tue, 20 Apr 2021 17:23:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 465A490A0B
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:23:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5E04802D19
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:23:29 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-421-u1GxEQIWPNyGeUGrjzT_pQ-1; Tue, 20 Apr 2021 13:23:28 -0400
X-MC-Unique: u1GxEQIWPNyGeUGrjzT_pQ-1
Received: by mail-qv1-f53.google.com with SMTP id dp18so14342829qvb.5
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 10:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=AgrfxEQ5Z6DxDlK/e629+iJFf8kcmCMxiYRVG2xmkfs=;
	b=lL4wjsjRhiWOpsyLJtz/3S+qbfxomdImmcMqwDy29eebn3DsMQjUHxos2Kyr/oiMI4
	412di0ow71Qp/njuO+7ZSuoYbXdEIYKo9u6uLudGRQMkw24ssYKO4E64VgBOY+aeWhAs
	LhJGCUcVjYHW/GGHj4LLfaPZVKJ7saN0fcw9jt3u+OiqrEkviNruqTB1sUVFDzrwNuBn
	Evl6ojRV00uxTZGXv6fha0seKIya8pvbFQYu4gSeUpSAFtJwGG6VHt6H6bCUaBdl20DL
	T38onBNcWFTV1YVrZ0nA+O/zu1Rc6/4ZbmNkclcJZDdWLE60XV9xSj02EAjbqSkFUKpA
	WqkA==
X-Gm-Message-State: AOAM532j+uCds9HAFbsI11WLQ3w74xLtJx1xveOxd7W6Q8X6xzxKAESN
	MSt/QZ0ASvS5NLdOB014d+LVPTusM1JjsWXrPUFwgsVO9tI=
X-Google-Smtp-Source: ABdhPJzCn2kUjaFfyv5ZZisPrAs7LCqWm4RLedTkspieT9WkibilM+dfT5CnoJ8c22jHUHtPKmIWN9dSchA7R9gW17I=
X-Received: by 2002:a0c:f04a:: with SMTP id b10mr27591241qvl.59.1618939407410; 
	Tue, 20 Apr 2021 10:23:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Tue, 20 Apr 2021 10:23:27
	-0700 (PDT)
In-Reply-To: <378897c1-ec7e-5d0-5ce5-2532168567e@hubert-humphrey.com>
References: <20210420.165240.599.3@0.0.0.0>
	<378897c1-ec7e-5d0-5ce5-2532168567e@hubert-humphrey.com>
Date: Tue, 20 Apr 2021 17:23:27 +0000
Message-ID: <CAO2sX33JGbrobrskKNFsT1ACW24KN6yPOArBmWxT-EmOBDi17Q@mail.gmail.com>
Subject: Re: Using Sox to volume Level
To: blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

there is the normalize-audio package, which works on wav, mp3, and ogg
vorbis according to it's description in Aptitude, and might work on
FLAC given that it recommends the flac package. I've never used it
directly, but persumably, it'll be more straight forward than using
Sox given that it does specifically what you want whereas sox is more
of a general audio editing toolbox.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

