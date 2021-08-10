Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A677E3E5E0A
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628606007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sA1+uKfKwC/nqJ3q2QkOsmVeiGQ5vS1+6+BGo4oguB0=;
	b=Ruy+3qzESBS3fvvYrOmdqqDVQx/Nd0uBce2jIez2r8C5gD76WykWBgzBGTLGkQM7Ev5KIF
	YErU7RyoBo1ExOWGJZVjtuuYasu01sOR0njYszjkr0mkVJe55ZK2OyeXXSAIdDztwUUj+P
	5H5kwJX8E6tuGb9p0YcK3hxzjGXl+6Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-EqjScpDuMAq0dBgPYluC0A-1; Tue, 10 Aug 2021 10:33:25 -0400
X-MC-Unique: EqjScpDuMAq0dBgPYluC0A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 971888042F0;
	Tue, 10 Aug 2021 14:33:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81941136F5;
	Tue, 10 Aug 2021 14:33:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 57BE84A7C8;
	Tue, 10 Aug 2021 14:33:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEUZ7M003325 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:30:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 69DE5200E26F; Tue, 10 Aug 2021 14:30:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BD1200D8E6
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:30:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5D6B18A01A5
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:30:32 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-551-GOC0HK5mOwCahp0pI-VDiQ-1; Tue, 10 Aug 2021 10:30:30 -0400
X-MC-Unique: GOC0HK5mOwCahp0pI-VDiQ-1
Received: from k.n5t.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPS id 326D32AE50F
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 16:30:28 +0200 (CEST)
Date: Tue, 10 Aug 2021 16:30:27 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
MIME-Version: 1.0
In-Reply-To: <64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
User-Agent: NeoMutt/20180716
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AEUZ7M003325
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLAoKdGhlcmUgd2FzIG5vIHNjcmlwdCBhdHRhY2hlZCwgbWF5YmUgdGhlIGxpc3Rt
YW5hZ2VyIHJlbW92ZWQgaXN0IDotKC4gQ2FuIHlvdSAKc2VuZCBtZSB0aGUgc2NyaXB0IGFsc28g
cGxlYXNlPwoKSSB3YXMgYWxzbyBleHBlcmltZW50aW5nIHdpdGggUWVtdSBhbmQgV2luZG93cyBk
dXJpbmcgdGhlIGxhc3Qgd2Vla3MgYW5kIGhhZCAKYSBXaW4gMTAgcHJvIHJ1bm5pbmcsIGJ1dCBz
b21ldGltZXMgdGhlIFZNIHdhcyB0byBzbG93IHRvIGhhdmUgYSBnb29kIAp3b3JraW5nIGV4cGly
aWVuY2UgOi0oLiBJIGFtIHVzaW5nIGEgRGVsbCBYUFMgMTMgbGFwdG9wIHdpdGggMTYgR0IgbWVt
b3J5IAphbmQgYSBJbnRlbGwgSTcgY3B1IHdpdGggMSw5IEdIei4gSSB3YXMgdXNpbmcgdGhlIHZp
cnRpbyBkcml2ZXJzIGZvciBXaW5kb3dzIAp0byBzcGVlZCB1cCB0aGluZ3MgYXMgbXVjaCBhcyBw
b3NzaWJsZSBhbmQgSSBhbHNvIGRlYWN0aXZhdGVkIGFzIG1hbnkgCnVubmVjZXNzYXJ5IHRoaW5n
cyBpbiB0aGUgV2luZG93cyBWTSwgYnV0IGVzcGVjaWFseSB3aXRoIG11Y2ggZGlzayBJL08gCmV2
ZXJ5dGhpbmcgd2FzIG5vdCBzbmFwcHkgZW5vdWdoIHRvIHdvcmsgOi0oLgoKV2hlbiBydW5uaW5n
IFdpbmRvd3MgYXMgdGhlIGhvc3Qgc3lzdGVtIGFuZCB1c2luZyBWTXdhcmUgdG8gdmlydHVhbGl6
ZSBsaW51eCAKZ3Vlc3RzIEkgZG8gbm90IGhhdmUgdGhvc2UgcHJvYmxlbXMuCgpIb3cgYXJlIHlv
dXIgYW5kIGFsc28gb3RoZXJzIGV4cGVyaWVuY2VzIHdpdGggdmlydHVhbGl6ZWQgV2luZG93cyBz
eXN0ZW1zIG9uIApMaW51eCBob3N0cz8gQXJlIHRoZSBzeXN0ZW1zIGZhc3QgZW5vdWdoIHRvIHdv
cmsgc21vb3RobHkgb3IgZG8geW91IGFsc28gCnRob3NlIGtpbmQgb2YgcHJvYmxlbXM/IFdoYXQg
c2V0dGluZ3MgaGF2ZSB5b3UgY2hhbmdlZCBpbiB0aGUgV2luZG93cyBndWVzdCAKdG8gaGF2ZSBh
IHN5c3RlbSB3aGljaCBpcyBmYXN0IGVub3VnaCBhbmQgd2hhdCBRZW11IHBhcmFtZXRlcnMgZG8g
eW91IHVzZSAKZXNwZWNpYWx5IGZvciB0aGUgaGFyZHNpc2sgaW1hZ2U/CgpDaGVlcnMgYW5kIHRo
YW5rcywKCiAgU2Nob2VwcAoKCk9uIFR1ZSwgQXVnIDEwLCAyMDIxIGF0IDAzOjU5OjU5UE0gKzAy
MDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj5IaSBhZ2FpbiBC
cmFuZHQsCj4KPlRoZSBzY3JpcHQgaXMgYXR0YWNoZWQKPgo+SW50cnVjdGlvbnMgZm9yIHVzZToK
PjEuIENyZWF0ZSBhIGRpcmVjdG9yeSB+L3FlbXUKPkFzc3VtaW5nIHRoYXQgeW91ciB1c2VybmFt
ZSBpcyBicmFuZHQ7IGh1c3QgdHlwZSB0byBkbyB0aGF0Ogo+bWtkaXIgL2hvbWUvYnJhbmR0L3Fl
bXUKPm9yIGp1c3Q6Cj5ta2RpciB+L3FlbXUKPkFzIGEgcmVtaW5kZXIsIH4gc3RhbmRzIGZvciAv
aG9tZS88dXNlcm5hbWU+Cj5JbiBteSBjYXNlIC91c3IvZGlkaWVyLCBpbiB5b3VycyBJIGFzc3Vt
ZSAvaG9tZS9icmFuZHQKPmJ1dCBhbnl3YXkgdGhlIG91dHB1dCBvZiB0aGlzIGNvbW1hbmQgd2ls
bCB0ZWxsIHlvdToKPmVjaG8gfgo+Cj4yLiBtb3ZlIHRoZSBXaW5kb3dzIElTTyBmaWxlIGluIH4v
cWVtdSwgIHJlbmFtZWQgfi9xZW11L3dpbiB3aW5kb3dzLmlzbwo+Rm9yIGluc3RhbmNlIGhlciBJ
IGRpZCB0aGlzOgo+Cj4vZGF0YS9pbWFnZXNfSVNPL1dpbmRvd3MxMF9JbnNpZGVyUHJldmlld19D
bGllbnRfeDY0X2ZyLWZyXzIxMzU0Lmlzbwo+Cj4zLiBEb3dubG9hZCB0aGUgc2NyaXB0IHdpbmRv
d3Muc2ggYW5kIHN0b3JlIGl0IHNvbWV3aGVyZQo+Q2hhbmdlIHRvIHRoZSBkaXJlY3Rvcnkgd2hl
cmUgaXQgaXMgaW5zdGFsbGVkIGFuZCBydW4gaXQgbGlrZSB0aGlzOgo+c2ggd2luZG93cy5zaAo+
VGhlbiBwcmVzcyBFbnRlci4KPlByZXNzICBFbnRlciBhZ2FpbiBhZnRlciA1IHNlY29uZHMgdG8g
bWFrZSBzdXJlIGl0IHN0YXJ0cyB0aGUgV2luZG93cwo+V2FpdCBwYXRpZW50bHkgdW50aWwgdGhl
IGluc3RhbGxlciBkaXNwbGF5cyBpdHMgZmlyc3Qgc2NyZWVuIGluIHRoZSBWTS4KPgo+Tm90ZXM6
Cj5Zb3UgbmVlZCB0byBiZSBpbiBhIGdyYXBoaWNhbCBlbnZpcm9ubWVudCBsaWtlIE1hdGUuCj5J
ZiB0aGUgVk0gc3RlYWxzIHRoZSBmb2N1cywgdHlwZSBDdHJsK0FsdCtHIHRvIGdldCBpdCBiYWNr
IG9uIHRoZSBob3N0Lgo+Cj5BZnRlciBXaW5kb3dzIGluc3RhbGxhdGlvbiwgcnVubmluZyB0aGUg
c2NyaXB0IHNob3VsZCBzdGFydCBXaW5kb3dzIGRpcmVjdGx5Cj5pbgo+dGhlIFZNLgo+Cj5DaGVl
cnMsCj5EaWRpZXIKPgo+Cj5MZSAxMC8wOC8yMDIxIMOgIDE1OjA2LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIEJyYW5kdCwKPj4gCj4+IEkgd2ls
bCBhdHRhY2ggdG8gbXkgbmV4dCBtZXNzYWdlIGEgc2NyaXB0IHRoYXQgc2V0cyB1cCBhIHFlbXUg
Vk0KPj4gYWxsb3dpbmcgdG8gaW5zdGFsbCB0aGVuIHJ1biBXaW5kb3dzIGxhdGVyIHRvZGF5IGFm
dGVyIG1vcmUgdGVzdGluZy4KPj4gCj4+IEl0IHNob3VsZCBiZSB1c2FibGUgaW4gYW55IExpbnV4
IGRpc3RyaWJ1dGlvbiB3aXRoIGEgcmVjZW50IHFlbXUgaW5zdGFsbGVkLgo+PiAKPj4gQ2hlZXJz
LAo+PiAKPj4gRGlkaWVyCj4+IAo+PiAKPj4gTGUgMTAvMDgvMjAyMSDDoCAxMjo1NSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiA+IEhpIGFsbCwKPj4g
PiAKPj4gPiAKPj4gPiBBcyBJIHN0YXRlZCBiZWZvcmUsIEkgYW0gcnVubmluZyBTbGludCBvbiB0
aGUgYmFyZSBtZXRhbCwgaG93ZXZlciBteQo+PiA+IHdvcmsgZW50YWlscyB0ZWFjaGluZyBOVkRB
IHRvIGNsaWVudHMsIG9idmlvdXNseSBydW5uaW5nIFdpbmRvd3MuCj4+ID4gCj4+ID4gCj4+ID4g
VGhlcmVmb3IgSSBkZXNwZXJhdGVseSBuZWVkIGEgV2luZG93cyBWTSwgc28gSSBjYW4gbWFrZSBh
IGxpdmluZy4gSQo+PiA+IGNhbm5vdCBmaWd1cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBu
byBpZGVhLCBhbmQgVk1XYXJlCj4+ID4gV29ya3N0YXRpb24gUGxheWVyIGRvZXNuJ3Qgd2FudCB0
byBpbnN0YWxsIHVuZGVyIFNsaW50Lgo+PiA+IAo+PiA+IAo+PiA+IENvdWxkIHNvbWVvbmUgcGxl
YXNlLCBwbGVhc2UsIGdpdmUgbWUgY29uY2lzZSBpbnN0cnVjdGlvbnMgZm9yCj4+ID4gc2V0dGlu
ZyB1cCBhIFZNIHVzaW5nIHFlbXUgaW4gU2xpbnQ/Cj4+ID4gCj4+ID4gCj4+ID4gV2FybSByZWdh
cmRzLAo+PiA+IAo+PiA+IAo+PiA+IEJyYW5kdCBTdGVlbmthbXAKPj4gPiAKPj4gPiAKPj4gPiBT
ZW50IGZyb20gbXkgZ2FzcyBwb3dlcmVkIFNsaW50IGhhaXIgZHJ5ZXIuCgo+X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

