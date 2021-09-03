Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AF0DE400794
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 23:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630705871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dqx1af0/MeJhQJlmERrwo95lnfAJatAGmAP+1WiznCw=;
	b=LYlqXyUu1p+P+1jutdFw8FBHLRIi7cZ2kVmO6eTe2di/IzEE8WcSrjEVJNvzx6l8Dw2xXm
	vu+94WKeXt/nOot8k/CqCOeXlgiz2VnGHsZsJG7ygNNclb7ZrIIXSbfE/Dsy4WOMh52knQ
	nzbJixveyADzHwemh1R37ItxtaGDttE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-_dqBS6yEOd69fmHWvc6tiA-1; Fri, 03 Sep 2021 17:51:10 -0400
X-MC-Unique: _dqBS6yEOd69fmHWvc6tiA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47A1280198A;
	Fri,  3 Sep 2021 21:51:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F95617A98;
	Fri,  3 Sep 2021 21:51:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C13FE18087F1;
	Fri,  3 Sep 2021 21:50:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 183LoqoU001002 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 17:50:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 945751014B0C; Fri,  3 Sep 2021 21:50:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FAA510BC29B
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 21:50:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46AA7101A529
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 21:50:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-299-piFUob9jMbmz6tHy7y6g-A-1;
	Fri, 03 Sep 2021 17:50:47 -0400
X-MC-Unique: piFUob9jMbmz6tHy7y6g-A-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0A929A1CAA
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 21:50:32 +0200 (CEST)
Message-ID: <ce62a0c7-21ed-f6eb-34c5-bdfcca1e0244@slint.fr>
Date: Fri, 3 Sep 2021 23:50:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.0.3
Subject: Re: https://blindcomputing.org/ status
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
	<75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
	<40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
	<alpine.NEB.2.23.451.2109031453280.25910@panix1.panix.com>
	<97AB29A4-7FA4-4D44-A975-934C2B47980E@gmail.com>
In-Reply-To: <97AB29A4-7FA4-4D44-A975-934C2B47980E@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 183LoqoU001002
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRXJpYywKCkkgYW0gZ2xhZCB5b3UgbGlrZSBTbGludC4KCkFzIGFuIGFzaWRlIEkgcGxhbiB0
byB1cGdyYWRlIE1hdGUgZm9yIFNsaW50IHRvIDEuMjYgdGhpcyB3ZWVrIGVuZC4gVGhpcyAKd2ls
bCBiZSBtZW50aW9uZWQgaW4gdGhlIENoYW5nZUxvZzogCmh0dHBzOi8vc2xhY2t3YXJlLnVrL3Ns
aW50L3g4Nl82NC9zbGludC0xNC4yLjEvQ2hhbmdlTG9nLnR4dCBhbmQgYWxzbyAKYW5ub3VuY2Vk
IGluIG91ciBtYWlsaW5nIGxpc3QuCgpBbnlvbmUgaW50ZXJlc3RlZCB3aWxsIGZpbmQgaW5mb3Jt
YXRpb24gaW4gCmh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwsIHRoZSBzdXBwb3J0
IHByb3ZpZGVkIGlzIGRlc2NyaWJlZCBpbiAKICBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sI19zdXBwb3J0LgoKb3VyIHdlYnNpdGUgbmVlZHMgdG8gYmUgY29tcGxldGVseSByZXN0
cnVjdHVyZWQsIG1lYW53aGlsZSB0aGUgSGFuZEJvb2sgCmlzIHRoZSBiZXN0IHNvdXJjZSBvZiBp
bmZvcm1hdGlvbi4KCkFib3V0IEJsaW5kIENvbXB1dGluZyBJIGp1c3QgZG93bmxvYWRlZCB0aGlz
IElTTzogCmh0dHBzOi8vZG93bmxvYWRzLmJsaW5kY29tcHV0aW5nLm9yZy9ibGluZGFyY2gvQmxp
bmRBcmNoLTIwMjAuMTEuMjgteDg2XzY0LmlzbwoKUWVtdSBzYXlzIGl0J3Mgbm90IGJvb3RhYmxl
LCBnYW1lIG92ZXIgZm9yIG1lLgoKQ2hlZXJzLApEaWRpZXIKCkxlIDAzLzA5LzIwMjEgw6AgMjI6
MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIbW1t
LAo+IFdlbGwsIGlmIHlvdSBoYXZlIGEgc2VwYXJhdGUgbWFjaGluZSAob3IgZXZlbiBhIHBhZCks
IHlvdSBjYW4gdHJ5IHRvIGRvd25sb2FkIGFub3RoZXIgaW1hZ2UuIElmIGl0IGRpZmZlcnMgb24g
dGhhdCBzeXN0ZW0gZnJvbSB0aGUgb25lcyB5b3UgaGF2ZSBvbiB5b3VyIGN1cnJlbnQgbWFjaGlu
ZSwgdGhlbiBwcm9iYWJseSB5b3UgaGFkIGEgYmFkIGRvd25sb2FkLiBIYXZlIHlvdSB0cmllZCBh
bm90aGVyIHNvdXJjZSBmb3IgdGhlIHNhbWUgaW1hZ2U/IFVzdWFsbHksIGlmIHlvdSBoYXZlIHBy
b2JsZW1zIHdpdGggZG93bmxvYWRlZCBmaWxlcyBmcm9tIG9uZSBzb3VyY2UsIGl0IGlzIG5vdCBh
cyBsaWtlbHkgdGhhdCB0aGUgc2FtZSBlcnJvciB3aWxsIGNyb3AgdXAgZWxzZXdoZXJlICh1bmxl
c3MgdGhleSBhcmUgc2VuZGluZyB0aGUgc2FtZSBpbWFnZSB0byBhbGwgc291cmNlcykuCj4gCj4g
QWxzbywgeW91IG1pZ2h0IHRyeSAxIHZlcnNpb24gYmFjayBhbmQgdGhlbiBlZGl0IHRoZSBhcHBy
b3ByaWF0ZSBmaWxlcyBpbiBldGMgdG8gZG8gYSBEaXN0cmlidXRpb24gdXBncmFkZSBpbiBwbGFj
ZS4gSSBoYXZlIGhhZCB0byBkbyB0aGF0IHdpdGggVUJVTlRVIGFmdGVyIHRoZXkgd2VudCB0byB0
aGVpciBuZXcgaW5zdGFsbGVyLiBCZWxpZXZlIG1lLCBhZnRlciBzZXZlcmFsIGhvdXJzIG9mIHB1
bGxpbmcgbXkgaGFpciBvdXQsIEkgc2VudCBhIG5vdCBzbyBwb2xpdGUgZW1haWwgdG8gdGhlIG1h
aW50YWluZXJzIG9mIFVidW50dSBhbmQgZG93bmxvYWRlZCBTTElOVCBpbnN0ZWFkLiBNdWNoIG5p
Y2VyIGV4cGVyaWVuY2UgSU1ITy4KPiAKPiAtRXJpYwo+IAo+IAo+PiBPbiBTZXAgMywgMjAyMSwg
YXQgMTE6NTcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBzdGF0dXMgaXNuJ3QgcGFydCBvZiB0aGF0IHVy
bCwgaXQncyBnb3QgYSBzcGFjZSBpbiBmcm9udCBvZiBpdCBhbmQgdGhhdAo+PiBzaG91bGQgaGF2
ZSBlbmRlZCB0aGUgdXJsLgo+PiBJIHJhbiBzaGE1MTJzdW0gLS10YWcgb24gdGhlIGlzbyBhbmQg
c2VudCB0aGF0IHRvIGZhaWwudHh0Lgo+PiBUaGVuIEkgZGVsZXRlZCB0aGUgaXNvIGFuZCBkb3du
bG9hZGVkIGl0IGFnYWluIGFuZCByYW4KPj4gc2hhNTEyc3VtIC0tdGFnIGlzbyA+dGVzdC50eHQK
Pj4gVGhlbiBJIHJhbiBkaWZmIC1zIGZhaWwudHh0IHRlc3QudHh0IGFuZCB3YXMgdG9sZCB0aGUg
dHdvIGZpbGVzIHdlcmUKPj4gaWRlbnRpY2FsLgo+PiBTbyBvbmUgb2YgdHdvIHRoaW5ncyBoYXBw
ZW5lZCBhbmQgSSBjYW4ndCBwcm92ZSBlaXRoZXIuCj4+IEVpdGhlciBJIGdvdCBhIGdvb2QgZG93
bmxvYWQgYm90aCB0aW1lcyBvciBhIGJhZCBkb3dubG9hZCBib3RoIHRpbWVzLgo+PiBIYWQgdGhv
c2UgZmlsZXMgYmVlbiBkaWZmZXJlbnQsIEkgbWlnaHQgaGF2ZSB0cmllZCBpbnN0YWxsaW5nIHdp
dGggdGhlCj4+IHNlY29uZCBpc28uCj4+Cj4+Cj4+IE9uIEZyaSwgMyBTZXAgMjAyMSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+IE1pZ2h0IGJlIHNvbWV0
aGluZyBnb2luZyBvbiBpbiB0aGF0IHBhcnRpY3VsYXIgdmVyc2lvbiBvZiBGaXJlZm94LiBJIGFt
IG9uIE9TIFggaGVyZSBhcyBteSBwcmltYXJ5IGFuZCB0aGUgU2FmYXJpIHdlYiBicm93c2VyIGRv
ZXNuP3QgcmVwb3J0IGFueSBpc3N1ZXMgc28gZmFyLiBBbHNvLCB0aGUgL3N0YXR1cyBhdCB0aGUg
ZW5kIG9mIHRoZSBsaW5rIHByb3ZpZGVkIGluIHRoZSBzdWJqZWN0IGFib3ZlIGxlYWRzIHRvIGEg
NDA0IGVycm9yLiBCdHcsIEZpcmVmb3ggaXNuP3QgdmVyeSBibGluZCB1c2VyIGZyaWVuZGx5IG9u
IGFueXRoaW5nIG90aGVyIHRoYW4gd2luZG93cyBvciBMaW51eC4gT24gT1MgWCwgaXQ/cyBhIHJl
YWwgUElUQSBhbmQgbm90IHdvcnRoIGV2ZW4gZGVhbGluZyB3aXRoLgo+Pj4KPj4+IEJ0dywgSSB1
c2UgRmlyZWZveCBvbiBTTElOVCBoZXJlIChJIHdvbj90IGdvIGJhY2sgdG8gVWJ1bnR1IGFmdGVy
IHRoZXkgd2VudCB3aXRoIHRoZSBpbmFjY2Vzc2libGUgaW5zdGFsbGVyKS4KPj4+Cj4+PiAtRXJp
Ywo+Pj4KPj4+Cj4+Pj4gT24gU2VwIDMsIDIwMjEsIGF0IDE6NDUgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+
Cj4+Pj4gRm9yIHByb2JsZW1zLCBzdWdnZXN0aW9ucyBldGMuIHdpdGggYmxpbmRjb21wdXRpbmcu
b3JnIHlvdSBtYXkgY29udGFjdCB0aGUgbWFpbnRhaW5lciBhdCBnaXRodWIuCj4+Pj4gaHR0cHM6
Ly9naXRodWIuY29tL2JsaW5kLWNvbXB1dGluZwo+Pj4+Cj4+Pj4gSFRILAo+Pj4+IGd1ZW50ZXIK
Pj4+Pgo+Pj4+IEFtIDAzLjA5LjIxIHVtIDA1OjU1IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4gQSBibG9nIHdpdGggbm8gY29udGVudCwKPj4+Pj4gQSBj
b21tZW50cyBzZWN0aW9uIG5vdCBwb3NzaWJsZSB0byB1c2UsCj4+Pj4+IHRoZSBjb21tZW50cyBt
YW5hZ2VtZW50IGNvbXBhbnkgaXMgd2hlcmUgeW91IGVuZCB1cCBhZnRlciBnaXZpbmcgdGhhdCBz
aXRlCj4+Pj4+IGFuIGVtYWlsIGFkZHJlc3MgYW5kIHRoYXQgc2l0ZSBpcyBkaXJlY3RlZCBhdCBn
ZXR0aW5nIG1vcmUgYnVzaW5lc3MgZm9yCj4+Pj4+IHRoZSBjb21tZW50cyBtYW5hZ2VyIHNpdGUg
YW5kIHlvdSBkb24ndCBnZXQgYmFjayB0byB0aGUgb3JpZ2luYWwgd2Vic2l0ZQo+Pj4+PiB0byBs
ZWF2ZSBhbnkgY29tbWVudHMuCj4+Pj4+IEFsbCBpbiBhbGwsIGEgdmVyeSBkb2RnZXkgb3BlcmF0
aW9uIHNvIGZhciBhcyBJIGNhbiBmaWd1cmUuCj4+Pj4+IFRoaXMgd2FzIGFmdGVyIHVzaW5nIGZp
cmVmb3ggdG8gbG9nIGludG8gdGhlIHNpdGUgYW5kIG5vIGl0IHdhc24ndCB3b3J0aAo+Pj4+PiB0
aGUgZmlyZWZveCBsb2dpbiBvciB0aGUgZXh0cmEgdGltZSBpdCB0b29rIHRvIGZpbmQgYWxsIG9m
IHRoaXMgb3V0Lgo+Pj4+Cj4+Pj4KPj4+PiAtLQo+Pj4+IC4KPj4+Pgo+Pj4+Cj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pgo+
Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

