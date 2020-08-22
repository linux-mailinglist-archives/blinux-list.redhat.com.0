Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5423424E96F
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 21:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598125225;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hL0q97pMo0UUnS/MGDind33M0e2qoqcJY8VzJpCBcs0=;
	b=Zp8IsJ6I9XF4dzgP9T7LTjnn5TacemqEmPGtvG3t1mT/KzgINZJOwJuBVnArZNVq2zNKyZ
	gEXQsKTvVUdMuy+MHrQANDUsZzczhZIqi/GYZwzjSiNWrFMQ4nt2Qz3zK5EEWYb5zT3XxU
	HDCNNOKNuwLC6Hiw0WbII/udIyQ22j8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-QvBjEzr2PFGCDzxJbc1kLQ-1; Sat, 22 Aug 2020 15:40:20 -0400
X-MC-Unique: QvBjEzr2PFGCDzxJbc1kLQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A51991885D8E;
	Sat, 22 Aug 2020 19:40:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A1D410013D7;
	Sat, 22 Aug 2020 19:40:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 664F41832FC3;
	Sat, 22 Aug 2020 19:40:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MJe6a7004139 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 15:40:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B43F5110C596; Sat, 22 Aug 2020 19:40:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF6DD110C59D
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:40:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 677DA8007D9
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:40:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-569-U_6fsOugPAOEIoIK-DhOsw-1; Sat, 22 Aug 2020 15:40:02 -0400
X-MC-Unique: U_6fsOugPAOEIoIK-DhOsw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BYpcx51c1zcmm
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 15:40:01 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BYpcx4MW9zcbY; Sat, 22 Aug 2020 15:40:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BYpcx3QRwzcbV
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 15:40:01 -0400 (EDT)
Date: Sat, 22 Aug 2020 15:40:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <MFMbMot--3-2@tutanota.com>
Message-ID: <alpine.NEB.2.23.451.2008221539030.21629@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07MJe6a7004139
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGRvbid0IG5lZWQgdG8ga25vdyBob3cgdG8gY29tcGlsZSBzb3VyY2UgY29kZSB0byBzdGFy
dCB3aXRoIGFueQpkaXN0cmlidXRpb24uCgpPbiBTYXQsIDIyIEF1ZyAyMDIwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBEYXRlOiBTYXQsIDIyIEF1ZyAyMDIw
IDE1OjIwOjMyCj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IENjOiBi
bGludXgtbGlzdEByZWRoYXQuY29tCj4gU3ViamVjdDogUmU6IEFjY2Vzc2libGUgRGlzdHJvcyBm
b3IgYSBiZWdpbm5lcj8KPgo+IEhpIGV2ZXJ5b25lLAo+IFRoYW5rIHlvdSBzbyBtdWNoIGZvciB0
aGUgZGl2ZXJzZSBhbmQgaW5mb3JtYXRpdmUgcmVwbGllcy4gSSByZWFsbHkgYXBwcmVjaWF0ZSBh
bGwgdGhlIGlucHV0LiBJIHN0aWxsIGhhdmUgdG8gcmVhZCB0aHJvdWdoIGEgZmV3IG9mIHRoZSBs
aW5rcyB0aGF0IHNvbWUgb2YgeW91IHNlbnQgYnV0IHRoZXJlIGFyZSBzb21lIGludGVyZXN0aW5n
IHBvc3NpYmlsaXRpZXMuCj4gU28gZmFyLCBiYXNlZCBvbiB3aGF0IEknbSByZWFkaW5nLCBJJ20g
dGhpbmtpbmcgbWF5YmUgdG8gc3RhcnQgd2l0aCBlaXRoZXIgU3Rvcm11eCBvbiB0aGUgcmFzcGJl
cnJ5IFBpLCBvciBTbGludCBvbiBhIGxhcHRvcC4gRGViaWFuIGNvdWxkIGJlIGEgcG9zc2liaWxp
dHksIGJ1dCBhcyBhIGJlZ2lubmVyIGNvbWluZyBmcm9tIFdpbmRvd3MsIEkgZG9uJ3Qga25vdyBo
b3cgdG8gY29tcGlsZSBzb3VyY2UgZmlsZXMgeWV0IGxvbC4gSSBsaWtlIHRoYXQgRGViaWFuIHNl
ZW1zIHRvIGhhdmUgYW4gYWNjZXNzaWJpbGl0eSBpbnN0YWxsYXRpb24uIEl0IHNlZW1zIHRvIGJl
IGEgdmVyeSBwb3B1bGFyIERpc3RybyBzbyBpdCBwcm9iYWJseSBoYXMgYSB2ZXJ5IGFjdGl2ZSBz
dXBwb3J0IGNvbW11bml0eSBhbmQgaWYgSSB3ZXJlIHRvIHdhbGsgaW50byBhIGxvY2FsIExpbnV4
IG9yZ2FuaXphdGlvbiBJIHdvdWxkIGxpa2VseSBnZXQgYSBsb3Qgb2YgbWFpbnN0cmVhbSBoZWxw
IHdpdGggaXQgd2hlbmV2ZXIgSSBydW4gaW50byBhbiBpc3N1ZS4gQnV0IGJlaW5nIGEgYmVnaW5u
ZXIgY29taW5nIGZyb20gYSBXaW5kb3dzIGdyYXBoaWNhbCBkZXNrdG9wLCBJIGRvbid0IGtub3cg
aWYgRGViaWFuIHdvdWxkIGJlIGEgZ29vZCBwbGFjZSBmb3IgbWUgdG8gc3RhcnQgaWYgSSB3b3Vs
ZCBuZWVkIHRvIGFscmVhZHkga25vdyBob3cgdG8gY29tcGlsZSBzb3VyY2UgZmlsZXMuIEkgdG9v
ayBhIGxvb2sgYXQgdGhlIERlYmlhbiBpbnN0YWxsYXRpb24gbWFudWFscyBiZWZvcmUgSSByZWFj
aGVkIG91dCB0byB0aGlzIGxpc3QsIGFuZCBhcyBhIGJlZ2lubmVyLCBJIHdhcyB0b3RhbGx5IGNv
bmZ1c2VkIGJ5IHRoZSBpbnN0YWxsYXRpb24gcHJvY2Vzcy4gSXRzIHByb2JhYmx5IHNpbXBsZSwg
YnV0IHRvIG1lIGl0IHNlZW1lZCBjb21wbGljYXRlZCwgYnV0IHRoYXRzIHByb2JhYmx5IGJlY2F1
c2UgSSdtIHNvIG5ldyB0byB0aGlzLsKgIEknbSBkZWZpbml0ZWx5IG9wZW4gCiB0byB0aGUgcG9z
c2liaWxpdHkgaWYgSSBjb3VsZCBmaWd1cmUgb3V0IGhvdyB0byBtYWtlIGFuIGluc3RhbGxhdGlv
biBvZiBpdC4KPiBJIGRvbid0IGtub3cgaWYgSSB3b3VsZCBhbHNvIG5lZWQgdG8gY29tcGlsZSBz
b3VyY2UgZmlsZXMgZm9yIFNsaW50IHdoZW4gSSdtIGdldHRpbmcgc3RhcnRlZCB3aXRoIHRoZSBP
Uz8gQnV0IGlmIFNsaW50IHN0YXJ0cyBzcGVha2luZyBvdXQgb2YgdGhlIGJveCBtb3JlIG9yIGxl
c3MsIG1heWJlIEkgd291bGQgc3RhcnQgd2l0aCB0aGF0LiBJIGxpa2UgaG93IG1hbnkgYWNjZXNz
aWJpbGl0eSBmZWF0dXJlcyBTbGludCBoYXMuIEFuZCBpZiBJIHdvdWxkbid0IG5lZWQgdG8gY29t
cGlsZSBhIGxvdCBvZiBzb3VyY2UgZmlsZXMsIG1heWJlIFNsaW50IHdvdWxkIGJlIGEgZ29vZCBj
aG9pY2UuCj4gS3lsZSwgeW91IG1lbnRpb25lZCB0aGUgUmFzcGJlcnJ5IFBpIDQgd2l0aCBTdG9y
bXV4LiBJJ20gdmVyeSBpbnRlcmVzdGVkIGluIHRoaXMuCj4gTWF5YmUgdGhlIFJhc3BiZXJyeSBQ
aSBtaWdodCBiZSBhIGdvb2QgYmVnaW5uZXJzIHBsYXRmb3JtIGJlY2F1c2UgaXRzIGFuIGFmZm9y
ZGFibGUgc3RyZWFtbGluZSBjb21wdXRpbmcgc3lzdGVtIHRoYXQgbWF5YmUgSSBjb3VsZCBzdGFy
dCB3aXRoLCB0byByZWFsbHkgZ2V0IGEgZmVlbCBmb3IgTGludXggYW5kIHRoZW4gbGF0ZXIgaWYg
SSB3YW50IHRvLCBJIGNvdWxkIGludmVzdCBpbiBhIGhhcmR3YXJlIGNvbXBhdGlibGUgbGFwdG9w
IHRvIHJ1biBTbGludC4gT3IgbWF5YmUgRGViaWFuIG9uY2UgSSB1bmRlcnN0YW5kIGhvdyB0byBj
b21waWxlIHNvdXJjZSBmaWxlcy4gQnV0IG1heWJlIGZvciBhIGJlZ2lubmVyIHRoYXQgcmVhbGx5
IGRvZXNuJ3Qga25vdyB3aGF0IEknbSBkb2luZyBsb2wsIG1heWJlIFN0b3JtdXggd291bGQgYmUg
YSBuaWNlIGxpZ2h0d2VpZ2h0IERpc3RybyBmb3IgbWUgdG8gZ2V0IGludHJvZHVjZWQgdG8gdGhl
IGJhc2ljcy4gVGhhdCB3YXksIGlmIEkgaGF2ZSBhIGRpZmZpY3VsdCB0aW1lIGZpZ3VyaW5nIHNv
bWV0aGluZyBvdXQsIG9yIGVuZCB1cCBzb21laG93IGNvbXBsZXRlbHkgbWVzc2luZyB1cCB0aGUg
c3lzdGVtIGFzIGEgbm92aWNlIGxvbCwgaXRzIGp1c3QgYSBsaXR0dGxlIGNhcmQgdGhhdCBJIGNv
dWxkIHJlaW5zdGFsbCB0aGUgT1MgYW5kIGV4cGxvcmUgdGhpbmdzLgo+IEkgaGF2ZSBuZXZlciB1
c2VkIGEgUmFzcGJlcnJ5IFBpIGJlZm9yZSwgc28gcGxlYXNlIGJlYXIgd2l0aCBtZSBpZiB0aGVz
ZSBhcmUgc29tZSB2ZXJ5IG9idmlvdXMgYmFzaWMgcXVlc3Rpb25zLiBCdXQgd291bGQgaXQgYmUg
cG9zc2libGUgdG8gY29ubmVjdCB0aGUgUGkgdG8gYSBicmFpbGxlIGRpc3BsYXk/Cj4gSSBhbSBm
aW5lIHdpdGggc3BlZWNoLCBidXQgaXQgd291bGQgYmUgbmljZSB0byBiZSBhYmxlIHRvIGNvbm5l
Y3QgYSBicmFpbGxlIGRpc3BsYXkgaWYgSSB3YW50IHRvLgo+IEFsc28sIFN0b3JtdXggc2F5cyBp
dCBjb21lcyB3aXRoIE1BVEUgYXMgYSBncmFwaGljYWwgZGVza3RvcCB3aGljaCBJIHRoaW5rIGlz
IGdyZWF0LCBzZWVpbmcgYXMgSSBhbSBjb21pbmcgZnJvbSB0aGUgV2luZG93cyBlbnZpcm9ubWVu
dC4gSSBhbSBqdXN0IHdvbmRlcmluZyBpZiBTdG9ybXV4IHdpbGwgcnVuIHRoaW5ncyBsaWtlIEZp
cmVmb3ggZm9yIGEgYnJvd3Nlcj8KPiBJIGFzayB0aGlzIGJlY2F1c2UgSSBkb24ndCB3YW50IHRv
IHVzZSBDaHJvbWl1bSBvciBDaHJvbWUgb3IgYW55dGhpbmcgcmVtb3RlbHkgZ29vZ2xlIHJlbGF0
ZWQuIEFsdGhvdWdoIEkga25vdyBDaHJvbWl1bSBpcyBvcGVuIHNvdXJjZSwgSSBzdGlsbCBtdWNo
IHByZWZlciBGaXJlZm94IG9yIGEgRmlyZWZveCBmb3JrLgo+IEFsc28sIGNhbiBJIHJ1biBMaWJy
ZU9mZmljZSBvbiBpdD8KPiBJZiBpdCBjYW4ndCBydW4gRmlyZWZveCBhbmQgTGlicmVPZmZpY2Ug
dGhlbiBJIG1pZ2h0IGRlY2lkZSB0byBnbyBmb3IgU2xpbnQgb3IgRGViaWFuIG9uIGEgbGFwdG9w
Lgo+IEJ1dCB0aGF0IHdvdWxkIGJlIG5pY2UgaWYgaXQgd291bGQgcnVuIHRob3NlIHByb2dyYW1z
IGFzIGl0IHNlZW1zIGxpa2UgYW4gaW50ZXJlc3Rpbmcgb3B0aW9uIGZvciBhIGJlZ2lubmVyIHdo
byBpcyByZWFsbHkgdW5mYW1pbGlhciB3aXRoIExpbnV4IHNldHVwcy4KPiBTYXRoeWFuLCB0aGFu
a3MgZm9yIHRoZSBBY2Nlc3NpYmxlIENvY29udXQgcmVjb21tZW5kYXRpb24uIEkndmUgcmVhZCBh
Ym91dCBpdCBzb21ld2hlcmUgYnV0IGRvbid0IGtub3cgbXVjaCBhYm91dCBpdC4gSSdsbCBkZWZp
bml0ZWx5IGxvb2sgaXQgdXAgYW5kIHJlYWQgbW9yZSBhYm91dCBpdCB0byBzZWUgaWYgaXRzIHNv
bWV0aGluZyB0aGF0IEkgbWlnaHQgbGlrZS4KPiBUaGFua3Mgc28gbXVjaCB0byBldmVyeW9uZSB3
aG8gaGFzIHJlcGxpZWQgYW5kIHNoYXJlZCB0aGVpciBzdWdnZXN0aW9ucyB3aXRoIG1lLgo+IFNM
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgotLSAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

