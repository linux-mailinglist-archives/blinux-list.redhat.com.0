Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C16542A50AB
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 21:05:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604433914;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k+SLETpDoHIClQ1DawehKZ8Mcw/csYpLpkhyY8KMR7w=;
	b=MVWsoHwBYbb0bTQzWuOSBzIt/yyzAooaYP6u2N9gZV7lR4Sm0XppPldg34PgREbbZf3g82
	/ve1m0mQyWpRx7hUJsnRccsq6XMFJTsiYq5x+Hh+4CS0uEaQF5UuXNM1fbbW0tg+rtfYe1
	v6Z5+VleWSRRtChICfDq2zdrsL80c+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-UiNh5TbAOdum1R08Fc0xoQ-1; Tue, 03 Nov 2020 15:05:13 -0500
X-MC-Unique: UiNh5TbAOdum1R08Fc0xoQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 017B51084C80;
	Tue,  3 Nov 2020 20:05:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D14DA19D61;
	Tue,  3 Nov 2020 20:05:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 197E51800BB2;
	Tue,  3 Nov 2020 20:05:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3K55hp007990 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 15:05:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E26CF207A79B; Tue,  3 Nov 2020 20:05:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCB9B207A644
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:05:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C69485829F
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:05:02 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-257-PKwdB2bFN32sFCuLDsGL6g-1; Tue, 03 Nov 2020 15:05:00 -0500
X-MC-Unique: PKwdB2bFN32sFCuLDsGL6g-1
Received: by mail-ot1-f49.google.com with SMTP id j14so6942051ots.1
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 12:05:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=A6qLVrTkXWQoo5uaPInWLBzXOWDZw51Wt5OqkRcPqZ4=;
	b=NKWuzS6B83EH/BaJtW7pJ9ni/gxMuYKEAI1C+PgNlzWJzskVyIbuj4PvIBYnT/VG5W
	CV7yzG0mvlMsUthPI99tFIK/WjqFMYIcBw/fx7EgAabRhLdZs5ICADGLU7FEumVjW5dp
	qcQvOtL1tj3SF4oHufEFD74Cs3vBrBSlwQj4FT2sSLi/dF+LSZuuj4jr5wGc/91LWiTQ
	kcG1h/jk/OMLHNerM6X2Wj/mogQl/tHdnFmhrC5TXIhk79PVY2Xz7QBz4yivk5pX94uP
	oWZdQH4fTJN08e7dpHNfLm0Xhnf2BPBUsPtUdFtDSb3QEsnI9ehOG1nKEkmohUZ32FW0
	IcUQ==
X-Gm-Message-State: AOAM532eMjusfkXI+HDx86sMyCXtEuXIQpnaCqMZPoxbkdG+KICPvfgR
	VBOTDyS+ovjc3lzmrdZqHxQ3OICz2JPwIw==
X-Google-Smtp-Source: ABdhPJyFmxt7krPMOlg4I9F47IWUt5TjTR80prEODSy6YK3pqqmGRHp98NtXzt2p1xm7GRQuTJ/FFg==
X-Received: by 2002:a9d:6c4e:: with SMTP id g14mr2132127otq.120.1604433899100; 
	Tue, 03 Nov 2020 12:04:59 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id
	x13sm4535635otg.66.2020.11.03.12.04.57 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 12:04:58 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Tue, 3 Nov 2020 14:04:56 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
Message-Id: <6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A3K55hp007990
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3ZW50IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVyc3RhbmQgbXVjaC4gIEl0IHdhcyBzdWdn
ZXN0ZWQgb25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBidXQgaG93IG1pZ2h0IHRoaXMgYmUgZG9u
ZSBpZiB0aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQ/Cgo+IE9uIE5vdiAzLCAyMDIw
LCBhdCAyOjAyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBoZWxsbyBjYW4geW91IHByb3ZpZGUgbHMtcGNp
IG91dHB1dC4KPiBkaWQgeW91IGxvb2sgb24gdGhlIGFyY2h3aWtpPwo+IAo+IDAzLjExLjIwMjAg
MjI6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPj4g
SSBnb3QgYXJjaCBvbiBhIHVzYiBzdGljay4KPj4gQWZ0ZXIgYm9vdGluZyBhbmQgdXNpbmcgYXJy
b3cgZG93biwgdGhlbiBlbnRlciwgYXJjaCBjYW1lIHVwIHRhbGtpbmcuCj4+IEJ1dCBldmVuIHRo
b3VnaCB0aGVyZSBpcyBhbiBldGhlcm5ldCBjYWJsZSwgSSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQu
Cj4+IE5ldmVyIGlzIHRoaXMgYSBwcm9ibGVtIHdpdGggdWJ1bnR1IG9yIHBvcCBvcyBvciB3aXRo
IGZlZG9yYS4KPj4gQW55b25lIGF3YXJlIG9mIGEgd2F5IG9mIGdldHRpbmcgb24gdGhlIG5ldD8K
Pj4gSSBhbHNvIGhhdmUgYSB1IHMgYiB3aXJlbGVzcyB3aWZpIGFkYXB0b3IsIGJ1dCB3aXRoIGFy
Y2gsIG5vdCBzdXJlIHdoYXQgdG8gZG8uCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IC0tIAo+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

