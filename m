Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A515847429D
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 13:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639485234;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o+J55jTT5vJNtKFZJsP2RbTxVz0z73F6kAywalcyLmc=;
	b=d+bpIi0XOR8Tzd6FfA3WBJje22BaooSlZNtcLrhYTpkCOh9uZgWkmO9yD8a0Aj4x8HZnFV
	rjQnGzzOejM0NwwTOprZFedtKviUGjSML3t4vpjWRdk92Qk6N5pmsWp/lsfcpQ3ay0slmK
	WH1Ibu6ukq8BaimnXvgybvtEORTaXqQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-115-8tLXmjR_OZ6I5UQ8bm_AZg-1; Tue, 14 Dec 2021 07:33:49 -0500
X-MC-Unique: 8tLXmjR_OZ6I5UQ8bm_AZg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A3B5801962;
	Tue, 14 Dec 2021 12:33:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09FBA5E279;
	Tue, 14 Dec 2021 12:33:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF2574CA93;
	Tue, 14 Dec 2021 12:33:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BECVpCp028324 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 07:31:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7B4A4401E22; Tue, 14 Dec 2021 12:31:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77C93401E20
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:31:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E42185A5B9
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:31:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-54-TtzWCUD-MZi5SkItcAMNLg-1; Tue, 14 Dec 2021 07:31:49 -0500
X-MC-Unique: TtzWCUD-MZi5SkItcAMNLg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JCyRm448qz4249
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 07:31:48 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JCyRm3ZBZzcbc; Tue, 14 Dec 2021 07:31:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JCyRm39gGzcbP
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 07:31:48 -0500 (EST)
Date: Tue, 14 Dec 2021 07:31:48 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BECVpCp028324
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SmVudXggZ2V0cyByZWd1bGFyIHVwZGF0ZXMgbGF0ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRo
YXQgY2hhbmdlZCB0b2RheS4KRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/ICBJZiBJ
IGZpbmQgYW4gLnNoYTUxMiBmaWxlIGZpbGUgZm9yIGFuCmlzbywgSSB3b24ndCBpbnN0YWxsIHRo
ZSBpc28gd2l0aG91dCBmaXJzdCB2ZXJpZnlpbmcgaXQgd2l0aCB0aGUgLnNoYTUxMgpmaWxlLiAg
U28gdHdvIHBvdGVudGlhbCBwcm9ibGVtcyBub3QgdXNpbmcgY3VycmVudCBKZW51eCBpbnN0YWxs
IGlzbyBvcgpmYWlsZWQgdG8gdmVyaWZ5IGlzby4gIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3
byBwcm9ibGVtcywgcGxlYXNlIHdyaXRlCmRubC5uYXNoQGdtYWlsLmNvbSBhbmQgbGV0IGhpbSBr
bm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiB5b3VyCmluc3RhbGwgZmFpbC4gIFRo
YXQgb25lIGlzIHRoZSBkZXZlbG9wZXIuCgoKT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGksCj4KPgo+IEplbnV4IGZhaWxl
ZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tpcCBmb3Igbm93LCB0aGF0
IGlzIHVubGVzcwo+IHRoZSBkZXYgYWN0dWFsbHkgZml4ZXMgdGhlIHRoaW5nLgo+Cj4KPiBJIGFt
IG9uIEZlZG9yYSwgZm9yIG5vdywgYmVjYXVzZSBpdCB3YXMgdGhlIG5lYXJlc3QgVXNiIHN0aWNr
IEkgY291bGQgZ3JhYgo+IHF1aWNrbHkuCj4KPgo+IEkgbWlnaHQganVzdCBnaXZlIHRoZSB2YW5p
bGxhIEFyY2ggSVNPIGFub3RoZXIgZ28uIFdoeSBub3Q/Cj4KPiBPbiAyMDIxLzEyLzE0IDEzOjA1
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gwqBvciBNYW5q
YXJvIEFyY2hpdGVjdC4KPiA+Cj4gPiBQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNjZXNzIHdpdGgg
dGhlIHZhbmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlkZWQKPiA+IGluc3RhbGxlciAodGhlIGFy
Y2hpbnN0YWxsIG9uZSksIEkganVzdCBzZXQgaXQgdG8gYm9vdCB1cCB0YWxraW5nLCB3ZW50Cj4g
PiB0aHJvdWdoIGl0IGFuZCBhZGRlZCBpbiBhbHNhLXV0aWxzL2VzcGVha3VwIGFuZCB0aGVuIHB1
dAo+ID4gc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1hbmFnZXIg
b24gb25jZSB0aGUgc3lzdGVtIHdhcwo+ID4gaW5zdGFsbGVkLgo+ID4KPiA+Cj4gPiBKZW51eCBo
YXMgbmV2ZXIgcmVhbGx5IHdvcmtlZCBmb3IgbWUgb24gYSBWTSBvciBiYXJlIG1ldGFsIGF0IGFs
bCwgd2hlcmVhcwo+ID4gdGhlIG9mZmljaWFsIGFyY2ggSVNPIGlzIHdvcmtpbmcgcmF0aGVyIHdl
bGwsIGFuZCBJIGR1bm5vIGlmIHRoZSBBcmNoaXRlY3QKPiA+IGVkaXRpb24gaXMgMzYvNjQgYml0
IG9yIDMyYml0IG9ubHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRseSwgSSd2ZSBnb3QgYQo+ID4g
NjRiaXQgVUVGSSBzeXN0ZW0gc28gdGhlIG9mZmljaWFsIElTbyB3b3JrcyBmbGF3bGVzc2x5IG9u
IGl0IGhvd2V2ZXIsIGJ1dAo+ID4gWU1NViBvbiB0aGF0IG9uZVllcywgYnV0IHlvdSBwcm9iYWJs
eSBkb24ndCB3YW50IHRvIGhlYXIgaXQgaWYgeW91IGFyZSBzZXQKPiA+IG9uIHVzaW5nIEplbnV4
IGhvd2V2ZXIuCj4gPgo+ID4gT24gMTIvMTQvMjEgMDk6MTgsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4gSGkgYWxsLAo+ID4+Cj4gPj4gSSBkZWNpZGVkIHRv
IGdpdmUgSmVudXggYW5vdGhlciBnbywgbGFzdCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIHRyaWVk
LCBJCj4gPj4gY291bGRuJ3QgZ2V0IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGluIHRv
IHRoZSBzeXN0ZW0uCj4gPj4KPiA+PiBEb2VzIGFueW9uZSBoYXZlIGFueSBhZHZpY2U/Cj4gPj4K
PiA+PiBBbHNvLCBpZiB0aGlzIGRvZXNuJ3Qgd29yayBvdXQsIGlzIHRoZXJlIGEgZ3VpZGUgZm9y
IGRvaW5nIGEgTWFuamFybwo+ID4+IGFyY2hpdGVjdCBpbnN0YWxsPyAiTWFuamFybyBUYWxraW5n
IiBnb3QgdXBkYXRlZCBhIGxpdHRsZSB3aGlsZSBhZ28sIGFuZAo+ID4+IGlmLCBhcyBJIHNhaWQs
IEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhhdCBvbmUgYSBnby4K
PiA+Pgo+ID4+IFRoYW5rcyBzbyBsb25nLgo+ID4+Cj4gPj4gV2FybSByZWdhcmRzLAo+ID4+Cj4g
Pj4gQnJhbmR0IFN0ZWVua2FtcAo+ID4+Cj4gPj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4g
Pj4KPiA+PiBDb250YWN0Ogo+ID4+Cj4gPj4gUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVs
Oi8vKzI3NjA1MjU5MTgxPgo+ID4+Cj4gPj4gRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwu
Y29tIDxtYWlsdG86YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20+Cj4gPj4KPiA+PiBUd2l0dGVy
OiBAYnJhbmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2Ft
cD4KPiA+Pgo+ID4+Cj4gPj4KPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

