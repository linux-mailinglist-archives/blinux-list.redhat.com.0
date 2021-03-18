Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AA5A1341137
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616111514;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aSh45emnt5IOFM2/yiWyZM8ghCVf2ZTODVvFPcuUV7E=;
	b=MB28cWczMKXrMF3zjhcqnHIAAucHt6ZseNZms7Fj6Th+iA8VO/4Er3cEl6zXm5eA2DzyZm
	tToZv7NhN5k5C/iCDyyyGwA08LhwR1S78TxLL2R/Wo4ju9lb7KtJASUFv2b9ebuq+tp7/A
	DLPW8Rw6FnRtPW2OBPd94jFe3J5ovOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-JpZ4dY7zOliLHjH7uZA2lA-1; Thu, 18 Mar 2021 19:51:52 -0400
X-MC-Unique: JpZ4dY7zOliLHjH7uZA2lA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 87A1881621;
	Thu, 18 Mar 2021 23:51:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A2055C1D1;
	Thu, 18 Mar 2021 23:51:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 194754BB7C;
	Thu, 18 Mar 2021 23:51:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INpk0a029044 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:51:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E1DB32166BA3; Thu, 18 Mar 2021 23:51:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD0472166BA2
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:51:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F2DF811E7F
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:51:41 +0000 (UTC)
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
	[185.70.40.134]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-43-oEyOUFTGOYmY2114trPMlA-1; Thu, 18 Mar 2021 19:51:38 -0400
X-MC-Unique: oEyOUFTGOYmY2114trPMlA-1
Date: Thu, 18 Mar 2021 23:51:30 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Decluttering Thunderbird/other alternatives?
Message-ID: <98e8e3ef-b12e-6856-d08e-68b76c78039e@protonmail.com>
In-Reply-To: <52525960-5269-3d0c-edc2-6750116992ca@gmail.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
	<ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
	<52525960-5269-3d0c-edc2-6750116992ca@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12INpk0a029044
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnkgYWJvdmUsIGRvIHlvdSBtZWFuIHZpc3VhbGx5IG9yIGZyb20gdGFicycgcGVyc3BlY3RpdmU/
CkkgaGF2ZSBUQiBvcGVuZWQgcmlnaHQgbm93LCB3aXRoIHRoZSBpbmJveCBkaXNwbGF5ZWQuCkFu
ZCB0aGVyZSBhcmUgZXhhY3RseSA0IGNvbXBvbmVudHMgb24gdGhlIHNjcmVlbiBpbiB0aGlzIG9y
ZGVyOgoqIFRhYnMgc2VsZWN0b3IsIHdpdGggdGhlIEluYm94IHRhYiBzZWxlY3RlZAoqIEZpbHRl
ciBlZGl0IGZpZWxkCiogTmF2aWdhdGlvbiB0cmVlIHdpdGggdGhlIGFjY291bnRzIGFuZCBmb2xk
ZXJzIHN0cnVjdHVyZQoqIE1lc3NhZ2VzIGxpc3QKCkFuZCB0aGF0J3MgYWxsLiBTaW5jZSBJIGRv
bid0IHJlYWxseSBuZWVkIG5laXRoZXIgdGFicyBub3IgdGhlIGZpbHRlciwKSSdtIGJhc2ljYWxs
eSB3b3JraW5nIHdpdGggdHdvIGNvbXBvbmVudHMsIG9uZSBmb2xsb3dpbmcgdGhlIG90aGVyLgpU
aGlzIHdhcyB0aGUgaW4gZmFjdCBkZWZhdWx0IHN0YXRlIGFmdGVyIGluc3RhbGxhdGlvbiwgYWxs
IEkgZGlkIHdhcwp0dXJuaW5nIG9mIHRoZSBtZXNzYWdlcyBwcmV2aWV3IGJ5IHByZXNzaW5nIEY4
IGFuZCBzZXR0aW5nIG5ldyBtZXNzYWdlcwp0byBhcHBlYXIgaW4gYSBzZXBhcmF0ZSB3aW5kb3cu
CgpOb3RoaW5nIHJlYWxseSBjb21wbGljYXRlZC4KClRoZSBuZXcgbWVzc2FnZSB3aW5kb3cgY29u
dGFpbnMgdGhlIHJlY2lwaWVudCBmaWVsZCwgc3ViamVjdCBmaWVsZCBhbmQKbWVzc2FnZSBmaWVs
ZC4gVGhlcmUgYXJlIGZldyBvdGhlciBjb21wb25lbnRzIHdoZW4gcHJlc3Npbmcgc2hpZnQrdGFi
CmZyb20gdGhlIHJlY2lwaWVudCBmaWVsZCwgYnV0IHNpbmNlIEkgdXN1YWxseSBkb24ndCBuZWVk
IHRoZW0gYW5kIHRoZQpmb2N1cyBhbHJlYWR5IGJlZ2lucyBpbiB0aGUgcmVjaXBpZW50IGZpZWxk
IGFmdGVyIG9wZW5pbmcgdGhlIHdpbmRvdywKSXQncyBhZ2FpbiBub3QgYSBwcm9ibGVtLgoKQmVz
dCByZWdhcmRzCgpSYXN0aXNsYXYKCkTFiGEgMTkuIDMuIDIwMjEgbyAwOjM2IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSSdtIHVzaW5nIHRoZSBsYXRl
c3QgVGh1bmRlcmJpcmQgb24gVWJ1bnR1IE1hdGUgMjAuMDQsIGFuZCB5ZXMgdGhlIHRvZGF5Cj4g
cGFuZSBpcyB3aGF0IEknbSByZWZlcmluZyB0bywgd2hpY2ggcHV0IGEgY2FsZW5kYXIgYWJvdmUg
dGhlIGZvbGRlcgo+IGxpc3QsIGFuZCB0aGUgZmlsdGVyIG1lc3NhZ2VzL3NlYXJjaCBiYXIuIFdo
aWNoIGlzIGluZmluaXRlbHkgYW5ub3lpbmcKPiBzaW5jZSBNb3ppbGxhIGRlY2lkZWQgdG8gaGF2
ZSBpdCBvbiBieSBkZWZhdWx0LCBhbmQgdGhpcyB3YXMgcHVibGljaXplZAo+IGJlZm9yZSB0aGUg
bGF0ZXN0IHVwZGF0ZSBvZiBUaHVuZGVyYmlyZC4KPgo+IE9uIHRoZSBzdWJqZWN0IG9mIEFscGlu
ZS9NdXR0LCBJJ20gcnVubm5pbmcgaW50byBpc3N1ZXMgd2l0aCBHbWFpbAo+IGdpdmluZyBtZSBj
cml0aWNhbCBzZWN1cml0eSBpc3N1ZXMgZHVlIHRvIGhvdyBNdXR0L0FscGluZSBoYW5kbGUKPiBh
dXRoZW50aWNhdGluZyB0aGluZ3MsIHNvIFRpbSwgYW55IGlkZWFzPwo+Cj4gT24gMTgvMDMvMjAy
MSAyMzoxOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gaGV5
IHRoZXJlLAo+Pgo+PiBobW0sIEknbSBhZmZyYWlkIEkga2luZCBvZiBkb24ndCB1bmRlcnN0YW5k
IGl0Lgo+Pgo+PiBIb3cgZXhhY3RseSBpcyBUaHVuZGVyYmlyZCBjbHV0dGVyPwo+Pgo+Pgo+PiBB
cyBmb3IgTGlnaHRuaW5nLCB5ZXMsIGl0IHVzZWQgdG8gYmUgdGhlcmUsIGJ1dCBpdCB3YXMgbmV2
ZXIgYXBwZWFyaW5nCj4+IGFueXdoZXJlIG5lYXIgdGhlIGNvbXBvbmVudHMgdXNlZCBmb3IgbmF2
aWdhdGlvbiwgYW5kIHdhcyBzbyBpbnZpc2libGUsCj4+IHRoYXQgSSBkb24ndCByZW1lbWJlciBl
dmVyIHNlZWluZyBpdC4KPj4KPj4gSW4gZmFjdCwgSSBkb24ndCBldmVuIGtub3csIHdoZXRoZXIg
aXQgaXMgc3RpbGwgaGVyZSBvciBub3QuIDpECj4+Cj4+IFRoZXJlIHdlcmUgdmFyaW91cyBjaGFu
Z2VzLCBhbmQgSSBkb24ndCByZW1lbWJlciB3aGF0J3MgdGhlIGN1cnJlbnQKPj4gcmVzb2x1dGlv
bi4KPj4KPj4KPj4gQXMgZm9yIHRoZSBuZXcgbWVzc2FnZSB3aW5kb3csIHdoYXQgdmVyc2lvbiBv
ZiBUQiBkbyB5b3UgdXNlPwo+Pgo+PiBJbiA3OCsgcmVsZWFzZXMsIHRoZSByZWNpcGllbnQgZmll
bGQgd2FzIHJlcGxhY2VkIGJ5IGEgbmV3b25lLCB3aGljaAo+PiBhbGxvd3MgeW91IHRvIHdyaXRl
IGV2ZXJ5dGhpbmcgdG8gdGhhdCBvbmUgcGxhY2UuCj4+Cj4+IFJpZ2h0IGFmdGVyIGZpbmlzaGlu
ZyB0aGUgYWRkcmVzcyBhbmQgdGFiYmluZyBvciBtYXkgYmUgcHJlc3Npbmcgc29tZQo+PiBrZXkg
KEkgZGlkIG5vdCBjaGVjayksIGl0IGRpc2FwcGVhcnMgYW5kIG5leHRvbmUgY2FuIGJlIHdyaXR0
ZW4sIGlmIHlvdQo+PiB3aXNoIHRoZSBtZXNzYWdlIHRvIGJlIHNlbmQgdG8gYW55b25lIGVsc2Uu
Cj4+Cj4+Cj4+IFNvIGluIHByYWN0aWNlLCB5b3UgbmVlZCBqdXN0IG9uZSB0YWIgdG8gZ2V0IHRv
IHRoZSBzdWJqZWN0IGZpZWxkLgo+Pgo+Pgo+PiBJbiBnZW5lcmFsLCBJJ20gcGVyc29uYWxseSBy
ZWFsbHkgc2F0aXNmaWVkIHdpdGggVEIuIEl0IHBlcmhhcHMgY291bGQgYmUKPj4gYSBsaXR0bGUg
Yml0IGZhc3RlciB3aXRoIGltYXAgYWNjb3VudHMsIGJ1dCBzaW5jZSBJIHVzZSBQcm90b25tYWls
LAo+PiB3aGljaCBwcm92aWRlcyBpdHMgb3duIGFwcCB0byBjcmVhdGUgYSBsb2NhbCBpbWFwIHNl
cnZlciBmb3IgZW5kIHRvIGVuZAo+PiBpbmJveCBlbmNyeXB0aW9uIC8gZGVjcnlwdGlvbiwgdGhh
dCBkb2Vzbid0IHJlYWxseSBib3RoZXIgbWUgYXMgbG9jYWwKPj4gc29ja2V0cyBoYXZlIHByYWN0
aWNhbGx5IG5vIHNwZWVkIGxpbWl0cy4KPj4KPj4KPj4gQmVpbmcgYWJsZSB0byBzb3J0IGUtbWFp
bHMgdG8gdGhyZWFkcyAoaW4gYSBsb2dpY2FsIHdheSwgdW5saWtlCj4+IEV2b2x1dGlvbiksIHJl
Y2VpdmUgUlNTIG5ld3MgYW5kIHdyaXRlIGVNYWlscyBpbiBNYXJrZG93biwgSSBwZXJzb25hbGx5
Cj4+IGN1cnJlbnRseSBkb24ndCBoYXZlIGFueSByZWFzb25zIHRvIHNlYXJjaCBhbHRlcm5hdGl2
ZXMsIGV4Y2VwdCBteQo+PiBjdXJpb3NpdHkuIDopCj4+Cj4+Cj4+IEJlc3QgcmVnYXJkcwo+Pgo+
Pgo+PiBSYXN0aXNsYXYKPj4KPj4KPj4gRMWIYSAxOC4gMy4gMjAyMSBvIDE2OjAxIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+PiBTbyBpcyB0aGVyZSBh
IHdheSBJIGNhbiBkZWNsdXR0ZXIgVGh1bmRlcmJpcmQgdG8gYmUgc2ltcGxlci9lYXNpZXIgdG8K
Pj4+IG5hdmlnYXRlPyBJIGRvbid0IC9uZWVkLyBMaWdodG5pbmd0YWtpbmcgdXAgc3BhY2UsIG9y
IGhhdmluZyB0byB0YWIKPj4+IHR3aWNlIGluIHdyaXRpbmcgYSBtZXNzYWdlIHRvIGdldCB0byB0
aGUgc3ViamVjdCBmaWVsZC4KPj4+Cj4+PiBTbyBjYW4gSSBkbyBhbnl0aGluZyB0byBkZWNsdXR0
ZXIgVGh1bmRlcmJpcmQuIE9yIGFyZSB0aGVyZSBhbnkKPj4+IGFsdGVybmF0aXZlIGVtYWlsIHBy
b2dyYW1zIHRoYXQgYXJlIGp1c3QgYXMgZ29vZCBhcyBUaHVuZGVyYmlyZCB0aGF0Cj4+PiB3b3Jr
IGdyZWF0IHdpdGggT3JjYT8KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

