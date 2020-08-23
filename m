Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9F13324EF11
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 19:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598204390;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YdjbvZffjaCX3XgcWL6Twl3ZkI8Sf1j9uaLebtRxZo4=;
	b=PUtivH5Fbv62sW+2KcG9sU5NfowV8+qC8G1MsGrhdkgwJaVmoXHoIu+JOYre4y/dzBGplF
	ulIMO7VEvwlh8teFiwIPG3B1HZxGLNIqk6iN5erISiPKJKe+Fk3BP0UOEIt9kMrLzu0AiK
	vAx7wnq8erHekSLfjSC3QXOk7LB1mrI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-08bsM3IdPB-wszsWGAeoMA-1; Sun, 23 Aug 2020 13:39:48 -0400
X-MC-Unique: 08bsM3IdPB-wszsWGAeoMA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C43061005E6A;
	Sun, 23 Aug 2020 17:39:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C5F75C1D7;
	Sun, 23 Aug 2020 17:39:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8273E6690F;
	Sun, 23 Aug 2020 17:39:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NHdc2u005260 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 13:39:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3A93A44111; Sun, 23 Aug 2020 17:39:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3643D47CC1
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:39:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDDB090184A
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:39:35 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-91-5io_gCLzO7aTo5RcK6E0_w-1;
	Sun, 23 Aug 2020 13:39:33 -0400
X-MC-Unique: 5io_gCLzO7aTo5RcK6E0_w-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 28823BE7E6
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 18:38:53 +0200 (CEST)
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
	<alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
	<CAM+Q2c4OfNFveX90b3W0NNh88gjK5GoTkBvx78bOTzR26ESuVQ@mail.gmail.com>
Message-ID: <c9b747d3-e951-2673-9652-b27e58fd49da@slint.fr>
Date: Sun, 23 Aug 2020 19:39:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAM+Q2c4OfNFveX90b3W0NNh88gjK5GoTkBvx78bOTzR26ESuVQ@mail.gmail.com>
Content-Language: fr
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07NHdc2u005260
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpZb3UgY2FuIGdldCBoZXJlOgpodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9z
bGludC0xNC4yLjEvbWluaXNsaW50LwoKQnV0IGl0IHdvbid0IHdvcmsgb24gYSByYXNwYmVycnkg
cGkgYXMgaXQncyBmb3IgYXJjaGl0ZWN0dXJlIHg3Nl82NCBvbmx5LCBzb3JyeS4KCkJlc3QgcmVn
YXJkcywKCkRpZGllcgoKTGUgMjMvMDgvMjAyMCDDoCAxOToyNSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFdoZXJlIGNhbiBtaW5pIFNsaW50IGJlIG9i
dGFpbmVkLCBwbGVhc2U/Cj4gCj4gT24gOC8yMy8yMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IENvdWxkIGJlIG1p
bmktc2xpbnQgY291bGQgcnVuIG9uIHRoYXQgcmFzcGJlcnJ5IHBpLiAgSSBkb24ndCBoYXZlIG9u
ZQo+PiB5ZXQgc28gaGF2ZW4ndCB0cmllZCB0aGF0IG9uZSB5ZXQuICBUaGUgbWluaS1zbGludCBp
cyBhIGNvbW1hbmQgbGluZQo+PiBlbnZpcm9ubWVudCB0aGUgd2F5IGl0IHN0YXJ0cyBvdXQgYWZ0
ZXIgaW5zdGFsbGF0aW9uLgo+Pgo+PiBPbiBTYXQsIDIyIEF1ZyAyMDIwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gRGF0ZTogU2F0LCAyMiBBdWcgMjAy
MCAxNjo0OTo1MQo+Pj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFRvOiBibGludXgtbGlzdEByZWRoYXQuY29tCj4+
PiBTdWJqZWN0OiBSZTogQWNjZXNzaWJsZSBEaXN0cm9zIGZvciBhIGJlZ2lubmVyPwo+Pj4KPj4+
IEhlbGxvLAo+Pj4KPj4+IEkgYW5zd2VyIGlubGluZSB0byB0aGUgcGFydHMgb2YgeW91ciBtZXNz
YWdlIHF1b3RlZCBiZWxvdzoKPj4+Cj4+PiBMZSAyMi8wOC8yMDIwID8gMjE6MjAsIFNMICBhID9j
cml0wqA6Cj4+Pj4gSSBkb24ndCBrbm93IGlmIEkgd291bGQgYWxzbyBuZWVkIHRvIGNvbXBpbGUg
c291cmNlIGZpbGVzIGZvciBTbGludCB3aGVuCj4+Pj4gSSdtIGdldHRpbmcgc3RhcnRlZCB3aXRo
IHRoZSBPUz8KPj4+Cj4+PiBObyBuZWVkIHRvIGRvIHRoYXQuIFlvdSBnZXQgYSBsb3Qgb2Ygc29m
dHdhcmUgb3V0IG9mIHRoZSBib3hlcywgYW5kIGNhbgo+Pj4gZ2V0IG1vcmUganVzdCB0eXBpbmcg
YSBmZXcgY29tbWFuZHMsIGFzIHdpdGggbWFueSBvdGhlciBMaW51eAo+Pj4gZGlzdHJpYnV0aW9u
cywgZWl0aGVyIHByZS1idWlsdCBvciBjb21waWxlZCBhbmQgaW5zdGFsbGVkIHR5cGluZyBqdXN0
IG9uZQo+Pj4gY29tbWFuZC4KPj4+Cj4+Pj4gQnV0IGlmIFNsaW50IHN0YXJ0cyBzcGVha2luZyBv
dXQgb2YgdGhlIGJveCBtb3JlIG9yIGxlc3MsIG1heWJlIEkgd291bGQKPj4+PiBzdGFydCB3aXRo
IHRoYXQuCj4+PiBTbGludCBzdGFydHMgc3BlYWtpbmcgZnJvbSB0aGUgdmVyeSBiZWdpbm5pbmcg
b2YgaW5zdGFsbGF0aW9uIGFuZCBzcGVha3MKPj4+IGluIGFsbCBjb250ZXh0czsgY29uc29sZSBh
cyBncmFwaGljYWwgZW52aXJvbm1lbnRzIGluY2x1ZGluZyBNYXRlLCB0aGUKPj4+IGRlZmF1bHQu
Cj4+Pgo+Pj4gSWYgeW91IGhhdmUgYSBoYXJkIHN5bnRoZXNpemVyIHlvdSBjYW4gdXNlIGl0IGFz
IHdlbGwuIFNsaW50IGNhbiBwcmVzZXJ2ZQo+Pj4gYW5kIHJlc3RvcmUgc3BlY2lmaWMgc2V0dGlu
Z3MgZm9yIGVhY2ggc3ludGhlc2l6ZXIgaWYgeW91IHVzZSBzZXZlcmFsLgo+Pj4KPj4+IE9yY2Eg
aXMgaW5kZWVkIGF2YWlsYWJsZSBpbiBncmFwaGljYWwgZW52aXJvbm1lbnRzIGFuZCB5b3UgY2Fu
IHVzZSAoYW5kCj4+PiBzd2l0Y2ggYmV0d2VlbikgY29uc29sZSBzY3JlZW4gcmVhZGVyczogZXNw
ZWFrdXAsIHNwZWVjaGQtdXAgYW5kIGZlbnJpci4KPj4+Cj4+PiBJbmRlZWQgYnJhaWxsZSBpcyBl
bmFibGVkIGFzIHdlbGwgZnJvbSB0aGUgdmVyeSBiZWdpbm5pbmcgb2YgaW5zdGFsbGF0aW9uLgo+
Pj4KPj4+PiBJIGxpa2UgaG93IG1hbnkgYWNjZXNzaWJpbGl0eSBmZWF0dXJlcyBTbGludCBoYXMu
Cj4+PiBXZSB0cnkgaGFyZCB0byBwcm92aWRlIGFzIG1hbnkgYXMgcG9zc2libGUuCj4+Pgo+Pj4+
IEFuZCBpZiBJIHdvdWxkbid0IG5lZWQgdG8gY29tcGlsZSBhIGxvdCBvZiBzb3VyY2UgZmlsZXMs
IG1heWJlIFNsaW50Cj4+Pj4gd291bGQgYmUgYSBnb29kIGNob2ljZS4KPj4+IEluZGVlZCA8c21p
bGU+Cj4+Pgo+Pj4gQWJvdXQgc3VwcG9ydDogd2UgYW5zd2VyIGFsbCBxdWVzdGlvbnMgaW4gdGhl
IFNsaW50IG1haWxpbmcgbGlzdCwgYW5kCj4+PiBiZWdpbm5lcnMgYXJlIHdlbGNvbWUgdGhlcmUu
Cj4+Pgo+Pj4gU28gSSB0aGluayB0aGF0IFNsaW50IGlzIGEgZ29vZCBjaG9pY2UgZm9yIGEgbGFw
dG9wIGluIHlvdXIgc2l0dWF0aW9uLgo+Pj4KPj4+IFNsaW50IGRvbid0IHN1cHBvcnQgcmFzcGJl
cnJ5IFBpLCBidXQgZm9yIHRoYXQgU3Rvcm11eCBpcyBhIGdvb2QgY2hvaWNlLgo+Pj4KPj4+IFN0
b3JtIERyYWdvbiwgaXRzIG1haW50YWluZXIsIGlzIGEgZnJpZW5kIGFuZCB3ZSBkbyBjb29wZXJh
dGUgZm9yIHRoZQo+Pj4gYmVuZWZpdCBvZiBvdXIgdXNlcnMuCj4+Pgo+Pj4gRGlkaWVyCj4+PiBk
aWRpZXJAc2xpbnQuZnIKPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Cj4+IC0tCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

