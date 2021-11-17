Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAFE454E82
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 21:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637180585;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lDyjBFfYdCJk+isQtSsQb79ezZibv0U7Suc/WarmOSA=;
	b=OSJORl2KQpwb3O02zF2iN7lDUv2jXaOdSoK2xrOu5Nv2C+VZxaNWkYV98VJ9+G4Z1TJORJ
	RIm+Ilrbm2CtRcbHvzMaWLGzQ4ufu9nR2LEsoHaD0zCeegZSIm4dc5lJQcKTsBDtfjc1h8
	VWoIMO0swXlw0faiep89Z7BqYb0HJaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-WbVYqflfOM-Uh96-OOBKoQ-1; Wed, 17 Nov 2021 15:23:01 -0500
X-MC-Unique: WbVYqflfOM-Uh96-OOBKoQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 527AC804140;
	Wed, 17 Nov 2021 20:22:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDA605DEFA;
	Wed, 17 Nov 2021 20:22:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D49374E9F4;
	Wed, 17 Nov 2021 20:22:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AHKMdfB017358 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Nov 2021 15:22:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1D6B12166B2F; Wed, 17 Nov 2021 20:22:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16CAF2166B26
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 20:22:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38D77185A7B4
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 20:22:33 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-483-96N0fcxmMQSUcNMOrhPzhA-1; Wed, 17 Nov 2021 15:22:31 -0500
X-MC-Unique: 96N0fcxmMQSUcNMOrhPzhA-1
Received: by mail-wm1-f41.google.com with SMTP id 133so3379321wme.0
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 12:22:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=WB1L1tTZdZ/p3ZpBP1fked3xn7AumnZuN4BaI+Ag/qg=;
	b=w18PatE7m7CaGIQjzRTnR932tJyWz79u8EwYJp0wv+CD0+NGzOCROvuS5yeAEyO0dL
	ryi9r3gQPSSNNYifpVa2d+JWGGtv0XtBS1bd28oYfVSNg6uehbnRrq+58Tk0yox+zZqR
	3odIVFf+DX6i9bn4neF4dMj/lTg1L2BPhUGyqQYluiByzFJNZ77NnOf5CplFYSlGlWNg
	+DfXJYvbXoUCLa18ghNQULDMTABxMyezqPyQfVYVNgbd39G9mvfhKWNdSCelHr+qQilG
	UMXXhiqa17eznEQIr4aO0V7J+OISRU3SAIx/BXpoCDsn59+mYtxUCRdNKdbEqY5C7Dk+
	ypYw==
X-Gm-Message-State: AOAM530MxshWaGEODzBo8j8gt/rKjow9ZfmbBjepMx3glxGIdxUmDYMu
	qt8XRVfiVH2H+YHAwkKSAJXjid1IVUhXkFYL
X-Google-Smtp-Source: ABdhPJyvEY9B85ykM61zn1wnM1CMZZAdmoCf4NpoT1VJgX/hSg2T1HKhw8By9wPUpOf+KlGl3iCzNQ==
X-Received: by 2002:a05:600c:1d9b:: with SMTP id
	p27mr2951692wms.123.1637180549836; 
	Wed, 17 Nov 2021 12:22:29 -0800 (PST)
Received: from [192.168.1.130] ([90.254.199.66])
	by smtp.gmail.com with ESMTPSA id h3sm821961wrv.69.2021.11.17.12.22.28
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 17 Nov 2021 12:22:29 -0800 (PST)
Message-ID: <9c6a8c47-c0d5-4fdb-f832-8145a23f580f@gmail.com>
Date: Wed, 17 Nov 2021 20:22:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
In-Reply-To: <02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QWxyaWdodCwgc28uLi4KCllvdSBnb3QgYSBsb3Qgb2YgY2hvaWNlcyBhcyBmYXIgYXMgZGlzdHJv
cyBnby4gVGhleSBjYW4gYmUgYnJva2VuIGRvd24gCmludG8gc2V2ZXJhbCBjYXRlZ29yaWVzIG9y
IHRpZXJzLgoKCjEuIEh1Z2VseSBwb3B1bGFyOgoKVGhpcyBpcyB5b3VyIFVidW50dSwgRmVkb3Jh
LCBBcmNoIGxldmVsIHN0dWZmLCB0aGUgbW9zdCBwb3B1bGFyLCBtb3N0IAp3ZWxsIHN1cHBvcnRl
ZWQsIGUuZy4gVWJ1bnR1IGFuZCBpdHMgc3BpbnMsIE1pbnQsIEZlZG9yYSwgZXQgYWwuCgoKMi4g
VGhlIGxlc3Mgd2VsbCBzdXBwb3J0ZWQgYnV0IHN0aWxsIHBvcHVsYXIgb25lczoKCllvdSBnb3Qg
eW91ciBTb2x1cywgeW91ciBBcmNoL1VidW50dSBzcGlucyBpbiBoZXJlLCB5b3VyIERlYmlhbnMg
YW5kIHNvIApvbiBnbyBoZXJlIGJlY2F1c2UgdGhleSBhcmVuJ3QgL2FzLyBiZWdpbm5lciBmcmll
bmRseSBhcyBhbiBVYnVudHUgb3IgCk1pbnQgb3IgYXMgaHVnZWx5IHBvcHVsYXIgZXZlbiBpZiB0
aGVyZSdzIG5vdGhpbmcgdGVjaG5pY2FsbHkgd3Jvbmcgd2l0aCAKdGhlbSAobG9va2luZyBhdCB5
b3UsIFNvbHVzLi4uKQoKCjMuIFRoZSBuaWNoZSBvbmVzOgoKTGlrZSBpdCBzYXlzLiBUaGlzIGlz
IHlvdXIgbmljaGUsIEVkdUJ1bnR1IGFuZCBzbyBmb3J0aCwgeW91ciBTcGF0cmkncyAKZGlzdHJv
IHR5cGUgc3R1ZmYuCgoKTm93Li4ud2hhdCB3b3VsZCBJIHN1Z2dlc3QgZm9yIHNvbWVvbmUganVz
dCBzdGFydGluZyBvdXQ/CgpTdGljayB3aXRoIHRlaXIgMS4gVWJ1bnR1LCBGZWRvcmEgb3IgTWlu
dCBhcmUgbXkgc3VnZ2VzdGlvbnMgc2luY2UgYWxsIApoYXZlIGEgbWFzc2l2ZSB1c2VyYmFzZSB3
aXRoIGEgbG90IG9mIHN1cHBvcnQgYW5kIGZvbGtzIHdobyBjYW4gaGVscCBvdXQuCgoKU2xpbnQv
U2xhY2t3YXJlIGlzIG5vdCwgSU1PLCBiZWdpbm5lciBmcmllbmRseSBpZiB5b3UncmUgY29taW5n
IG92ZXIgCmZyb20gV2luZG93cyBvciBNYWMuIFNhbWUgZm9yIERlYmlhbiB3aGljaCBpcyBhIGdp
YW50IGxlYXAgZnJvbSBXaW5kb3dzLiAKVWJ1bnR1L01pbnQvRmVkb3JhL1NvbHVzIGFyZSBhbGwg
Y2xpY2sgbmV4dCwgbmV4dCwgbmV4dCwgbGV0IGl0IGluc3RhbGwsIAp3aGljaCBpcyBhIGxvdCBt
b3JlIFdpbmRvd3MtbGlrZSB0aGFuIGhhdmluZyB0byBnbyB0aHJvdWdoIGEgdGV4dCBvbmx5IApp
bnN0YWxsZXIgd2hlbiB5b3UncmUgdXNlZCB0byBhIHdob2xlIG90aGVyIHdheSBvZiBkb2luZyB0
aGluZ3MuCgoKU28gb2YgYWxsIHRoZSBiZWdpbm5lciBmcmllbmRseSBkaXN0cm9zPyBJJ2Qgc3Vn
Z2VzdCBNaW50IE1hdGUsIG1vc3RseSAKYmVjYXVzZSBpdCdzIG9uZSBJJ3ZlIHRlc3RlZCBpbiBh
IFZNIGFuZCBpdCB3b3JrcyBmYWlybHkgd2VsbCwgU29sdXMgaXMgCmFub3RoZXIgSSdkIHN1Z2dl
c3QgYnV0IGl0IGxhY2tzIHByb2dyYW1zIChvciBwYWNrYWdlcyBpbiBMaW51eCBzcGVhaykgCnlv
dSBtYXkgbmVlZC4gTWludCBoYXMgYSBsb3Qgb2YgcHJvZ3JhbXMgb3V0IG9mIHRoZSBib3ggYW5k
IGhhcyBkb25lIAp0aGluZ3MgdG8gbWFrZSB0aGUgc3lzdGVtIHdvcmsgYmV0dGVyLgoKSWYgeW91
IGdvdCB0aGUgSEREIG9yIFNTRCBzcGFjZSwgSSdkIHNheSB0cnkgb3V0IGEgYnVuY2ggb2YgZGlz
dHJvcyBhbmQgCnVzZSB0aGUgb25lIHlvdSBsaWtlLiBNeSBwcm9ibGVtIHdpdGggYmxpbmQtc3Bl
Y2lmaWMgZGlzdG9ycyBpcyBJJ3ZlIAphbHdheXMgcnVuIGludG8gdGhlICd3ZSB0dXJuZWQgb2Zm
IHVwZGF0aW5nIHNvIG5vdCB0byBicmVhayB0aGluZ3MgYW5kIAp3ZSBuZWVkIHRoaXMgZXhhY3Qg
dmVyc2lvbicgYXR0aXR1ZGVzIGV2ZW4gd2hlbiB0aGVyZSdzIGtlcm5lbCBhbmQgCnByb2dyYW0g
dXBkYXRlcyB0aGF0IGRvbid0LCBpbiBmYWN0LCBicmVhayBzdHVmZi4gTG9va2luZyBhdCB5b3Us
IApDb2NvbnV0IGFuZCBWaW51eCBmb3IgdGhhdCBvbmUuLi4KCk9uIDExLzE3LzIxIDAxOjQ2LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IMKgwqDCoCBHb29kIGFm
dGVybm9vbiBvciBnb29kIGV2ZW5pbmcgb3Igd2hhdGV2ZXIgdGltZSBpdCBpcyB3aGVyZXZlciB5
b3UgCj4gYXJlIHJlYWRpbmcgdGhpcy4gTXkgc3ViamVjdCBsaW5lIHByZXR0eSBtdWNoIHNheXMg
ZXZlcnl0aGluZyB0aGVyZSBpcyAKPiB0byB0aGlzIG1lc3NhZ2UuIEkgYW0gbG9va2luZyBmb3Ig
aW5hcHByb3ByaWF0ZSBMZW5uaXggZGlzdHJpYnV0aW9uIHRvIAo+IHJ1biBpbiBhIHZpcnR1YWwg
ZW52aXJvbm1lbnQuIEZyb20gZXZlcnl0aGluZyBJIHRoaW5rIEkga25vdywgSSdtIAo+IHRoaW5r
aW5nIHRoZSBiZXN0IHNvbHV0aW9uIGlzIHNvbWV0aGluZyB0aGF0IGNhbiBiZSBpbnN0YWxsZWQg
ZWFzaWx5LCAKPiBhbmQgYWxsb3cgbWUgdG8gaW5zdGFsbCBvcmNhIHJlYWxseSBxdWlja2x5IGlm
IG5vdCBkbyBpdCBpbiB0aGUgc2FtZSAKPiBpbnN0YWxsLiBBbnkgZ29vZCBzdWdnZXN0aW9ucz8g
SSBkbyBoYXZlIGFjY2VzcyB0byBhIEZlZG9yYSBjb3JlIElTTyAKPiBpbWFnZSBidXQgSSdtIGp1
c3Qgd29uZGVyaW5nIGlmIHRoZXJlJ3Mgc29tZXRoaW5nIGJldHRlciBvciB3aWxsIHRoaXMgCj4g
YmUgc3VmZmljaWVudD8gTG9va2luZyBmb3J3YXJkIHRvIHJlYWRpZyByZXNwb25zZSB3YWtlIHVw
IHRvIG15IHF1ZXN0aW9uLgo+Cj4KPiBQbGVhc2UgYmUgYXdhcmUgdGhhdCBJIGFtIGRpY3RhdGlu
ZyB0aGlzIHRvIHRoZSBjb21wdXRlciBhbmQgV2luZG93cy4gCj4gSSBhbSB1c2luZyBkaWN0YXRp
b24gc29mdHdhcmUgYmVjYXVzZSBvZiBhbiBhZGRpdGlvbmFsIGRpc2FiaWxpdHkuIElmIAo+IHRo
ZXJlJ3Mgc29tZXRoaW5nIHRoYXQgSSd2ZSB3cml0dGVuIGFib3V0IHRoYXQgeW91IHRydWx5IGRv
IG5vdCAKPiB1bmRlcnN0YW5kLCBwbGVhc2Ugd3JpdGUgbWUgYW5kIGFza2VkIG1lIHdoYXQgSSBt
YXkgaGF2ZSBtZWFudC4gSSAKPiB0aGFuayB5b3Uga2luZGx5IGluIGFkdmFuY2UgZm9yIHJlYWRp
bmcgdGhpcy4KPgo+Cj4KPiBPbiAxMS8xNi8yMDIxIDM6MDYgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFRoYW5rIHlvdSBEaWRpZXItYW5kLUt5bGUuIEkg
d2lsbCBjZXJ0YWlubHkgcnVuIHlvdXIgY29tbWFuZCwgYnV0IGRvIAo+PiBJIG5lZWQgdG8gdW4g
bW91bnQgYW55dGhpbmc/IEkgd291bGQgYWxzbyBmaWd1cmUgSSB3b3VsZCBiZSBzaXR0aW5nIAo+
PiBvdXRzaWRlIG9mIHRoYXQgbWRlaWEgZGlyZWN0b3J5PyBPLWFuZC15ZXMsIERpZGllciwgaXQg
aXMgdmZhdC4KPj4gQ2hpbWUKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

