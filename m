Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 104683DCC7D
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 17:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627832658;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CGHOHKaSr5AuZOKv3QWEyV5jgmUhOTWrhJPkyJqSAW0=;
	b=VcJlo+wTUZBwgdaDnhn43iTIgKGg2B23PT82EDlOI2FdogopOSeBobG86dtZrdBMQsLiDi
	RgBvfLNmne0mWCh2ezFogTJENe+su6zPaMp6Y7FMlbXXx8L3RjA+C9W5jh0NB3Ogv5vjsB
	qzxHGayfkchBgKaS+oGWbEI3ckd4DkQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-3KMnoQaOOD6kxBVw2FLvPw-1; Sun, 01 Aug 2021 11:44:16 -0400
X-MC-Unique: 3KMnoQaOOD6kxBVw2FLvPw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B533871803;
	Sun,  1 Aug 2021 15:44:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EEBF1000186;
	Sun,  1 Aug 2021 15:44:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9ECC71801028;
	Sun,  1 Aug 2021 15:43:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171FhMQw022444 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 11:43:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7592F568EA; Sun,  1 Aug 2021 15:43:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 701C1568E7
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 15:43:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE1618556F0
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 15:43:18 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-460-oBRUoU5JOwaTfy1bKXLikQ-1; Sun, 01 Aug 2021 11:43:16 -0400
X-MC-Unique: oBRUoU5JOwaTfy1bKXLikQ-1
Received: by mail-io1-f54.google.com with SMTP id 185so17451426iou.10
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 08:43:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=i8sn7kaRxjmwCqVAzcn2fj8x5LGDCMMSnjZfZQgrCgk=;
	b=lSMctpvs7swlhc1n+dFiPsMayVDwuKr2haJ6PpdJIqysdQh8EJTdw2TxS2nO7lzoiu
	w8UNxP9omJZK5dp4tCLVOpV8fBCcmWvrPzxHiyB07jljWiovIk/wolltc77ACmsK80VE
	vbHaluEJBTBanPwP//fCRi09moSIGCok76xVfB7g6iBwi6NeF691261+nI7hcVRXPlVc
	6MVSsgtB8FluK0NfogJs9kPCYKbdCJUdkRFWKxVLAPslpqmhlNMPaP6nrwikL8kGIp9E
	eyGuoq3PZRenkbKS/g1AvqtPW4CzkzctTTBgW21JRka8McRAVck6hQF3BJWxNe4YoEZR
	M84w==
X-Gm-Message-State: AOAM532qQ5cXulFROcbpa0crodVIfsGMVheRpk4x7WAhrak6Q8HVb8MD
	Lotp4JTEai31n0QQHVR8rgQ2l63gC154SA==
X-Google-Smtp-Source: ABdhPJyIxTq/v0P7lyxE313QhkQW+d4p1DCsU0vgNHxjgmHt2FSaOjXCgIUR5i8hXn/O5x4zdqZHRg==
X-Received: by 2002:a05:6638:3885:: with SMTP id
	b5mr2819891jav.127.1627832596080; 
	Sun, 01 Aug 2021 08:43:16 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:1d5f:e286:5004:17b7?
	([2600:1702:20f0:4420:1d5f:e286:5004:17b7])
	by smtp.gmail.com with ESMTPSA id
	v16sm4036804ilh.70.2021.08.01.08.43.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Aug 2021 08:43:15 -0700 (PDT)
Subject: Re: I'm cured of clear archlinux installs
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
	<D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
Message-ID: <70766e12-5532-ce39-f6e0-fbad282ed18b@gmail.com>
Date: Sun, 1 Aug 2021 11:43:14 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RGViaWFuIElzIGFsc28gYSBnb29kIG9wc2lvbi7CoCBCVFcsIEhhdmUgdGhleSBmaXhlZCB0aGUg
cHJvYmxlbSB3aXRoIAphbHNhIGNhdXNpbmcgb3JjYSB0byBub3Qgd29yayBjb3JlY3RseT/CoCBJ
IGhhdmUgdHJpZWQgc2V2ZXJhbCBmZWRvcmEgCnJhd2hpZGUgaW1hZ2UgYW5kIGdvdCBub3Qgc3Bl
Y2ggYXMgd2VsbCBhcyB0aGUgMzQgc3RhYmxlIGltYWdlcy7CoCBUaGFua3MuCgoKCgpPbiA4LzEv
MjAyMSAzOjQwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IEkgYmVsaWV2ZSB0aGF0IEFyY2ggaXMgZm9yICphZHZhbmNlZCogTGludXggdXNlcnMuIFRob3Nl
IHdobyBhcmUgcHVzaGluZyBBcmNoIG9uIHRob3NlIHdobyBhcmVu4oCZdCByZWFkeSBmb3IgaXQg
anVzdCBkb27igJl0IHNlZW0gdG8gZ2V0IGhvdyBtdWNoIG1vcmUgYWR2YW5jZWQgaW50byBMaW51
eCB0aGV5IGFyZSBjb21wYXJlZCB0byBvdGhlciB1c2Vycy4gSeKAmWQgc2F5IHRyeSBGZWRvcmEg
aWYgeW91IHdhbnQgc29tZXRoaW5nIGxpa2UgYSByb2xsaW5nIHJlbGVhc2Ugd2l0aCBtYW55IGNv
bnRyaWJ1dG9ycy4KPiBEZXZpbiBQcmF0ZXIKPiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4KPiBI
dHRwczovL2RldmlucHJhdGVyLmZsb3VuZGVyLm9ubGluZQo+Cj4+IE9uIEp1bCAzMSwgMjAyMSwg
YXQgMTA6MjQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBhbHNhIGRvZXNuJ3Qgd29yayBwb3N0LWluc3Rh
bGw7IGVzcGVhay1uZyBhbmQgZXNwZWFrLW5nLWVzcGVhayBjb25mbGljdAo+PiB3aXRoIGVzcGVh
ayB3aGljaCB3b3VsZCBub3JtYWxseSBub3QgYmUgYSBwcm9ibGVtIGV4Y2VwdCBzcGQtY29uZiBw
YXJ0IG9mCj4+IHNwZWVjaC1kaXNwYXRjaGVyIGNhbid0IHJ1biBhbmQgc2V0IGFsc2EgYXMgZGVm
YXVsdCBvdXRwdXQgd2l0aCBwdWxzZWF1ZGlvCj4+IG9uIHRoZSBzeXN0ZW0uICBJZiBJIHdlcmUg
dG8gdXNlIHB1bHNlYXVkaW8gYXMgb3V0cHV0IGZvcgo+PiBzcGVlY2gtZGlzcGF0Y2hlciBhbmQg
bWF5YmUgZ2V0IGVzcGVhay1uZyB1cCBhbmQgd29ya2luZyBwdWxzZWF1ZGlvIGJsb2Nrcwo+PiBh
bGwgbWVkaWEgcGxheWVycy4KPj4gV2hhdCdzIHdvcnNlIG5vIGRvY3VtZW50YXRpb24gaW4gYXJj
aHdpa2kgZm9yIGhvdyB0byBpbnN0YWxsIGVzcGVhay1uZwo+PiB0aGF0J3MgcmVhZGFibGUgaW4g
RW5nbGlzaC4KPj4gSSBtaWdodCBiZSBhYmxlIHRvIGdldCBqZW51eCBydW5uaW5nIGVzcGVhay1u
ZywgdGhhdCdzIG15IG5leHQgcHJvamVjdC4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

