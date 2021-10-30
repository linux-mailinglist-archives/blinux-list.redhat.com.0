Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 980CF440A2C
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 18:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635610382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dWp5wa/DfswpdzGNmPCMIbGW2xKaPc6fQWghIUO+otw=;
	b=QLrxb+Lo8V4okivdwyMT+VKTDdDoVv74F7/ADTYnymcoEJxBY1OSDl12fOjsGN1B2HHKlG
	cgjCx7e0qGHqJNt6ZmAVNOAd0oK9nBjmlIepppLZDtsK9N96cNa0PGlCzX5pulIoyA8q8h
	xHw4UHpEpzIiM+ZiLaoihw6Lg9hpsVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-549-qI_mgAp7Mc6tUy_O5CCA3A-1; Sat, 30 Oct 2021 12:12:59 -0400
X-MC-Unique: qI_mgAp7Mc6tUy_O5CCA3A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 938A78018AC;
	Sat, 30 Oct 2021 16:12:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F4FA5C25D;
	Sat, 30 Oct 2021 16:12:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D9D24E58E;
	Sat, 30 Oct 2021 16:12:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UGCcWa003601 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 12:12:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F1FE4010FFF; Sat, 30 Oct 2021 16:12:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 399D940CFD04
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 16:12:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F53B8011A5
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 16:12:38 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-t4yJnAVsMOOzHshiT6166g-1; Sat, 30 Oct 2021 12:12:36 -0400
X-MC-Unique: t4yJnAVsMOOzHshiT6166g-1
Received: by mail-qv1-f51.google.com with SMTP id gh1so8382960qvb.8
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 09:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=fjT/u9N90G3Mjfvpbz9uDvmlLnJvzUOfhFbJPDSTwmk=;
	b=kzx/laee1m1vo3iJuuDTvbYV45VBUdlsZnGbFo3Ata9Czb95lcHKERjkR8IlKRdpPy
	amsYFkF66g7KidNmiX3WSrxKKZ7c512S+vdeb+ipUpVD888LC9EoZLm2txwBvEos/TMD
	piYwKf0OKVaep4RBjq4420suloMl2X2nALknxMAEMLs62CFM5d1y2B1zDum1Tutzjypk
	loEteg+RmdmRfkfibTytLFX/4u8xKicw6ZJyOJY2sKIyB3NmFjM7VBJ0REIs/ar/bame
	GPvJMtsOONFUX+L5/bCqZnd4U7BoAAM9EuR4Vi/XD4X2sUHkgYvA2IxBVtGx1ZC7SDe7
	FKwg==
X-Gm-Message-State: AOAM531DPP3WfKpAqjSnepDjpudEHHiIjU9DAvQi8KOc4BxutpSzgP9T
	x9/7qK2GtmvtSMbrwtEFQWPZxUEUkTruaw==
X-Google-Smtp-Source: ABdhPJymam3A/GCdzqw6OoEL71/PYHHO2MQ4Z5RJjFsv2Cs0gzZWnzW/c5VU5vZSY4JBGsh/Xlh2Tg==
X-Received: by 2002:a0c:e84b:: with SMTP id l11mr4231268qvo.25.1635610355444; 
	Sat, 30 Oct 2021 09:12:35 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:e520:2bae:7a4:e446])
	by smtp.gmail.com with ESMTPSA id
	m68sm6272146qkb.105.2021.10.30.09.12.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 09:12:35 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Can I run an accessible version of linux under windows?
Date: Sat, 30 Oct 2021 12:12:34 -0400
Message-Id: <A7341135-5DD2-4143-B463-AD48C7D6B2B5@gmail.com>
References: <14c1c66c-871e-416b-2e71-0129a60500e2@gmail.com>
In-Reply-To: <14c1c66c-871e-416b-2e71-0129a60500e2@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UGCcWa003601
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

VGhhbmtzIEpvaG4sCkkgYWN0dWFsbHkganVzdCBkb3dubG9hZGVkIG1pbnQgYW5kIGJlZ2FuIHRv
IHBsYXkgd2l0aCBpdC4gSXQgbG9va3Mgc2ltaWxhciB0byBjb2NvbnV0LiBJIGhhdmUgYSBxdWVz
dGlvbiBmb3IgeW91IHRob3VnaCwgaG93IGNhbiBJIGZpbmQgdGhlIGF2YWlsYWJsZSB3aS1maSBu
ZXR3b3JrcyB0byBjb25uZWN0IHRvIHRoZSBpbnRlcm5ldD8KVGhhbmtzIGEgbG90LApJYnJhaGlt
CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE9jdCAzMCwgMjAyMSwgYXQgMTE6MDUgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+IAo+IO+7v0kgaGF2ZSBub3QgdXNlZCBhY2Nlc3NpYmxlIGNvY29udXQsIHNvIEkg
Y2FuIG5vdCBjb21tZW50IG9uIGl0LiBMaW51eCBNaW50IE1hdGUgaXMgbXVjaCBsaWtlIHVzaW5n
IFdpbmRvd3MuIFRoZXJlIGlzIGEgZGVza3RvcCBlbnZpcm9ubWVudCwgb24gd2hpY2ggeW91IGNh
biBwbGFjZSBpY29ucyBmb3IgcXVpY2sgYWNjZXNzIHRvIHlvdXIgbW9zdCB1c2VkIGFwcHMgYW5k
IGZvbGRlcnMuIFRoZXJlIGFyZSBhbHNvIG1lbnVzLCBzdWNoIGFzIGEgU3RhcnQgbWVudSwgc2lt
aWxhciB0byBXaW5kb3dzLiBIb3dldmVyLCBpbiBvcmRlciBmb3IgbWUgdG8gc3VjY2Vzc2Z1bGx5
IGNvbXBsZXRlIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBjb21wdXRlcnMgdGhhdCBJIGFtIHNl
dHRpbmcgdXAsIGl0IGlzIG5lY2Vzc2FyeSBmb3IgbWUgdG8gdXNlIHRoZSBjb21tYW5kIGxpbmUg
ZW52aXJvbm1lbnQuIFRoaXMgaXMgYW4gaW1wb3J0YW50IHBhcnQgb2YgTGludXggYW5kIGlzIGFt
YXppbmdseSBwb3dlcmZ1bC4gTXkgdXNlcnMgc2hvdWxkIG5ldmVyIGhhdmUgdG8gaW50ZXJhY3Qg
d2l0aCB0aGUgTGludXggY29tbWFuZCBsaW5lLCBhcyBJIGhhdmUgY29uZmlndXJlZCB0aGVpciBj
b21wdXRlcnMgaW4gYSBtYW5uZXIgdGhhdCB0aGV5IGNhbiBkbyB0aGVpciBqb2JzIHRocm91Z2gg
dGhlIG1lbnVzIGFuZCBkZXNrdG9wIGljb25zLgo+IAo+IExpbnV4IGhhcyBhIHNpZ25pZmljYW50
IGxlYXJuaW5nIGN1cnZlLCBidXQgdGhlcmUgYXJlIG1hbnkgd2ViIHJlc291cmNlcyB0byBoZWxw
IHdpdGggdGhhdCBsZWFybmluZy4gSSBoYXZlIHdvcmtlZCB3aXRoIGNvbXB1dGVycyBmb3IgYWxt
b3N0IDUwIHllYXJzIG5vdywgY3V0dGluZyBteSB0ZWV0aCBvbiBJQk0gbWFpbmZyYW1lIHN5c3Rl
bXMuIE15IGVudGlyZSBjYXJlZXIgaGFzIGJlZW4gb25lIGNvbnRpbnVvdXMgbGVhcm5pbmcgZXhw
ZXJpZW5jZS4gSSBlbmpveSB0aGUgY2hhbGxlbmdlIHRoYXQgTGludXggaGFzIHByb3ZpZGVkIG1l
IGFuZCBsb29rIGZvcndhcmQgdG8gZXhwYW5kaW5nIG15IGtub3dsZWRnZSB3aXRoIHRoaXMgYW1h
emluZyBPUy4KPiAKPiBKb2huCj4gCj4gCj4+IE9uIDEwLzMwLzIwMjEgOToyNyBBTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGkgSm9obiwKPj4gSXMgdGhl
IG1pbnQgbGludXggeW91IG1lbnRpb25lZCBtZW51IGRyaXZlbiBsaWtlIGFjY2Vzc2libGUgY29j
b251dCBvciBjb21tYW5kIGxpbmUgYmFzZWQ/IEluIHdoYXQgd2F5cyBpcyBpdCBkaWZmZXJlbnQg
ZnJvbSBhY2Nlc3NpYmxlIGNvY29udXQgaWYgeW91IGdhdmUgaXQgYSB0cnk/Cj4+IElicmFoaW0K
Pj4gU2VudCBmcm9tIG15IGlQYWQKPj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDExOjM5IEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPj4+IAo+Pj4g77u/SGksCj4+PiBJIGFtIGFsc28gcmVsYXRpdmVseSBuZXcgdG8g
dXNpbmcgTGludXggYXMgYSBibGluZCBwZXJzb24uIE92ZXIgdGhlIHBhc3Qgc2V2ZXJhbCBtb250
aHMsIEkgaGF2ZSBkb3dubG9hZGVkIGFuZCB0cmllZCBzZXZlcmFsIG9mIHRoZSByZWNvbW1lbmRl
ZCBMaW51eCBkaXN0cmlidXRpb25zLiBBYm91dCBhIG1vbnRoIGFnbywgSSBjYW1lIGFjcm9zcyBM
aW51eCBNaW50IHdpdGggdGhlIE1hdGUgZGVza3RvcC4gSSBsaWtlIGl0IHZlcnkgbXVjaC4gSSBh
bSBjdXJyZW50bHkgd29ya2luZyBvbiBhIHByb2plY3Qgd2hlcmUgSSBoYXZlIHRvIHNldHVwIExp
bnV4IGNvbXB1dGVycyBmb3Igc2V2ZXJhbCBzaWdodGVkIHBlb3BsZSBhbmQgSSBhbSB1c2luZyBN
aW50IGFzIHRoZSBkaXN0cm8gdGhhdCBJIGFtIGRlcGxveWluZy4gSSBhbSBoYXBweSB0byBzYXkg
dGhhdCBJIHB1dCB0aGUgZmlyc3Qgb2YgdGhlc2UgY29tcHV0ZXJzIGludG8gcHJvZHVjdGlvbiB0
aGlzIHdlZWsuCj4+PiBTbyBmYXIsIHNvIGdvb2QuIFRoZXJlIGFyZSBhIGZldyBtaW5vciB0aGlu
Z3MgdGhhdCBJIHdvdWxkIGxpa2UgdG8gbGVhcm4gdG8gdHdlYWsgb24gdGhhdCBzeXN0ZW0sIGJ1
dCBJIGFtIGNvbmZpZGVudCB0aGF0IGtub3dsZWRnZSB3aWxsIGNvbWUgdG8gbWUgb3ZlciB0aW1l
Lgo+Pj4gCj4+PiBUaGUgYWNjZXNzaWJpbGl0eSBleHBlcmllbmNlIHdpdGggTGludXggTWludCBN
YXRlIGhhcyBiZWVuIHZlcnkgcG9zaXRpdmUuIEFmdGVyIGRvd25sb2FkaW5nIHRoZSBsaXZlIElT
TyBmcm9tIGxpbnV4bWludC5jb20sIEkgdXNlZCBSdWZ1cyBydW5uaW5nIG9uIG15IFdpbmRvd3Mg
NyBjb21wdXRlciB0byBjcmVhdGUgYSBib290YWJsZSAgICAgVVNCIGZsYXNoIGRyaXZlLiAoaHR0
cHM6Ly9ydWZ1cy5pZS9lbi8pIEkgdXNlZCBhIDEwIHllYXIgb2xkIExlbm92byBUaGlua3BhZCBY
MjIwIGZvciBhbGwgb2YgdGhlIHRlc3RpbmcsIGZpcnN0IGp1c3QgcnVubmluZyBmcm9tIHRoZSBm
bGFzaCBkcml2ZSBhbmQgbGF0ZXIsIGluc3RhbGxpbmcgb24gYSBmcmVzaCBTYW1zdW5nIEVWTyBT
U0QgaW4gdGhlIFgyMjAuIFBlcmZvcm1hbmNlIG9uIHRoaXMgMTAgeWVhciBvbGQgY29tcHV0ZXIg
d2FzIGV4Y2VsbGVudC4gSSBhY3R1YWxseSBkaWQgYWxsIG9mIHRoZSBjb25maWd1cmF0aW9uLCB0
d2Vha2luZyBhbmQgdXNlciB0ZXN0aW5nIG9uIHRoZSBYMjIwLiBPbmNlIHRoZSBzZXR1cCB3YXMg
cmVhZHkgdG8gdHVybiBvdmVyIHRvIHRoZSB1c2VyLCBJIG1hZGUgYW4gaW1hZ2Ugb2YgdGhlIFNT
RCBhbmQgdGhlbiBqdXN0IHN3YXBwZWQgdGhlIFNTRCBpbnRvIHRoZSBjb21wdXRlciBmb3IgdGhl
IHVzZXIuIEhlciBjb21wdXRlciBpcyBhbHNvIGEgTGVub3ZvLiBNaW50IGJvb3RlZCBvbiBoZXIg
Y29tcHV0ZXIgYW5kIHNoZSB3YXMgb2ZmIGFuZCBydW5uaW5nLiBJIGFtIGltcHJlc3NlZCB0aGF0
IEkgd2FzIGFibGUgdG8gY29tcGxldGUgdGhlIHNldHVwIG9mIHRoZSBjb21wdXRlciB3aXRoIHJl
bGF0aXZlbHkgZmV3IHJvYWRibG9ja3MuIEkgYW0gYWxzbyBpbXByZXNzZWQgd2l0aCB0aGUgcGVy
Zm9ybWFuY2UgYW5kIHN0YWJpbGl0eSBvZiBMaW51eCBNaW50IE1hdGUuIFRoZSBuZXh0IHN5c3Rl
bSB0aGF0IEkgd2lsbCBiZSBjb25maWd1cmluZyBpcyBzb21ld2hhdCBtb3JlIGRlbWFuZGluZywg
YnV0IEkgYW0gY29uZmlkZW50IHRoYXQgSSB3aWxsIGdldCB0aHJvdWdoIGl0LiBBcyB3aXRoIHRo
ZSBmaXJzdCBzeXN0ZW0sIEkgd2lsbCBiZSBkb2luZyBhbGwgb2YgdGhlIHRlc3RpbmcgYW5kIGNv
bmZpZ3VyYXRpb24gb24gbXkgdHJ1c3R5IG9sZCBYMjIwIHdpdGggYSBmcmVzaCBTYW1zdW5nIEVW
TyBTU0QuCj4+PiBTbywgaWYgeW91IGRvIG5vdCBoYXZlIGEgb2xkIFBDIGdhdGhlcmluZyBkdXN0
IGluIGEgY2xvc2V0LCB5b3UgY2FuIGNyZWF0ZSBhIGJvb3RhYmxlIFVTQiBjb250YWluaW5nIExp
bnV4IE1pbnQgTWF0ZSBhbmQgdGhlbiBib290IGZyb20gdGhlIFVTQiBzdGljayBvbiB5b3VyIGV4
aXN0aW5nIFdpbmRvd3MgY29tcHV0ZXIuIFdoZW4geW91IGFyZSBkb25lIHBsYXlpbmcgd2l0aCBM
aW51eCwganVzdCByZW1vdmUgdGhlIFVTQiBzdGljayBhbmQgcmVib290IGJhY2sgaW50byBXaW5k
b3dzLiBJIGJlbGlldmUgdGhhdCBpbiB0aGUgTWludCBpbnN0YWxsIHByb2dyYW0sIHdoaWNoIGlz
IGZ1bGx5IHNjcmVlbiByZWFkZXIgYWNjZXNzaWJsZSwgdGhlcmUgbWlnaHQgYmUgYW4gb3B0aW9u
IHdoZXJlIHlvdSBjYW4gaW5zdGFsbCBMaW51eCBNaW50IGFsb25nc2lkZSB5b3VyIGV4aXN0aW5n
IFdpbmRvd3MgaW5zdGFsbC4gVGhlbiBhdCBib290IHRpbWUsIHlvdSBjYW4gY2hvb3NlIHdoaWNo
IHN5c3RlbSB0byBib290IGluIHRvLiBJIGRpZCBub3QgZG8gdGhpcywgc28gSSBjYW4gbm90IGNv
bW1lbnQgb24gaG93IHdlbGwgdGhpcyB3b3Jrcy4KPj4+IAo+Pj4gT25lIG1vcmUgdGhpbmcuLi5X
aGVuIHlvdSBib290IGludG8gdGhlIFVTQiBzdGljaywgeW91IHdpbGwgaGF2ZSB0byBwcmVzcyBj
b250cm9sK0FsdCtTdXBlciAodGhpcyBpcyB3aGF0IGxpbnV4IGNhbGxzIHRoZSBXaW5kb3dzIGtl
eSkgaW4gb3JkZXIgdG8gc3RhcnQgdGhlIE9yY2Egc2NyZWVuIHJlYWRlci4gVGhlICJPcmNhIiBr
ZXkgaXMgdGhlIGluc2VydCBrZXksIGp1c3QgbGlrZSBKYXdzIG9yIE5WREEuIERvIGEgd2ViIHNl
YXJjaCBmb3IgIm9yY2Egc2NyZWVuIHJlYWRlciIgYW5kIHlvdSB3aWxsIGZpbmQgcGxlbnR5IG9m
IGluZm9ybWF0aW9uIHRvIGhlbHAgZ2V0IHlvdSB1cCB0byBzcGVlZCB3aXRoIHRoaXMgc2NyZWVu
IHJlYWRlci4gSSBhbSBoYXZpbmcgbm8gcHJvYmxlbSBqdW1waW5nIGJldHdlZW4gaXQgYW5kIEph
d3MvTlZEQS4KPj4+IAo+Pj4gVGhpcyBleHBlcmllbmNlIGhhcyBiZWVuIGVuam95YWJsZSBmb3Ig
bWUgYW5kIEkgaG9wZSB0aGF0IGl0IHdpbGwgYmUgZm9yIHlvdSBhbHNvLiBEbyBub3QgaGVzaXRh
dGUgdG8gcmVhY2ggb3V0IGFzIG90aGVyIHF1ZXN0aW9ucyBhcmlzZS4gSSBjYW4gdGVsbCB5b3Ug
dGhhdCBkdXJpbmcgdGhlIHBhc3QgbW9udGgsIEkgaGF2ZSBzcGVudCBtYW55IGhvdXJzIHNlYXJj
aGluZyB0aGUgd2ViIGZvciBhbnN3ZXJzIHRvIHRoZSBtYW55LCBtYW55IHF1ZXN0aW9ucyB0aGF0
IGNhbWUgdXAgZm9yIG1lLiBBbmQgdGhlcmUgaXMganVzdCBzbyBtdWNoIGluZm8gaW4gdGhlIHdl
YiByZWxhdGVkIHRvIHVzaW5nIExpbnV4Lgo+Pj4gCj4+PiBCZXN0LAo+Pj4gSm9obgo+Pj4gCj4+
PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

