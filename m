Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2F94945FB
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 04:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642648450;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oBczoFZ3BDATPZ5cZo5MJCGXs+s3z5JUF3wsoqeeEoU=;
	b=fyhzNa4HdVaF9zc1NCHpPlUOFOTTZkxA44kmboDZ0AXVjvo2+ftxaDaoL/mMDnr10QZfbC
	MZC2ZqtSnhhzdTFZ3U2SE6nQa7yVrMGMcPAQbVmMaNuPgDM3yIH2+buhK/Kcu5LPO7gcA1
	USRNxpfEqIm4wZbGLwH+uLujR6onTJg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-360-126QzYIxPfmybZmIwQxqzw-1; Wed, 19 Jan 2022 22:14:06 -0500
X-MC-Unique: 126QzYIxPfmybZmIwQxqzw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D7621006AA3;
	Thu, 20 Jan 2022 03:14:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 284EF46981;
	Thu, 20 Jan 2022 03:13:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5080E4BB7B;
	Thu, 20 Jan 2022 03:13:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K3DkVW022955 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 22:13:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8F9DB112133E; Thu, 20 Jan 2022 03:13:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B3DE1121335
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 03:13:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75B7885A5AA
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 03:13:43 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-654-UUu5-x9XNCaYfKrzdrtSGA-1; Wed, 19 Jan 2022 22:13:41 -0500
X-MC-Unique: UUu5-x9XNCaYfKrzdrtSGA-1
Received: by mail-ua1-f46.google.com with SMTP id l1so6555054uap.8
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 19:13:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=v1hxZMOO2fbfVLtPdq4l+0Yi5bCzjodMkDy1zZXseEQ=;
	b=dnAVjpXF9xWcaCDcS+4kM7zR5gHAw0iYXkoXmaGTG7VTLOI5qvxrpV0JoI4YHWY97v
	wa68/Ogd8zz9Bjm/Q7BNwSmgYhoPRd8w+1humLUt0TR9SyJsmgLl14FD9bB5z2HDixSz
	vKPwnWN3axAtJk8hhUVKmIhI6dSVuJ/h6gUzNsSPjVu/y/yy09EH1ICC/lcx22CTa7tT
	lehLp2oARmi3tnCTJnt2J5qbn5b+4y2pDp1Y9fGSHP4Bf6J8VyrO8rcno/YJrYy9HSqa
	wBXpKjIqR2MK3wLoy1C+DXn/Plx9R6bsAo7d6YxAOXCIi1v97z/xEabbVx68P9RFU9jL
	WiHA==
X-Gm-Message-State: AOAM533As1GKqiPxL05Kfs/BdC/lI4BuPjOwM0Xi2ac5pEDsww/FlH72
	bZQHp2tleZNe3g9aHBpqJD1NcXAdeGdyHg==
X-Google-Smtp-Source: ABdhPJy/uHPTQDDgsJwOrHYlUoq8ttR1VZh74P6B/BiwotYDa0p7Gt7IGSnwEYMs5bkTKGrH5bzBDg==
X-Received: by 2002:a67:b742:: with SMTP id l2mr1415653vsh.69.1642648420638;
	Wed, 19 Jan 2022 19:13:40 -0800 (PST)
Received: from smtpclient.apple (184-090-011-149.res.spectrum.com.
	[184.90.11.149])
	by smtp.gmail.com with ESMTPSA id o70sm304356vka.43.2022.01.19.19.13.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Jan 2022 19:13:40 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: Running a Linux VM on Windows and making it talk?
Date: Wed, 19 Jan 2022 22:13:38 -0500
Message-Id: <A6184552-2CAA-484F-9F41-6396E20C47C9@gmail.com>
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
In-Reply-To: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20K3DkVW022955
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHJhbiB1YnVudHUgdXNpbmcgVk13YXJlIHBsYXllciBvbiB3aW5kb3dzLgoKIEkgd2Fz
IGFibGUgdG8gc3RhcnQgb3JjYSB3aGVuIEkgZGlkIHRoaXMuIFNlbnQgZnJvbSBteSBpUGhvbmUK
Cj4gT24gSmFuIDE5LCAyMDIyLCBhdCA3OjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79JbiBteSBv
cGVyYXRpbmcgc3lzdGVtcyBjb3Vyc2UsIHdlIGFyZSBzdXBwb3NlZCB0byBydW4gYSBMaW51eCBt
YWNoaW5lCj4gaW5zaWRlIFZpcnR1YWxib3guIEhvdyBpcyB0aGlzIGRvbmUgb24gYSBXaW5kb3dz
IG1hY2hpbmU/IENhbiBJIHN0YXJ0IE9yY2EKPiBpbiB0aGUgdmlydHVhbCBtYWNoaW5lIHNvbWVo
b3c/Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

