Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3331D2E93F6
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 12:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609758776;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NjPk++iUrhFANZEtbeGwe/HpIrJCJjJ6fe9TyS0SJW8=;
	b=UWgas67S5JtLz96JXj5wTd/xwHI8IrvLQvr1DupFWnmN+PnnIONHCgpHzSVWSWeMo/8Tdt
	4vTqWuYT1LTvFUEkUN/FGkNqJ3yz+OVjD8KUfBmN5JYQCbrCDDIAmfseSOPuZHtyN0tUZG
	djuRmglqfIHYh+Gj0C84nuAxiO5QiOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-ARwTIarDOjWLI2SV7lPDsw-1; Mon, 04 Jan 2021 06:12:54 -0500
X-MC-Unique: ARwTIarDOjWLI2SV7lPDsw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B924835DE3;
	Mon,  4 Jan 2021 11:12:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 212077048B;
	Mon,  4 Jan 2021 11:12:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C28C4A7C6;
	Mon,  4 Jan 2021 11:12:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 104BCVNF004471 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Jan 2021 06:12:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C3D9F2166B2C; Mon,  4 Jan 2021 11:12:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE3052166B2B
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 11:12:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 436BA1010433
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 11:12:29 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-28-0PHeTi4FMrCWDwSf8O_Wtg-1; Mon, 04 Jan 2021 06:12:27 -0500
X-MC-Unique: 0PHeTi4FMrCWDwSf8O_Wtg-1
Received: by mail-io1-f54.google.com with SMTP id i18so24644960ioa.1
	for <blinux-list@redhat.com>; Mon, 04 Jan 2021 03:12:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hzNeOjCbAWtbFxYDY4NjiI1Knlbltub9Ge//nfqdK7E=;
	b=c/xZGgy2U2isYUWzeKMmW5PrttnV7LmHMa5uQssZI+8FT/Y6EhnR2m8tjdpqwSq8lo
	LL1IbWBT9QYy0ktkufZbnRa4ipLJFxZE/awqW6zGif6xwPMJYxZKnlrFRtQDThSEmKNo
	I8yx86unh83izm4/uOr0bix+9fhK0le8auRR2KpyLeAtgw105fr7t2ynBxChk2tFjpN8
	BpmSg3mUpv9ruv151JzhJMpwMgUAHurcIsoHGrj0wjDGJoyzOb5IgKm6AnBT1oD9DoR7
	Jx2RzVKpVD/8Bz4dHkbw1F1Gd7WXA+QemhfMkfsxcqhO4WW+U5DF8hFhakxBUed/OjAw
	CbMQ==
X-Gm-Message-State: AOAM530KAPm4Wtl4kAzbtd+MjaY40I6/41OvyTvEh7mTKOOgx2rl/Zxn
	WAKdWRmsnDL2vlDbJHT+vtzreFTpi/4=
X-Google-Smtp-Source: ABdhPJyUQ1AODdia6kivoMyIFkat+BZEq0Gs9/k+CcHEqSkGRSYOqJjAe1djIj3sS4H2y6vkhzmIow==
X-Received: by 2002:a05:6602:2d49:: with SMTP id
	d9mr58290829iow.109.1609758746170; 
	Mon, 04 Jan 2021 03:12:26 -0800 (PST)
Received: from ?IPv6:2601:249:c000:3ca0:3042:28b6:77ca:eb98?
	([2601:249:c000:3ca0:3042:28b6:77ca:eb98])
	by smtp.gmail.com with ESMTPSA id
	t18sm40141168ils.16.2021.01.04.03.12.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 04 Jan 2021 03:12:25 -0800 (PST)
Subject: Re: speech output log
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
	<alpine.NEB.2.23.451.2101032118520.5652@panix1.panix.com>
Message-ID: <404aca15-ac7f-09a7-18e3-166377f8a6b0@gmail.com>
Date: Mon, 4 Jan 2021 06:12:24 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2101032118520.5652@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

dGhhbmtzLCBJIHdhcyB3b25kZXJpbmcgaWYgSSBoYWQgdG8gdXNlIHNwZWVjaC1kaXNwYXRjaGVy
IGxvZyBidXQgdGhlcmUgCmlzbid0IGV2ZW4gYSBzcGVlY2ggb3V0cHV0IGxvZyBmb3IgdGhhdC4g
VGhlcmUgaXMgYSBsb2cgb3V0cHV0IGluIGtvZGkgCnNjcmVlbiByZWFkZXIuIEkgYWxzbyB3YXNu
J3Qgc3VyZSBpZiB0aGUgYWRkb24gd3JvdGUgaXRzIG93biBsb2dzLgpPbiAwMy1KYW4tMjEgMjE6
MjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gZG1lc2cgfCBn
cmVwIC1pICJjb2RleSIKPiB3aWxsIHNob3cgeW91IHdoYXQgaGFwcGVucyBhcyB0aGUgc3BlZWNo
IHNlcnZlciBzdGFydHMgdXAuCj4gQWZ0ZXIgdGhhdCwgaWYgeW91IGhhdmUgYSBtYW4gcGFnZSBv
ciBpbmZvIHBhZ2Ugb3IgCj4gL3Vzci9zaGFyZS9kb2MvY29kZXkvIGRpcmVjdG9yeSBjaGVjayB0
byBzZWUgaWYgYW55dGhpbmcgaW50ZXJlc3RpbmcgCj4gbGl2ZXMgdGhlcmUuCj4gV2l0aCBhIG1h
biBvciBpbmZvIHBhZ2VzIHNvbWV0aW1lcyBjb25maWd1cmF0aW9uIG9wdGlvbnMgYW5kIAo+IGNv
bmZpZ3VyYXRpb24gZmlsZXMgYXJlIGlkZW50aWZpZWQuwqAgR29vZCBpZGVhIHRvIHJlYWQgdGhy
b3VnaCB0aGVzZSAKPiB0byBzZWUgaWYgYW55IG9mIHRoZW0gY2FuIHNvbHZlIHlvdXIgcHJvYmxl
bShzKS4KPgo+Cj4KPiBPbiBTdW4sIDMgSmFuIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gU28gSSdtIHVzaW5nIGtvZGkgb24gbXkgbGFwdG9wIGFu
ZCBuZWVkIHRvIGdldCBtZXNzYWdlcyB0aGF0IGtvZGkgCj4+IHNjcmVlbnJlYWRlciBvdXRwdXRz
LiBJcyB0aGVyZSBhIHdheSBJIGNhbiBmaW5kIHRoaXMgbG9nIGJlY2F1c2UgSSAKPj4gaGF2ZSBu
byBjbHVlIHdoYXQgdG8gbW9uaXRvciB3aXRoIHRhaWwuCj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

