Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 937991F8A9F
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 22:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592166219;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pHb+HoqXHxIlv9hTTBUK0siSB9x/5C3k9J8rbl2EBqk=;
	b=ckEs5e30eCm6qEgeN3CuxvXNrLI5APCwTZJ1STwruJO8NIXp2Re6HQB7l7bWeU6bI1p2Sb
	lvRIYWlYMSc5OteWNDEJwFn3MS9JFSMsmoA3OzvCyurNF7+0RjcujYM7UZ/zripZKdtJIY
	Hka8FaVZypbC9jfU1h6hqjh4Mat/92I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-OkMpj5RyMsSGemab_6CMtg-1; Sun, 14 Jun 2020 16:23:37 -0400
X-MC-Unique: OkMpj5RyMsSGemab_6CMtg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99EC98018A2;
	Sun, 14 Jun 2020 20:23:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E1CD19D7E;
	Sun, 14 Jun 2020 20:23:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 986A21809547;
	Sun, 14 Jun 2020 20:23:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EKNTMO032151 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 16:23:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8788A9D5F; Sun, 14 Jun 2020 20:23:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 831409D68
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:23:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6D53101A525
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:23:25 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-322-uN6dlpFoMGKCWVTFLTv8kQ-1; Sun, 14 Jun 2020 16:23:23 -0400
X-MC-Unique: uN6dlpFoMGKCWVTFLTv8kQ-1
Received: by mail-ot1-f49.google.com with SMTP id g7so11512379oti.13
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 13:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=7OehCarO2Fusb5Aq4DoV0U63tuhHIY5dkD84xgdQuZk=;
	b=NaF3pfeG7FMpDVjl70KxUHqloBG2adMv9ccTwxiIa/b18jYG0WgdbCCLVDMid6K6Xi
	rjSaTM3FsYQDl6x033xPSOY5urrh7Wmg7otrA1atVCxWSkPxYO71YhUn4ZMK6KvKtRW9
	snSdHMd1qY/Zr6YD97Kezz4fQOmuijSn8+Kd0Fhoode2ehUTcHgMfClWUYqHuaFvphfd
	NubMo7I8XCDLYUYCJQwj+fgGyINIya3xRfI1PQ36Udb+aEMshpRO1fBsOKWE4db5wD9J
	YO6Zorn0+Bi4GlXJ46qqkLcDEIhV6K+kLVLTSGgVS2jpe2WlbHvrD2DxWOletbheflk1
	5MMw==
X-Gm-Message-State: AOAM531q0YyYASZFbotaGzIOxVx7+9M6T5Vei7qpvoxKEl0GwFXqZSLD
	V4A3zOl/krnYG8byD4eGiLfKT+2+KSI=
X-Google-Smtp-Source: ABdhPJyoo3HgsHNZv9rFmh1L1F8MEjyo/kRBIO37Wj5oO4ECAEh2V/Vjyla6Co5m6+JXiCIfqEShQQ==
X-Received: by 2002:a05:6830:1587:: with SMTP id
	i7mr5256621otr.155.1592166202439; 
	Sun, 14 Jun 2020 13:23:22 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:65c8:3c65:c272:f700?
	([2601:3c2:8200:9360:65c8:3c65:c272:f700])
	by smtp.gmail.com with ESMTPSA id z6sm2934992oth.26.2020.06.14.13.23.21
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Jun 2020 13:23:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 15:23:20 -0500
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
Message-Id: <3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EKNTMO032151
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBpcyBhIOKAmHNldHRpbmdzIGlzc3Vl4oCZPwpBcmUgeW91IG1lYW5pbmcgYSBwcm9ibGVt
IHdpdGggc2V0dGluZ3M/Cgo+IE9uIEp1biAxNCwgMjAyMCwgYXQgMToxNSBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gCj4+IE9uIEp1biAxNCwgMjAyMCwgYXQgMDc6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEhtbW0uICBU
aGF0J3MgYW4gb2RkICJGcm9tIiBhZGRyZXNzLiAgRG9lcyB0aGlzIGxpc3QgaGlkZSB0aGUgcG9z
dGVyJ3MgZW1haWwKPiBhZGRyZXNzIGJ5IGRlZmF1bHQuICBJZiBub3QsIGlzIHRoZXJlIGEgc2V0
dGluZ3MgaXNzdWUgc29tZXdoZXJlPwo+IAo+PiBCcmFpbGxlQmFjayBpcyAvbm90LyBhIHBhcnQg
b2YgdGhlIEFuZHJvaWQgYWNjZXNzaWJpbGl0eSBzdWl0ZSwgSSBzdXNwZWN0IHRoYXQgaXQgaXMg
anVzdCB0b28gZW1iYXJyYXNzaW5nbHkgbGltaXRlZCB0byBiZSBwbGFjZWQgaW4g4oCcdGhlIGdv
bGRlbiBwYXRo4oCdLiBJIHdvdWxkIHJlY29tbWVuZCBCUkxUVFkgZm9yIEFuZHJvaWQgZm9yIGJy
YWlsbGUgc3VwcG9ydC4gCj4gCj4gVGhhbmtzIGZvciB0aGUgY29ycmVjdGlvbiAobXkgYmFkKSBh
bmQgc3VnZ2VzdGlvbiEKPiAKPiAtcgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

