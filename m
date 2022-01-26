Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFB049D288
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 20:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643225772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5N3f/5cdKEHAOAEkbMMWc2oUbz7EOj0cV1Uozk78Vbk=;
	b=eOUpSKlQ+n3QCMANRL47MefGfHP04bJunZ5XjC3f97JpFd3+jN4UrEALdNol3dxiuijo7w
	93mvgUVapaB726gfwNOYQuxATGtvBBnxcrP/4NaN55hasX8JD6hFvARetVd6fuEQWMSlht
	tJXwJbpYq00lBT7uCaIl7MWAtn+/Pxo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-RFezK284NtKj9oaKkUgQ-w-1; Wed, 26 Jan 2022 14:36:03 -0500
X-MC-Unique: RFezK284NtKj9oaKkUgQ-w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1322C1083F60;
	Wed, 26 Jan 2022 19:35:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABF985DF21;
	Wed, 26 Jan 2022 19:35:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 458134BB7C;
	Wed, 26 Jan 2022 19:35:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QJZg9S020267 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 14:35:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF4BB20268FE; Wed, 26 Jan 2022 19:35:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAFA4202698A
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:35:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A55A805BFC
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:35:39 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-75-o3DgAb4MNkm_Q_jb4Ahe9A-1; Wed, 26 Jan 2022 14:35:37 -0500
X-MC-Unique: o3DgAb4MNkm_Q_jb4Ahe9A-1
Received: by mail-qt1-f182.google.com with SMTP id r14so603930qtt.5
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 11:35:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ml8DfP2CsUywalb+/+QljIVHRoRy80J79S3i0IJkmPA=;
	b=3PNL1nWqt9vE+yfVSm3Cr0w9VeGMGzl4qr2m9cH6xe3zgy3bDAb2b4rfiQ9D40Ft2j
	dLf5tRJS1kpJFtWM6KCzCHDhUIxXjnQ18+0AGynOl6MmfZVTsLSG9Ac+T0znT75zCz+N
	m6ksw0tEKBga4N/sP7KVKcgjxt1r3CPPCGxrrE0at7eXEpDBRJqb0jxTetSCYNE249Lc
	LaeadSos87Ofm7E+PEIEbtifYu3ZfpRCSgPM8LjqYy/gedbLwGFnTPvkETrintA7tgmY
	LIe0L+99IYWeR5EJaRSG6krW8n1+0G15tCYvouQNJv60uhqNDiV2lmQOnpMhW1Y1W70N
	Ax9Q==
X-Gm-Message-State: AOAM533t1q0KXm4dwNJSbY++EoF+vAbOJbSrB3TVOtxMnN4IezsGBI2y
	anzedzy501Gx53My8VFTX9KHlz6sSJbJGTzyfGpuY/qL
X-Google-Smtp-Source: ABdhPJwYvBjRZRmAjnXXIZ7qnipRhiJAT0aoL+7gv9dwqP9vVVXWuWwoJ7IyLjJ3dcNmt2nczsO02v8M1xnEFV9ez4U=
X-Received: by 2002:ac8:7dd5:: with SMTP id c21mr156428qte.367.1643225737201; 
	Wed, 26 Jan 2022 11:35:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Wed, 26 Jan 2022 11:35:36
	-0800 (PST)
In-Reply-To: <20220126124056.239f2e2f@bigbox.attlocal.net>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
Date: Wed, 26 Jan 2022 19:35:36 +0000
Message-ID: <CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
Subject: Re: Converting text to mp3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On a somewhat related note, does anyone know of anything that can take
a subtitle text stream(generally plain text, usually .srt or .ssa when
not muxed in To a video file) and spit out audio of the dialog that's
timed to the timestamps in the subtitle file? Bonus points if,
assuming the subtitle script includes character tags, there's a way to
set different synthesized voices for different characters. Would be
handy for media that has English softsubs, but no English audio...
though even just a means of converting .srt or .ssa to something more
human readable would be useful.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

