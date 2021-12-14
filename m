Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 430454742D3
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 13:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639485819;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=meMgaKA4Fu+RctBzG8mysleeyN0FC1ZY9YjkBJWF9ds=;
	b=M/Xdp5+Kn4qZvxsvSXdr/oYo6wldjvNugoluPExNfD2ADfo46BVUhcdFZM6j5ffaWgbxVN
	4BNhEC8YMapQB1zebfkY1yPqDPE9OtZ90DA075HRSEDb2SumaM0yhI4FX3oS3JZXaTanR1
	7SHvMENSWvCL0D0bNgj3ZKcdVqSHQTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-594-0averuM5NC6wCQ1kCGVqXg-1; Tue, 14 Dec 2021 07:43:36 -0500
X-MC-Unique: 0averuM5NC6wCQ1kCGVqXg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84101100C67A;
	Tue, 14 Dec 2021 12:43:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 410995F70B;
	Tue, 14 Dec 2021 12:43:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AEE994BB7C;
	Tue, 14 Dec 2021 12:43:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEChSVs029335 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 07:43:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 59910401E21; Tue, 14 Dec 2021 12:43:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5583D401474
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:43:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C48485A5B5
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:43:28 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-543-XCR_nAl4OPGooMEm1daEUw-1; Tue, 14 Dec 2021 07:43:26 -0500
X-MC-Unique: XCR_nAl4OPGooMEm1daEUw-1
Received: by mail-wr1-f49.google.com with SMTP id d9so32204832wrw.4
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 04:43:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=li+3Kw7WKuLG4LQ4yqaDXDB5TPGRqZrV9rzTv2kMXOk=;
	b=iFO/77UDWvD8Sy15xdX817Fo2HUWvEcOKq/0+mdWvH3wzx1tRS1UlTzxzCDNoNtP25
	O6w7p0eAttfNVbrkBeElPJpXFCYCJrzCEEpx87V/EvnNMAgmsuA4PYH6IreECpGRMO0y
	zfuWSWtt2E6wS4t/eDwk93qr9RHFqa1CospQ7XitBU2E5mC6EjOCv45Ym+GpOvH+v2ti
	+AIIFWk+fE0IMmiounSEA4I4bHd4jeKzPZuGrYTAqT0n0bvyPOp08699CunnPm/aN9Nw
	pviEEWcOwnkVyfVBp6muzG3H2Vj7usogi6JUI+8MV1I0CXft5+bDAk9TQlBWBKuJHbEz
	o/Ig==
X-Gm-Message-State: AOAM532ncdoYbh2ivIazPW5P4e/MoxzFqXbum5lS6br5aE3L140s9ANm
	Wm33obHt8/urL6n5Xmr+h0a/1nx1j8iqqw==
X-Google-Smtp-Source: ABdhPJxiDfOOyLjJbYdsNbFiEfW52b2uQX5F2W3isKV/EzbEZzrJNR1uzOZV060qm34BIvBYpTdr0Q==
X-Received: by 2002:a5d:650f:: with SMTP id x15mr5581609wru.201.1639485804716; 
	Tue, 14 Dec 2021 04:43:24 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	m125sm1951097wmm.39.2021.12.14.04.43.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 04:43:24 -0800 (PST)
Message-ID: <dc713c06-baf7-a070-b845-07eecb836023@gmail.com>
Date: Tue, 14 Dec 2021 12:43:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
In-Reply-To: <0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlcmUncyBhIG5lYXQgdHJpY2sgSSB1c2UgZm9yIG15IEFyY2ggc3lzdGVtLiBPbmNlIHlvdSBn
b3QgdGhlIGJhc2UgCnN5c3RlbSBpbnN0YWxsZWQgZnJvbSB0aGUgdmFuaWxsYSAuaXNvIGFuZCBp
dCBjb21lcyB1cCB0YWxraW5nCgoKSW5zdGFsbCB4b3JnL3hvcmcteGluaXQgYW5kIE9yY2Evc3Bl
ZWNoLWRpc3BhdGNoZXIgYW5kIHlvdXIgREUgb2YgCmNob2ljZS4gUmVtZW1iZXIgdGhlIGNvbW1h
bmQgdG8gc3RhcnQgaXQuIFlvdSdsbCBuZWVkIGl0IGluIGEgc2Vjb25uZCAKb25jZSB5b3UgaW5z
dGFsbCBkaWFsb2cveWFkLiBOb3cgY2xvbmUgU3RyeWNobmluZSBmcm9tIApnaXQuMm1iLmNvZGVz
L35zdG9ybWRyYWdvbjI5NzYgYW5kIGdvIGludG8gdGhlIGRpcmVjdG9yeSwgYW5kIHJ1biAKLi9z
ZXR1cC5zaCAteAoKCldpdGggeW91ciBkZXNrdG9wIGluc3RhbGxlZCwgb3BlbiB1cCAueGluaXRy
YyBpbiB5b3VyIGZhdm9yaXRlIGNvbnNvbGUgCnRleHQgZWRpdG9yIGFuZCBnbyBkb3duIHRvIHRo
ZSBsYXN0IGxpbmUuIENoYW5nZSBleGVjIHJhdHBvaXNvbiB0byB5b3VyIApkZXNrdG9wLCBpLmUu
IG1hdGUtc2Vzc2lvbiBvciB0aGUgY29ycmVjdCBvbmUgZm9yIHRoYXQgREUuCgpTYXZlIHRoZSBm
aWxlLiBzdGFydHggYW5kIHlvdSBnZXQgYSB0YWxraW5nIERFIHdpdGhvdXQgaGF2aW5nIHRvIG1l
c3MgCndpdGggLmJhc2hyYyBvciAuYmFzaF9wcm9maWxlLgoKSSdtIG5vdCBzdXJlIEknZCBhdXRv
bWF0ZSB0aGF0IGJpdCBob3dldmVyLCBJIHByZWZlciBkb2luZyB0aGF0IGJ5IGhhbmQgCmJ1dCBp
dCBzYXZlcyBhIGxvdCBvZiB0aW1lIGluIHRoZSBsb25nIHJ1biBhcyB3ZWxsIHdpdGggc2V0dGlu
ZyBzdHVmZiB1cAoKT24gMTIvMTQvMjEgMTE6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gSGksCj4KPgo+IEplbnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkg
dGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tpcCBmb3Igbm93LCB0aGF0IAo+IGlzIHVubGVzcyB0aGUg
ZGV2IGFjdHVhbGx5IGZpeGVzIHRoZSB0aGluZy4KPgo+Cj4gSSBhbSBvbiBGZWRvcmEsIGZvciBu
b3csIGJlY2F1c2UgaXQgd2FzIHRoZSBuZWFyZXN0IFVzYiBzdGljayBJIGNvdWxkIAo+IGdyYWIg
cXVpY2tseS4KPgo+Cj4gSSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5v
dGhlciBnby4gV2h5IG5vdD8KPgo+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IMKgb3IgTWFuamFybyBBcmNoaXRlY3QuCj4+
Cj4+IFBlcnNvbmFsbHkuIEkndmUgaGFkIHN1Y2Nlc3Mgd2l0aCB0aGUgdmFuaWxsYSBBcmNoIElT
TyBhbmQgdGhlIGd1aWRlZCAKPj4gaW5zdGFsbGVyICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBq
dXN0IHNldCBpdCB0byBib290IHVwIHRhbGtpbmcsIAo+PiB3ZW50IHRocm91Z2ggaXQgYW5kIGFk
ZGVkIGluIGFsc2EtdXRpbHMvZXNwZWFrdXAgYW5kIHRoZW4gcHV0IAo+PiBzcGVlY2gtZGlzcGF0
Y2hlci9PcmNhL3ZvaWNlcyBhbmQgYSB3aW5kb3cgbWFuYWdlciBvbiBvbmNlIHRoZSBzeXN0ZW0g
Cj4+IHdhcyBpbnN0YWxsZWQuCj4+Cj4+Cj4+IEplbnV4IGhhcyBuZXZlciByZWFsbHkgd29ya2Vk
IGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQgYWxsLCAKPj4gd2hlcmVhcyB0aGUgb2Zm
aWNpYWwgYXJjaCBJU08gaXMgd29ya2luZyByYXRoZXIgd2VsbCwgYW5kIEkgZHVubm8gaWYgCj4+
IHRoZSBBcmNoaXRlY3QgZWRpdGlvbiBpcyAzNi82NCBiaXQgb3IgMzJiaXQgb25seSBvciA2NGJp
dCBvbmx5LiAKPj4gQWRtaXR0ZWRseSwgSSd2ZSBnb3QgYSA2NGJpdCBVRUZJIHN5c3RlbSBzbyB0
aGUgb2ZmaWNpYWwgSVNvIHdvcmtzIAo+PiBmbGF3bGVzc2x5IG9uIGl0IGhvd2V2ZXIsIGJ1dCBZ
TU1WIG9uIHRoYXQgb25lWWVzLCBidXQgeW91IHByb2JhYmx5IAo+PiBkb24ndCB3YW50IHRvIGhl
YXIgaXQgaWYgeW91IGFyZSBzZXQgb24gdXNpbmcgSmVudXggaG93ZXZlci4KPj4KPj4gT24gMTIv
MTQvMjEgMDk6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
PiBIaSBhbGwsCj4+Pgo+Pj4gSSBkZWNpZGVkIHRvIGdpdmUgSmVudXggYW5vdGhlciBnbywgbGFz
dCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIAo+Pj4gdHJpZWQsIEkgY291bGRuJ3QgZ2V0IG9yY2Eg
dG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGluIHRvIHRoZSBzeXN0ZW0uCj4+Pgo+Pj4gRG9lcyBh
bnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pj4KPj4+IEFsc28sIGlmIHRoaXMgZG9lc24ndCB3b3Jr
IG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSBNYW5qYXJvIAo+Pj4gYXJjaGl0ZWN0
IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxlIGFn
bywgCj4+PiBhbmQgaWYsIGFzIEkgc2FpZCwgSmVudXggZG9lc24ndCB3b3JrIG91dCwgSSdkIGxp
a2UgdG8gZ2l2ZSB0aGF0IG9uZSAKPj4+IGEgZ28uCj4+Pgo+Pj4gVGhhbmtzIHNvIGxvbmcuCj4+
Pgo+Pj4gV2FybSByZWdhcmRzLAo+Pj4KPj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Cj4+PiBTZW50
IGZyb20gbXkgTWFjQm9vayBBaXIKPj4+Cj4+PiBDb250YWN0Ogo+Pj4KPj4+IFBob25lOiArMjcg
KDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4KPj4+Cj4+PiBFbWFpbDogYnJhbmR0
LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4K
Pj4+Cj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29t
L2JyYW5kdHN0ZWVua2FtcD4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

