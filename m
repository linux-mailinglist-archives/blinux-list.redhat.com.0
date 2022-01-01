Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F4208482856
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065690;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DTUrrAozKLHvTVHV7MUlbP4uFSYEwxbQcZK6npGQ5GU=;
	b=DjNmYpowBLJj2QzhiDM/HzqEjYZO8R5Qd/Ng0PjTRvQVs9e5i0YM4q8pJMC1p4WRWU1ikV
	AE5vtTDazTR+JNALC5j3lY+qyLFV+/MeDsJ00msbUIG0wPb+BZTBgNwZLdBKIzXXuRUlGL
	0Nrzpury1sI1LZ/czRKYhhSVGGEGCds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-127-zFz8V5YjMYqJXhoiqh1Y2A-1; Sat, 01 Jan 2022 14:34:46 -0500
X-MC-Unique: zFz8V5YjMYqJXhoiqh1Y2A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA5F08042BD;
	Sat,  1 Jan 2022 19:34:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A585560C17;
	Sat,  1 Jan 2022 19:34:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE4634BB7C;
	Sat,  1 Jan 2022 19:34:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JYdkD015734 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:34:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE8FB112131B; Sat,  1 Jan 2022 19:34:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA1081121319
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:34:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A09CD101A52D
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:34:35 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-665-_AhdwjTEPHenKdX8XVxByA-1; Sat, 01 Jan 2022 14:34:34 -0500
X-MC-Unique: _AhdwjTEPHenKdX8XVxByA-1
Received: by mail-qt1-f176.google.com with SMTP id m25so26753826qtq.13
	for <blinux-list@redhat.com>; Sat, 01 Jan 2022 11:34:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Z1A4z/dRb2QH9+M4TYocVc7EDMVxtj47qGSzf2k0LFc=;
	b=X4QuO2pTdp2dt5gTuSqZaNvqDX1+T6xc9PMktecrWmiwe0aSMyJNbDdJ+xpXJELK52
	LDcEzSurWwo2OfLdCq/KjiTwvNGWh4GGfECQIPWGtVZVFWE7QeufhoJONmGQggcLzgbI
	0SKLjWJYYixW5cHywzWYzcCY5Ptgov9NkO/3IVaYbeqlveyy+PtvasId8jWvu2KxSbGi
	gjmBXBpNHnIDguPYsP/8TzDriEfBR98JHYFTox619tQK/bkiTcmgweAjgcQAsQFZ9c0v
	8CKSjl0Siaym/bzJweFT3aAqt9Bt50+Fxq9I44bvYHn5/5YhreoBKUJRJ/9gvlwcbc1h
	6Hsg==
X-Gm-Message-State: AOAM5325KhmI1ZAv39RMHr98PkAley/z9OxCOc6WIWJYuwU3qSvRLQtg
	KOVjBfyhjxOIERuUvvQ/iilk9o2dj8/6ebWoVPq/S7VYAgo=
X-Google-Smtp-Source: ABdhPJwGx/GbmxQTj0KzSMjAn8NUQZurlb5bcyV2Cic7TqB4Vmd5PA39f2JgppgnqZi662lQBT267Izu32/T3BNOquQ=
X-Received: by 2002:a05:622a:48f:: with SMTP id
	p15mr35353653qtx.42.1641065673434; 
	Sat, 01 Jan 2022 11:34:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5762:0:0:0:0:0 with HTTP;
	Sat, 1 Jan 2022 11:34:33 -0800 (PST)
In-Reply-To: <92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
Date: Sat, 1 Jan 2022 19:34:33 +0000
Message-ID: <CAO2sX32HVp=2x_5x3W5+T92yBgawT=Q+=BH4-xcugdfQ=dtRnw@mail.gmail.com>
Subject: Re: Recovering shift deleted data
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

My suspicion, which Google seems to confirm, is that, in graphical
file managers, shift+delete bypasses the recycle bin/trash
can/whatever the desktop environment in use calls it, making it
equivalent to the rm command issued from the command line.

Anyways, testdisc can scan the free space of a variety of filesystem
types for deleted files, though you'll want it to output to a
different device than the one you're scanning... also, it doesn't
recover original filenames(so you'll have to manually review the
contents of every recovered file), and if memory serves, the only real
options are scanning for all files and scanning specifically for image
files. Doesn't do ext4, though someone else mentioned a undelete
utility specifically for that filesystem type, and it does support,
among others, various flavors of fat, ext2/3, HFS, RAID, LVM, NTFS,
ReiserFS, and ones I don't think I've ever heard of.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

