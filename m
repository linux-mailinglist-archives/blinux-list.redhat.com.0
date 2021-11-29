Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 505E0462324
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638220872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qIIX6RZYzv/JVdTXDbO4X6OW1y4418Xl5j3ga3VGgpU=;
	b=ic/6A3Kb7hXnz9vHYBFte9Gw2pPMcbmNTpgrCsOPcMAssZAtBC8Jh/caf6e/baFfFQbLsz
	viWkNq40SNzzc00saDplxnFsJY2KPH0JvG2gtmmWCgCsPDy7ZYe2eCC0wau1/tnysA8BSy
	ZPZMiwYs9BZtrdMFi5us48qyLN+oXCM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-284-jCzF4Yf-OsiD88oxp4bUeQ-1; Mon, 29 Nov 2021 16:21:08 -0500
X-MC-Unique: jCzF4Yf-OsiD88oxp4bUeQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6710D1927800;
	Mon, 29 Nov 2021 21:21:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B0F2100AE22;
	Mon, 29 Nov 2021 21:21:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40DD61809C89;
	Mon, 29 Nov 2021 21:20:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLKr1Z008299 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:20:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 694CF51E1; Mon, 29 Nov 2021 21:20:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6402A51E2
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:20:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E360802813
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:20:50 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-576-k7NBGGlXOuaUmbBctSf53w-1;
	Mon, 29 Nov 2021 16:20:48 -0500
X-MC-Unique: k7NBGGlXOuaUmbBctSf53w-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 164C2A4394
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:20:06 +0100 (CET)
Message-ID: <27ccbbb6-7869-b7b6-4e5a-dda387e941ec@slint.fr>
Date: Mon, 29 Nov 2021 22:20:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<20211129144207.7dfb0e16@bigbox.attlocal.net>
	<alpine.NEB.2.23.451.2111291607200.10210@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111291607200.10210@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ATLKr1Z008299
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

QWxsIGVkaXRvcnMgbGlzdGVkIGluIHRoaXMgdGhyZWFkIHNvIGZhciBhcmUgYXZhaWxhYmxlIG91
dCBvZiB0aGUgYm94IGluIApTbGludC4KTm90IHN1cmUgeW91IGNhbiBhZmZvcmQgdGhlIHRpbWUg
bmVlZGVkIHRvIHRyeSB0aGVtIGFsbCwgdGhvdWdoIDspCgpDaGVlcnMsCkRpZGllcgoKTGUgMjkx
MS8yMDIxIMOgIDIyOjA4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4gZXggYW5kIHRoYXQncyBhdmFpbGFibGUgd2hlcmVldmVyIHZpbW0gaXMgaW5zdGFs
bGVkIGFuZCBpZiB5b3Uga25vdyBob3cgdG8KPiB1c2UgZWQsIGV4IHdvcmtzIHZlcnkgbXVjaCBs
aWtlIGl0Lgo+IAo+IAo+IE9uIE1vbiwgMjkgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IFRpbSBoZXJlLiAgSXQgcmVhbGx5IGRlcGVuZHMg
b24gd2hhdCBlbnZpcm9ubWVudCB5b3UncmUgaW4sIGhvdyBtdWNoCj4+IHBvd2VyIHlvdSBuZWVk
LCBob3cgY3VzdG9taXphYmxlIHlvdSBuZWVkIGl0IHRvIGJlLCBhbmQgaG93IHlvdQo+PiB0aGlu
ay9vcGVyYXRlL3VzZS1hLXNjcmVlbi1yZWFkZXIuCj4+Cj4+IC0gdmkvdmltOiB2ZXJ5IHBvd2Vy
ZnVsLCBzaG91bGQgYmUgYXZhaWxhYmxlIG91dCBvZiB0aGUgYm94IG9uIG1vc3QKPj4gICAgaW5z
dGFsbHMsIGJ1dCBhIGJpdCBvcGFxdWUuICBUaGlzIGlzIG15IGRhaWx5IGRyaXZlciBmb3IKPj4g
ICAgdGV4dC1lZGl0aW5nLgo+Pgo+PiAtIGVtYWNzOiBhbHNvIHZlcnkgcG93ZXJmdWwsIHRoZSBz
Y3JpcHRpbmcgbGFuZ3VhZ2UgaXMgTElTUCBhbmQgdmVyeQo+PiAgICBjdXN0b21pemFibGU7IGRv
ZXNuJ3QgY29tZSBvdXQtb2YtdGhlLWJveCBvbiBtb3N0IGluc3RhbGxzLCBidXQgY2FuCj4+ICAg
IGJlIGVhc2lseSBhZGRlZAo+Pgo+PiAtIG5hbm86IGEgbXVjaCBsb3dlciBsZWFybmluZyBjdXJ2
ZSwgYnV0IGFsc28gYSBtdWNoIGxvd2VyIGNlaWxpbmcuCj4+ICAgIFRoZXJlIGFyZSB0aGluZ3Mg
dGhhdCBJIGRvIHJlZ3VsYXJseSB3aXRoIHZpL3ZpbSB0aGF0IHdvdWxkIGJlCj4+ICAgIGltcG9z
c2libGUgd2l0aCBuYW5vCj4+Cj4+IC0gZWQ6IHRoZSBjbGFzc2ljIGxpbmUtYmFzZWQgZWRpdG9y
LiAgSXQgKnNob3VsZCogYmUgYXZhaWxhYmxlCj4+ICAgIG91dC1vZi10aGUtYm94IG9uIGV2ZXJ5
IHN5c3RlbSBzaW5jZSBpdCdzIHBhcnQgb2YgdGhlIFBPU0lYCj4+ICAgIHNwZWNpZmljYXRpb24s
IGJ1dCBhIGxvdCBvZiBkaXN0cm9zIGhhdmUgcmVsZWdhdGVkIGl0IHRvIGEgcGFja2FnZQo+PiAg
ICB5b3UgaGF2ZSB0byBpbnN0YWxsIGFmdGVyIHRoZSBmYWN0LiAgSXQncyBsaW5lLWJhc2VkLCBz
byBpdCBoYXMgYQo+PiAgICBtdWNoIG1vcmUgaW5wdXQvb3V0cHV0IGJhc2VkIGZlZWwgdG8gaXQg
d2hpY2ggY2FuIHdvcmsgbW9yZQo+PiAgICBjb21mb3J0YWJseSB3aXRoIGEgc2NyZWVuLXJlYWRl
ciwgd2l0aG91dCB0aGUgbmVlZCB0byByZXZpZXcgdGhlCj4+ICAgIHNjcmVlbiAobGlrZSB0aGUg
b3RoZXIgZWRpdG9ycyBoZXJlIHdoaWNoIGhhdmUgVFVJcyBhbmQgdGFrZSBvdmVyCj4+ICAgIHRo
ZSB3aG9sZSBkaXNwbGF5KS4gIFdoZW4gSSdtIHVzaW5nIHRleHQtdG8tc3BlZWNoLCBJIGFjdHVh
bGx5Cj4+ICAgIHByZWZlciBlZC4gIEl0J3Mga2luZGEgb3BhcXVlLCBidXQgbGVhcm5pbmcgdGhl
IGJhc2ljcyBkb2Vzbid0IHRha2UKPj4gICAgbG9uZywgYW5kIGl0J3MgcmVhbGx5IGxpZ2h0LXdl
aWdodCB5ZXQgcG93ZXJmdWwuICBUaG91Z2ggSSdtIGJpYXNlZAo+PiAgICBzaW5jZSBJJ20gdGhl
IGdvb2ZiYWxsIGJlaGluZCB0aGUgImVkKDEpIGNvbmZlcmVuY2UiIGFjY291bnQgb24KPj4gICAg
VHdpdHRlciAoQGVkMWNvbmYpLiAgVGhlcmUncyBhbHNvICJlZGJyb3dzZSIgKEkgYmVsaWV2ZSBp
dCB3YXMKPj4gICAgY3JlYXRlZCBieSBhIGJsaW5kIGRldmVsb3Blcikgd2hpY2ggdGFrZXMgc29t
ZSBvZiB0aGUKPj4gICAgaWRlYXMvaW50ZXJmYWNlIG9mICJlZCIgYW5kIGFkZHMgYSBsb3Qgb2Yg
YWRkaXRpb25hbCBmZWF0dXJlcyB0byBpdC4KPj4KPj4gLSBqb2UsIGpvdmUsIGFuZCBhIGhvc3Qg
b2Ygb3RoZXIgc21hbGxlciBjb25zb2xlIHRleHQgZWRpdG9ycy4gIEkKPj4gICAgaGF2ZW4ndCBt
ZXNzZWQgYXJvdW5kIHdpdGggdGhlbSBhcyBtdWNoIHNpbmNlIEknbSBjb250ZW50IHdpdGgKPj4g
ICAgd2hhdCdzIGF2YWlsYWJsZSBvdXQgb2YgdGhlIGJveCB3aXRoIHZpLCB2aW0sIG9yIGVkLgo+
Pgo+PiBPdXRzaWRlIGEgdGVybWluYWwsIHRoZXJlIGFyZSBhIG51bWJlciBvZiBHVUkgdGV4dC1l
ZGl0b3JzIGFuZCBJREVzCj4+IHRoYXQgZm9sa3MgbGlrZSwgYnV0IEknbSBub3QgYXMgd2VsbC12
ZXJzZWQgd2l0aCB0aGVtIHNpbmNlIEknbSBhbiBvbGQKPj4gdGVybWluYWwgZG9yay4gKGdyaW5z
KSAgVGhlIGFjY2Vzc2liaWxpdHkgb2YgYW55IG9mIHRob3NlIHdpbGwKPj4gZGVmaW5pdGVseSB2
YXJ5IHNvIHlvdSdkIGhhdmUgdG8gdHJ5IGVhY2ggb3V0IGZvciB5b3Vyc2VsZi4gIFRoZSBuaWNl
Cj4+IHRoaW5nIGFib3V0IHRoZSB0ZXJtaW5hbCBpcyB0aGF0IHlvdSBjYW4gZWFzaWx5IHJldmll
dyBldmVyeSBlbGVtZW50Cj4+IG9uIHRoZSBzY3JlZW4gYmVjYXVzZSBpdCdzIGp1c3QgYSBncmlk
IG9mIGNoYXJhY3RlcnMuIEdVSXMgaGF2ZSB0bwo+PiBleHBvc2Ugc3VjaCBpbmZvcm1hdGlvbiBp
bnRlbnRpb25hbGx5LCBhdCB0aGUgYmVuZWZpY2VuY2Ugb2YgdGhlCj4+IGRldmVsb3Blci4KPj4K
Pj4gVGhlIGxlYXJuaW5nLWN1cnZlcyBmb3IgdmkvdmltLCBlZCwgYW5kIGVtYWNzIGNhbiBiZSBh
IGxpdHRsZQo+PiBzdGVlcGVyLCBidXQgdmltIGNvbWVzIHdpdGggYSAidmltdHV0b3IiIHByb2dy
YW0gdGhhdCBoZWxwcyB3YWxrIHlvdQo+PiB0aHJvdWdoIHVzaW5nIGl0LiAgQW5kIHRvIHNvbWUg
Zm9sa3MsIHRoZSBtb2RhbCBuYXR1cmUgb2YgdmkvdmltL2VkCj4+IHRha2VzIGEgd2hpbGUgdG8g
Z2V0IHVzZWQgdG8uICBCdXQgYW55Ym9keSB3aG8gaGFzIHVzZWQgYQo+PiBzY3JlZW4tcmVhZGVy
IGxpa2VseSB1bmRlcnN0YW5kcyB0aGUgaWRlYSBvZiBhICJyZXZpZXcgbW9kZSIgd2hpY2ggaXMK
Pj4gYWxzbyBhIG1vZGFsIGludGVyZmFjZS4KPj4KPj4gSSd2ZSB1c2VkIHZpL3ZpbSBmb3IgMjAr
IHllYXJzIGFuZCBhbSBnbGFkIHRvIGhlbHAgd2hlcmUgSSBjYW4uICBZb3UKPj4gY2FuIGFsc28g
ZmluZCBtZSBvbiB0aGUgVmltIG1haWxpbmcgbGlzdCwgb24gUmVkZGl0J3MgL3IvdmltIGFuZCBh
cwo+PiBAZ3Vtbm9zIG9uIFR3aXR0ZXIsIGFuZCBhcyBtZW50aW9uZWQsIEkgcnVuIHRoZSBAZWQx
Y29uZiBhY2NvdW50IG9uCj4+IFR3aXR0ZXIgJiBNYXN0b2Rvbiwgc28gSSBjYW4gaGVscCB0aGVy
ZSwgdG9vLgo+Pgo+PiBIb3BlIHRoaXMgaGVscHMsCj4+Cj4+IC10aW0KPj4KPj4gT24gTm92ZW1i
ZXIgMjksIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
PiBIaSBGcmllbmRzLAo+Pj4KPj4+IFNpbmNlIHlvdSBoYXZlIGJlZW4gbGF0ZWx5IGRpc2N1c3Np
bmcgY29uZmlndXJhdGlvbnMgYW5kIGVkaXRpbmcKPj4+IHRoZW0sIGNoYW5naW5nIHRoZW0sIG9y
IGFkZGluZyBzY3JpcHRzLCBXaGF0IGlzIHRoZSBtb3N0IGFjY2Vzc2libGUKPj4+IGFuZCBlYXNp
ZXN0IGVkaXRvciB0byB1c2UgaW4gU2xpbnQgZm9yIGVkaXRpbmcgY29uZmlndXJhdGlvbnM/IE15
Cj4+PiB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgVmksIE5hbm8sIGFuZCBQaWNvIGFsbCBjb21lIHBy
ZWluc3RhbGxlZC4gQXJlCj4+PiB0aGVyZSBvdGhlciB0ZXh0IGVkaXRvcnMgcHJlaW5zdGFsbGVk
PyBvciwgRG8geW91IHJlY29tbWVuZCBvbmUKPj4+IHRoYXQgSSBjYW4gaW5zdGFsbCBpZiB0aGUg
YWJvdmVtZW50aW9uZWQgb25lcyBhcmUgbm90IHJlY29tbWVuZGVkPwo+Pj4KPj4+IENoZWVycywK
Pj4+Cj4+PiBJYnJhaGltCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

