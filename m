Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4DE440073
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 18:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635525604;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KuWTgD755jrMy8vrKENoAiharzxWnPAxjpDP0VDpHS8=;
	b=E/d+bE6LGwUzQ1DO7PNqNP5r3EVUwi12PFRR9Jc4EeVHq3N1uZ/delA8Pa7jmtDfzATh0H
	BnpnkAhUSmD8a0TNqbjBv5jMz1gWAhMF2pxPpzK+dKQVoEKl7GmGM0L4H49o8TaEC5y4mI
	oQUSPqpwgoZx5ZgwNPbHhzJSwtqgdgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-2Jutxi-pNleTaiFW3-0atg-1; Fri, 29 Oct 2021 12:40:00 -0400
X-MC-Unique: 2Jutxi-pNleTaiFW3-0atg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95E38802B78;
	Fri, 29 Oct 2021 16:39:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 237245D9CA;
	Fri, 29 Oct 2021 16:39:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 411114A702;
	Fri, 29 Oct 2021 16:39:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TGdg6l028370 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 12:39:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DFB3E1121315; Fri, 29 Oct 2021 16:39:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB4831121314
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:39:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 636C51066560
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:39:37 +0000 (UTC)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-196-x9B-yo1dPHS7NK59iUJdQg-1; Fri, 29 Oct 2021 12:39:35 -0400
X-MC-Unique: x9B-yo1dPHS7NK59iUJdQg-1
Received: by mail-io1-f44.google.com with SMTP id z144so12122852iof.0
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 09:39:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=XwrIPpiVa0gt6mr/TDdpdI+Pk3pTdasJ98kfluBMbxE=;
	b=5graMRBxzpQGmEorZr9BC/1isB/1tgz57f6GTAJNjSphazAEFFC2R6Ebr5gTr94Gb9
	L6fMa0ui4+jLR3eVXSnMdj/owvNOXuCZHEg9kOoKx+NFijJNuGsIJECXOWeTJN68t4V2
	AdyUoZQD6fkzOZFJfQ0FCB8hW1sywHVj0s3Rk3SvyuVFLyO5A6wPGADck2YtLb4tWv3z
	qNfJ0SNmQBmLsWYx9AuSKNvQJiO9MIcAZl/AmER2wI293lAoc5Pw+wLka9zwx3Ej/r/y
	3oJVAFFdtl7vyac0xzR4RRUjIIWW2ElDa4mjzG3hZB8YLM5MaUqGgu/Sun5x5IMQePyy
	V29g==
X-Gm-Message-State: AOAM533jd0V4QmQ8titpmSQduDzeXwMbBJwciX2Tn/kBOSqaWx4Pn9/5
	zscwUGD80a2/A0ysm1Fo/BmgQ6GfuuE=
X-Google-Smtp-Source: ABdhPJzgdY25EpbE6yFndm9Wqg7Kpo80QjQCuarOZ9j8k1u6HM3rW8iC/M/mybxJX02NGo255QaCdA==
X-Received: by 2002:a05:6638:35a4:: with SMTP id
	v36mr9043249jal.61.1635525574506; 
	Fri, 29 Oct 2021 09:39:34 -0700 (PDT)
Received: from ?IPv6:2600:1700:9434:2a00:acb8:df28:ace0:fec?
	([2600:1700:9434:2a00:acb8:df28:ace0:fec])
	by smtp.gmail.com with ESMTPSA id i5sm3273277ilj.49.2021.10.29.09.39.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 09:39:34 -0700 (PDT)
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
	<5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
Message-ID: <38ad1bdb-b7a8-5152-bc87-c9174a0c9b8f@gmail.com>
Date: Fri, 29 Oct 2021 11:39:33 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2hhdCBpcyB0aGUgbWluaW11bSByZXF1aXJlbWVudHMgb2YgYSBjb21wdXRlciB0byBydW4gbGlu
dXg/wqAgSSB3YXMgCmhvcGluZyB0byBsb2FkIGl0IG9uIGFuIG9sZGVyIG1hY2hpbmUgcmV0aXJl
ZCBmcm9tIERPUzsgYSAzODYgb3IgNDg2IAp3aXRoIG5vdCBtdWNoIG1lbW9yeSBvciBoYXJkd2Fy
ZSBleHBhbnNpb24uwqAgUGVyaGFwcyBtb2Rlcm4gbGludXggd29uJ3QgCnJ1biBvbiBhIG1hY2hp
bmUgb2YgdGhhdCB2aW50YWdlPwoKCk9uIDEwLzI5LzIwMjEgMTA6MzMgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksCj4gSSBhbSBhbHNvIHJlbGF0aXZl
bHkgbmV3IHRvIHVzaW5nIExpbnV4IGFzIGEgYmxpbmQgcGVyc29uLiBPdmVyIHRoZSAKPiBwYXN0
IHNldmVyYWwgbW9udGhzLCBJIGhhdmUgZG93bmxvYWRlZCBhbmQgdHJpZWQgc2V2ZXJhbCBvZiB0
aGUgCj4gcmVjb21tZW5kZWQgTGludXggZGlzdHJpYnV0aW9ucy4gQWJvdXQgYSBtb250aCBhZ28s
IEkgY2FtZSBhY3Jvc3MgCj4gTGludXggTWludCB3aXRoIHRoZSBNYXRlIGRlc2t0b3AuIEkgbGlr
ZSBpdCB2ZXJ5IG11Y2guIEkgYW0gY3VycmVudGx5IAo+IHdvcmtpbmcgb24gYSBwcm9qZWN0IHdo
ZXJlIEkgaGF2ZSB0byBzZXR1cCBMaW51eCBjb21wdXRlcnMgZm9yIHNldmVyYWwgCj4gc2lnaHRl
ZCBwZW9wbGUgYW5kIEkgYW0gdXNpbmcgTWludCBhcyB0aGUgZGlzdHJvIHRoYXQgSSBhbSBkZXBs
b3lpbmcuIAo+IEkgYW0gaGFwcHkgdG8gc2F5IHRoYXQgSSBwdXQgdGhlIGZpcnN0IG9mIHRoZXNl
IGNvbXB1dGVycyBpbnRvIAo+IHByb2R1Y3Rpb24gdGhpcyB3ZWVrLgo+IFNvIGZhciwgc28gZ29v
ZC4gVGhlcmUgYXJlIGEgZmV3IG1pbm9yIHRoaW5ncyB0aGF0IEkgd291bGQgbGlrZSB0byAKPiBs
ZWFybiB0byB0d2VhayBvbiB0aGF0IHN5c3RlbSwgYnV0IEkgYW0gY29uZmlkZW50IHRoYXQga25v
d2xlZGdlIHdpbGwgCj4gY29tZSB0byBtZSBvdmVyIHRpbWUuCj4KPiBUaGUgYWNjZXNzaWJpbGl0
eSBleHBlcmllbmNlIHdpdGggTGludXggTWludCBNYXRlIGhhcyBiZWVuIHZlcnkgCj4gcG9zaXRp
dmUuIEFmdGVyIGRvd25sb2FkaW5nIHRoZSBsaXZlIElTTyBmcm9tIGxpbnV4bWludC5jb20sIEkg
dXNlZCAKPiBSdWZ1cyBydW5uaW5nIG9uIG15IFdpbmRvd3MgNyBjb21wdXRlciB0byBjcmVhdGUg
YSBib290YWJsZcKgwqDCoMKgIFVTQiAKPiBmbGFzaCBkcml2ZS4gKGh0dHBzOi8vcnVmdXMuaWUv
ZW4vKSBJIHVzZWQgYSAxMCB5ZWFyIG9sZCBMZW5vdm8gCj4gVGhpbmtwYWQgWDIyMCBmb3IgYWxs
IG9mIHRoZSB0ZXN0aW5nLCBmaXJzdCBqdXN0IHJ1bm5pbmcgZnJvbSB0aGUgCj4gZmxhc2ggZHJp
dmUgYW5kIGxhdGVyLCBpbnN0YWxsaW5nIG9uIGEgZnJlc2ggU2Ftc3VuZyBFVk8gU1NEIGluIHRo
ZSAKPiBYMjIwLiBQZXJmb3JtYW5jZSBvbiB0aGlzIDEwIHllYXIgb2xkIGNvbXB1dGVyIHdhcyBl
eGNlbGxlbnQuIEkgCj4gYWN0dWFsbHkgZGlkIGFsbCBvZiB0aGUgY29uZmlndXJhdGlvbiwgdHdl
YWtpbmcgYW5kIHVzZXIgdGVzdGluZyBvbiAKPiB0aGUgWDIyMC4gT25jZSB0aGUgc2V0dXAgd2Fz
IHJlYWR5IHRvIHR1cm4gb3ZlciB0byB0aGUgdXNlciwgSSBtYWRlIGFuIAo+IGltYWdlIG9mIHRo
ZSBTU0QgYW5kIHRoZW4ganVzdCBzd2FwcGVkIHRoZSBTU0QgaW50byB0aGUgY29tcHV0ZXIgZm9y
IAo+IHRoZSB1c2VyLiBIZXIgY29tcHV0ZXIgaXMgYWxzbyBhIExlbm92by4gTWludCBib290ZWQg
b24gaGVyIGNvbXB1dGVyIAo+IGFuZCBzaGUgd2FzIG9mZiBhbmQgcnVubmluZy4gSSBhbSBpbXBy
ZXNzZWQgdGhhdCBJIHdhcyBhYmxlIHRvIAo+IGNvbXBsZXRlIHRoZSBzZXR1cCBvZiB0aGUgY29t
cHV0ZXIgd2l0aCByZWxhdGl2ZWx5IGZldyByb2FkYmxvY2tzLiBJIAo+IGFtIGFsc28gaW1wcmVz
c2VkIHdpdGggdGhlIHBlcmZvcm1hbmNlIGFuZCBzdGFiaWxpdHkgb2YgTGludXggTWludCAKPiBN
YXRlLiBUaGUgbmV4dCBzeXN0ZW0gdGhhdCBJIHdpbGwgYmUgY29uZmlndXJpbmcgaXMgc29tZXdo
YXQgbW9yZSAKPiBkZW1hbmRpbmcsIGJ1dCBJIGFtIGNvbmZpZGVudCB0aGF0IEkgd2lsbCBnZXQg
dGhyb3VnaCBpdC4gQXMgd2l0aCB0aGUgCj4gZmlyc3Qgc3lzdGVtLCBJIHdpbGwgYmUgZG9pbmcg
YWxsIG9mIHRoZSB0ZXN0aW5nIGFuZCBjb25maWd1cmF0aW9uIG9uIAo+IG15IHRydXN0eSBvbGQg
WDIyMCB3aXRoIGEgZnJlc2ggU2Ftc3VuZyBFVk8gU1NELgo+IFNvLCBpZiB5b3UgZG8gbm90IGhh
dmUgYSBvbGQgUEMgZ2F0aGVyaW5nIGR1c3QgaW4gYSBjbG9zZXQsIHlvdSBjYW4gCj4gY3JlYXRl
IGEgYm9vdGFibGUgVVNCIGNvbnRhaW5pbmcgTGludXggTWludCBNYXRlIGFuZCB0aGVuIGJvb3Qg
ZnJvbSAKPiB0aGUgVVNCIHN0aWNrIG9uIHlvdXIgZXhpc3RpbmcgV2luZG93cyBjb21wdXRlci4g
V2hlbiB5b3UgYXJlIGRvbmUgCj4gcGxheWluZyB3aXRoIExpbnV4LCBqdXN0IHJlbW92ZSB0aGUg
VVNCIHN0aWNrIGFuZCByZWJvb3QgYmFjayBpbnRvIAo+IFdpbmRvd3MuIEkgYmVsaWV2ZSB0aGF0
IGluIHRoZSBNaW50IGluc3RhbGwgcHJvZ3JhbSwgd2hpY2ggaXMgZnVsbHkgCj4gc2NyZWVuIHJl
YWRlciBhY2Nlc3NpYmxlLCB0aGVyZSBtaWdodCBiZSBhbiBvcHRpb24gd2hlcmUgeW91IGNhbiAK
PiBpbnN0YWxsIExpbnV4IE1pbnQgYWxvbmdzaWRlIHlvdXIgZXhpc3RpbmcgV2luZG93cyBpbnN0
YWxsLiBUaGVuIGF0IAo+IGJvb3QgdGltZSwgeW91IGNhbiBjaG9vc2Ugd2hpY2ggc3lzdGVtIHRv
IGJvb3QgaW4gdG8uIEkgZGlkIG5vdCBkbyAKPiB0aGlzLCBzbyBJIGNhbiBub3QgY29tbWVudCBv
biBob3cgd2VsbCB0aGlzIHdvcmtzLgo+Cj4gT25lIG1vcmUgdGhpbmcuLi5XaGVuIHlvdSBib290
IGludG8gdGhlIFVTQiBzdGljaywgeW91IHdpbGwgaGF2ZSB0byAKPiBwcmVzcyBjb250cm9sK0Fs
dCtTdXBlciAodGhpcyBpcyB3aGF0IGxpbnV4IGNhbGxzIHRoZSBXaW5kb3dzIGtleSkgaW4gCj4g
b3JkZXIgdG8gc3RhcnQgdGhlIE9yY2Egc2NyZWVuIHJlYWRlci4gVGhlICJPcmNhIiBrZXkgaXMg
dGhlIGluc2VydCAKPiBrZXksIGp1c3QgbGlrZSBKYXdzIG9yIE5WREEuIERvIGEgd2ViIHNlYXJj
aCBmb3IgIm9yY2Egc2NyZWVuIHJlYWRlciIgCj4gYW5kIHlvdSB3aWxsIGZpbmQgcGxlbnR5IG9m
IGluZm9ybWF0aW9uIHRvIGhlbHAgZ2V0IHlvdSB1cCB0byBzcGVlZCAKPiB3aXRoIHRoaXMgc2Ny
ZWVuIHJlYWRlci4gSSBhbSBoYXZpbmcgbm8gcHJvYmxlbSBqdW1waW5nIGJldHdlZW4gaXQgYW5k
IAo+IEphd3MvTlZEQS4KPgo+IFRoaXMgZXhwZXJpZW5jZSBoYXMgYmVlbiBlbmpveWFibGUgZm9y
IG1lIGFuZCBJIGhvcGUgdGhhdCBpdCB3aWxsIGJlIAo+IGZvciB5b3UgYWxzby4gRG8gbm90IGhl
c2l0YXRlIHRvIHJlYWNoIG91dCBhcyBvdGhlciBxdWVzdGlvbnMgYXJpc2UuIEkgCj4gY2FuIHRl
bGwgeW91IHRoYXQgZHVyaW5nIHRoZSBwYXN0IG1vbnRoLCBJIGhhdmUgc3BlbnQgbWFueSBob3Vy
cyAKPiBzZWFyY2hpbmcgdGhlIHdlYiBmb3IgYW5zd2VycyB0byB0aGUgbWFueSwgbWFueSBxdWVz
dGlvbnMgdGhhdCBjYW1lIHVwIAo+IGZvciBtZS4gQW5kIHRoZXJlIGlzIGp1c3Qgc28gbXVjaCBp
bmZvIGluIHRoZSB3ZWIgcmVsYXRlZCB0byB1c2luZyBMaW51eC4KPgo+IEJlc3QsCj4gSm9obgo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

