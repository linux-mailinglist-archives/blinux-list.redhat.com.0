Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C90023E864C
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 01:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628636617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HYM3yYa4V0dut1TFvyQ2l5Mbsslr7xh9n03LF/qXVGk=;
	b=Wju6sIWz/ctaOfue3KG83gQE/ByKXFhiv2HleOPL690snoKTdh1LavtHiQhVXWmMJa7/ud
	KUeq8V6qZf10oiFk0QTCysmxiEZ2X5+y8iQVVx8xWbQ6Bn0ca+Dw6MuPCsb4ry4/8ZBhZb
	YgZK0jolPXmcOtMeOFNS7fqjf2HyuMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-Mi4nWp_kPjSEFmPJOkGthg-1; Tue, 10 Aug 2021 19:03:36 -0400
X-MC-Unique: Mi4nWp_kPjSEFmPJOkGthg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F5E92E74;
	Tue, 10 Aug 2021 23:03:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E026660C05;
	Tue, 10 Aug 2021 23:03:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAC77181A0F2;
	Tue, 10 Aug 2021 23:03:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AN241E027821 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 19:02:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 58C98DAF2B; Tue, 10 Aug 2021 23:02:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54520EE843
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 23:01:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3607101A52C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 23:01:59 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-264-rYSxnFs1NIqjHvpF51pbrg-1;
	Tue, 10 Aug 2021 19:01:57 -0400
X-MC-Unique: rYSxnFs1NIqjHvpF51pbrg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 921C0A38B2
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 23:01:49 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
	<YRKjwo6PdL66bwRn@abilitiessoft>
Message-ID: <8a85bb24-3935-c157-fdc7-0ef76326cc28@slint.fr>
Date: Wed, 11 Aug 2021 01:01:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRKjwo6PdL66bwRn@abilitiessoft>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AN241E027821
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gSm9obiwKCnRoZSBzaW1wbGVzdCB3YXkgaXMgdG8gaW5zdGFsbCBTbGludCBvbiBhbiBl
eHRlcm5hbCwgVVNCIGNvbm5lY3RlZCBTU0QKKHByZWZlcmFibHkpIG9yIGhhcmQgZGlzay4KClRo
ZW4ganVzdCBwbHVnLWluIHRoZSBleHRlcm5hbCBkcml2ZSBiZWZvcmUgc3RhcnRpbmcgdGhlIGlu
c3RhbGxlciBhbmQgCmNob29zZQp0aGUgQXV0byBpbnN0YWxsYXRpb24gbW9kZTogdGhlIGluc3Rh
bGxlciBzaG91bGQgZGV0ZWN0IHRoZSBleHRlcm5hbCAKZHJpdmUgYW5kCnByb3Bvc2UgeW91IHRv
IHBhcnRpdGlvbiBhbmQgZm9ybWF0IGl0LCB0aGVuIGluc3RhbGwgU2xpbnQgb24gaXQuCkF0IGVu
ZCBvZiBpbnN0YWxsYXRpb24sIFNsaW50IHdpbGwgc2V0IHVwIHRoZSBkdWFsIGJvb3QgZm9yIHlv
dS4KClVuZGVyIHNvbWUgY29uZGl0aW9ucyB5b3UgY2FuIGFsc28gZnJlZSBlbm91Z2ggc3BhY2Ug
b24gdGhlIGRyaXZlIG9yIApldmVuIGhhdmUKaXQgZnJlZWQgYnkgdGhlIFNsaW50IGluc3RhbGxl
ciB0byBpbnN0YWxsIFNsaW50LCBhcyBpbmRpY2F0ZWQgaW46Cmh0dHBzOi8vc2xpbnQuZnIvZG9j
L0hhbmRCb29rLmh0bWwjX2luc3RhbGxfc2xpbnQgc2VlIGVzcGVjaWFsbHkgdGhpcyAKY2hhcHRl
cjoKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCNtYWtlX3Jvb21fZm9yX1NsaW50
ClRoZW4gYWdhaW4gU2xpbnQgd2lsbCBzZXQgdXAgdGhlIGR1YWwgYm9vdCBmb3IgeW91LgoKSXQg
c2hvdWxkbid0IGJlIHRyb3VibGVzb21lIGlmIHlvdSByZW1lbWJlciB0byBydW4gYXMgcm9vdCBm
cm9tIFNsaW50CiJ1cGRhdGUtZ3J1YiIgZXZlcnkgdGltZSB5b3UgaW5zdGFsbCBhbmV3IGtlcm5l
bCBpbiBEZWJpYW4uCgpPciwgeW91IGNvdWxkIGluc3RhbGwgU2xpbnQgaW4gYSB2aXJ0dWFsIG1h
Y2hpbmUgaW4gRGViaWFuLCBpbiBhIHNpbWlsYXIgCmZhc2hpb24KYXMgSSBqdXN0IHBvc3RlZCB0
byBpbnN0YWxsIFdpbmRvd3MgaW4gYSB2aXJ0dWFsIG1hY2hpbmUgaW4gU2xpbnQuCgpPciBidXkg
YW5vdGhlciBtYWNoaW5lIHRvIGluc3RhbGwgU2xpbnQgPHNtaWxlPgoKV2FybSByZWdhcmRzLApE
aWRpZXIKCkxlIDEwLzA4LzIwMjEgw6AgMTg6MDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIZWxsbyBEaWRpZXIsCj4gCj4gSSdtIDg1LiBJIHRyaWVk
IGR1YWwgYm9vdCwgYnV0IEkgZm91bmQgdGhhdCBpdCB3YXMgdHJvdWJsZXNvbWUuIEkgYW0gcnVu
bmluZyBEZWJpYW4uIEhvdyB3b3VsZCBJIHRyeSBzbGludD8KPiAKPiBKb2huCj4gCj4gT24gVHVl
LCBBdWcgMTAsIDIwMjEgYXQgMDQ6MTY6NTdQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGkgSm9obiwKPj4KPj4gSSBkb24ndCB0aGluayBhbnlv
bmUgaGVyZSB3aWxsIG1hcmsgeW91IGFzIGEgZm9vbCwgY2VydGFpbmx5IG5vdCBtZS4KPj4KPj4g
SGF2aW5nIG9uZSBzeXN0ZW0gcGFyIG1hY2hpbmUgaXMgY2VydGFpbmx5IGEgdHJvdWJsZSBmcmVl
IHNvbHV0aW9uLgo+Pgo+PiBBbm90aGVyIG9uZSBpcyB0byBoYXZlIGVhY2ggc3lzdGVtIG9uIGEg
c2VwYXJhdGUgZHJpdmUgKG9uZSBiZWluZyBwb3NzaWJseQo+PiByZW1vdmFibGUpCj4+Cj4+IE9y
IGR1YWwgYm9vdCwgaWYgdGhlcmUgaXMgZW5vdWdoIHNwYWNlIG9uIHRoZSBkcml2ZSBhbmQgdGhl
IG1hY2hpbmUgYm9vdHMgaW4KPj4gRUZJIG1vZGUuCj4+Cj4+IEkgdGFrZSB0aGlzIG9jY2FzaW9u
IHRvIHRlbGwgeW91IHRoYXQgU2xpbnQgdGhhdCBJIG1haW50YWluIGlzIGZyZWUgZm9yCj4+IHBl
b3BsZSBtZWV0aW5nIGFsbCB0aGUgY29uZGl0aW9ucyBsaXN0ZWQgYmVsb3c6Cj4+IDEuIFNtYXJ0
Cj4+IDIuIExpbnV4IGRldmVsb3Blcgo+PiAzLiBCbGluZAo+PiA0LiBEZWFmCj4+IDUuIEF0IGxl
YXN0IDJPIHllYXJzIG9sZGVyIHRoYXQgdGhlIFNsaW50IG1haW50YWluZXIuCj4+IEhpbnQ6IEkg
YW0gNzIgeWVhcnMgb2xkCj4+Cj4+IFNvLCBJJ2QgYmUgZ2xhZCB0aGF0IHlvdSB0cnkgU2xpbnQg
YW5kIGdpdmUgdXMgYSBmZWVkYmFjay4gPHNtaWxlPgo+Pgo+PiBBbGwgeW91IG5lZWQgdG8ga25v
dyBzaG91bGQgYmUgaW4gb3VyIGhhbmRib29rOgo+PiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5k
Qm9vay5odG1sCj4+Cj4+IFBsZWFzZSBsZXQgdXMga25vdyBhbHNvIGhvdyB0byBlbmhhbmNlIFNs
aW50IGFuZCBpdHMgZG9jdW1lbnRhdGlvbi4KPj4KPj4gV2FybSByZWdhcmRzLAo+PiBEaWRpZXIK
Pj4gLS0KPj4gRGlkaWVyIFNwYWllcgo+PiBTbGludCBtYWludGFpbmVyCj4+Cj4+Cj4+IExlIDEw
LzA4LzIwMjEgw6AgMTQ6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPj4+IFdlbGwsIHRoaXMgd2lsbCBwcm9iYWJseSBtYXJrIG1lIGFzIGEgZm9vbCwg
YnV0IEkganVzdCB1c2UgYSBMaW51eCBtYWNoaW5lIGFuZCBhIFdpbmRvd3MgbWFjaGluZSBjb25u
ZWN0ZWQgYnkgU2FtYmEuCj4+PiBDb21wdXRlcnMgYXJlIHJlbGF0aXZlbHkgaW5leGVuc2l2ZSBu
b3csIHNvIHdoeSBib3RoZXIgd2l0aCB2aXJ0dWFsIG1hY2hpbmVzPwo+Pj4KPj4+IEpvaG4KPj4K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

