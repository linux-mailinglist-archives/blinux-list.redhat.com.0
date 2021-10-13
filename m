Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CB48942B0E9
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 02:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634084369;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xGkH2+9yvJg/bjV/xYuMRnqVuIO3dSKMxQuUjdyhjw8=;
	b=UcLpqF8RhB+djh4TyJiV9Mczsl1qNC378H7OzXmRPOrq40O4ys10bBRtJWvl1X0hdGNiAD
	u1Voc0KXTcGywAz2lPrlOhexjIZdvCenOMyhEaygAkETLLbdFXTlatMTNgy2RX+wjY6AzI
	TYHnCbb/9uKeKlsb78H17zRU5OLcLe8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-CONQFxVGMfOaqTGWlb8Lpw-1; Tue, 12 Oct 2021 20:19:26 -0400
X-MC-Unique: CONQFxVGMfOaqTGWlb8Lpw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B0A493C;
	Wed, 13 Oct 2021 00:19:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A15C19C79;
	Wed, 13 Oct 2021 00:19:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AEE81180598A;
	Wed, 13 Oct 2021 00:19:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19D0JESY001606 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 20:19:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2EF652180128; Wed, 13 Oct 2021 00:19:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 292EF218012F
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 00:19:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D2B2100DE6B
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 00:19:11 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com
	[209.85.161.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-giXsFNfINDKnp-UUoKV8fQ-1; Tue, 12 Oct 2021 20:19:07 -0400
X-MC-Unique: giXsFNfINDKnp-UUoKV8fQ-1
Received: by mail-oo1-f54.google.com with SMTP id
	r4-20020a4aa2c4000000b002b6f374cac9so263790ool.6
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 17:19:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=5gTBvhSGSpQozVTNCZ9eTcDBYEbwNsioYCb4HtziT/M=;
	b=H5EFCJnpXWCBJVRf/DkYUNjDGk1r/obZH2XkkUM7lWIx7zI8FQLzRpmoRTXY75BUUe
	0m9j9fITHkROcL2jNZqXDVHN4iLuZSQIZwL7cam+aifTSqxX52LI3yJvvgdo29qtvGv3
	R1T4pMrjUEzOrqYE1fjd34t4SzHt1DMKZlUS5TryjD4Ymb5M1OU0ZV7d7/t0tnYu9F5s
	/FFaCkywK983whk1D6o9gCnGZ2mclupY3smfRIKViclyCq7qgnJj73OsohElna490jeB
	uS/MR59MYidMRphe1BVW9DGA2/4oZY8hvp1BWgrfZ4EKEpNAee7HhCHj0wINylho9qWh
	hTiw==
X-Gm-Message-State: AOAM5316ypQ83HRwMRj+XrqZkiBOQT4AarHJ9DLL8cRGv7p5PRoBUZQt
	3/gZtGZ5bzNC2t8sop/9bZbnfklwkE8=
X-Google-Smtp-Source: ABdhPJxd0waM9kYb0xSXSi1pp1U+ppH9xwIlk+PBahzC2ylfsZNVpVfth2N54hHLpZbA7kEgdLs/fg==
X-Received: by 2002:a05:6820:13c:: with SMTP id
	i28mr8802216ood.65.1634084345859; 
	Tue, 12 Oct 2021 17:19:05 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:58d0:fb73:2550:ef8e])
	by smtp.gmail.com with ESMTPSA id
	e16sm2591258oie.17.2021.10.12.17.19.05 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 17:19:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Tue, 12 Oct 2021 19:19:04 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<CAGJxbF7TG=nP3C4bZ=BqkgExmjv+FZq1zz6XYsc61MFPSX8h2Q@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAGJxbF7TG=nP3C4bZ=BqkgExmjv+FZq1zz6XYsc61MFPSX8h2Q@mail.gmail.com>
Message-Id: <91C8E9CA-4777-4800-B77D-FD39DF7E1DDB@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19D0JESY001606
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2luY2Ugb3RoZXIgZGlzdHJpYnV0aW9ucyBtYXkgcnVuIG9yY2EgYWZ0ZXIgbG9nIGluLCB3aHkg
bWlnaHQgZmVkb3JhIG1hdGUgbm90IGJlIGFibGUgdG8gZG8gc28/CkFueSBndWVzc2VzPwoKPiBP
biBPY3QgMTIsIDIwMjEsIGF0IDU6MzYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEFoLCBva2F5LiBXaGVu
IHlvdSBsb2cgaW4sIHRyeSBwcmVzc2luZyBBbHQgKyBGMiwgdHlwaW5nIG9yY2EsIGFuZCBwcmVz
c2luZwo+IEVudGVyLiBUaGVuIGdvIGludG8gdGhlIG1lbnVzIHdpdGggQWx0ICsgRjEsIGxlZnQg
YXJyb3cgdG8gYWRtaW5pc3RyYXRpb24gSQo+IHRoaW5rLCBhcnJvdyB0byBwZXJzb25hbGl6YXRp
b24sIHJpZ2h0IGFycm93LCBkb3duIGFycm93IHRvICJhc3Npc3RpdmUKPiB0ZWNobm9sb2dpZXMi
LCBwcmVzcyBFbnRlciwgY2hlY2sgdGhhdCBib3gsIGFuZCBzb21ld2hlcmUgaW4gdGhhdCBzeXN0
ZW0gb2YKPiBkaWFsb2dzIGlzIGEgd2F5IHRvIGhhdmUgaXQgdHVybiBvbiBhdCBzdGFydHVwLgo+
IERldmluIFByYXRlcgo+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPiBnZW1pbmk6Ly90aWxkZS5w
aW5rL35kZXZpbnByYXRlci8KPiAKPiAKPiAKPiBPbiBUdWUsIE9jdCAxMiwgMjAyMSBhdCA1OjMw
IFBNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+IAo+PiBUaGlzIHdhcyBmZWRvcmEgMzQgbWF0ZS4KPj4gCj4+PiBP
biBPY3QgMTIsIDIwMjEsIGF0IDU6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+IAo+Pj4gV2hhdCBk
aXN0cmlidXRpb24gaXMgdGhpcyBvbj8KPj4+IERldmluIFByYXRlcgo+Pj4gci5kLnQucHJhdGVy
QGdtYWlsLmNvbQo+Pj4gZ2VtaW5pOi8vdGlsZGUucGluay9+ZGV2aW5wcmF0ZXIvCj4+PiAKPj4+
IAo+Pj4gCj4+PiBPbiBUdWUsIE9jdCAxMiwgMjAyMSBhdCA0OjE2IFBNIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+PiAKPj4+PiBBZnRlciBpbnN0YWxsaW5nLCBJIGhlYXJkIOKAmXNjcmVlbi1yZWFkZXIgb2Zm
4oCZLCBzbyBJIHR1cm5lZCBvcmNhIG9uLgo+Pj4+IFRoZW4gSSB3YXMgdG9sZCB0byByZWJvb3Qu
Cj4+Pj4gQWZ0ZXIgcmVib290aW5nLCBJIHR1cm5lZCBvcmNhIG9uLCB0aGVuIGxvZ2dlZCBpbi4K
Pj4+PiBUaGVuLCBubyBzcGVlY2guCj4+Pj4gQ291bGQgbm90IGdldCBvcmNhIHdvcmtpbmcuCj4+
Pj4gCj4+Pj4+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNzoxMiBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8Cj4+Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Pj4+IAo+Pj4+PiBBIGh1Z2UgKzEgZm9yIEZlZG9yYSBNQVRFLiBJIGhhdmUgaXQgcnVubmluZyBv
biB0d28gY29tcHV0ZXJzIGhlcmUsIG9uZQo+Pj4+IGlzIG5vdCBtaW5lLCBhbmQgaXQgd29ya3Mg
Z3JlYXQuIE9yY2EgY29tZXMgd2l0aCBpdCwgYW5kIHlvdSBjYW4gcnVuIGEKPj4gZnVsbAo+Pj4+
IGluc3RhbGwgYWZ0ZXIgcHJlc3NpbmcgYWx0K2YyIHRvIG9wZW4gdGhlIHJ1biB3aW5kb3cgYW5k
IHRoZW4gZW50ZXJpbmcKPj4gdGhlCj4+Pj4gd29yZCBvcmNhLiBXaWZpIGdlbmVyYWxseSB3b3Jr
cyBvdXQgb2YgdGhlIGJveCwgdGhvdWdoIHRoZQo+PiBOZXR3b3JrTWFuYWdlcgo+Pj4+IGFwcGxl
dCB0aGF0IGNvbnRyb2xzIGl0IGRvZXNuJ3QgdGVsbCB5b3Ugd2hhdCBpdCBpcy4gU3RpbGwsIHlv
dSBjYW4ganVzdAo+Pj4+IGhvbGQgdGhlIGFsdCBhbmQgY29udHJvbCBrZXlzIGFuZCBkb3VibGUg
dGFwIHRoZSB0YWIga2V5IHRvIGdldCB0byB0aGUKPj4gdG9wCj4+Pj4gcGFuZWwsIHRoZW4gc2hp
ZnQgdGFiIHBhc3QgdGhlIHRvZ2dsZSBidXR0b24gYW5kIHByZXNzIHRoZSBlbnRlciBrZXkgdG8K
Pj4+PiBicmluZyB1cCB0aGUgbWVudSB0aGF0IGhhcyB5b3VyIHdpZmkgY29ubmVjdGlvbnMuIFRo
ZXJlJ3Mgbm90IG11Y2ggbW9yZQo+PiB0bwo+Pj4+IHRlbGwgb3RoZXIgdGhhbiBpdCdzIGEgZ3Jl
YXQgT1MsIG5vdCBqdXN0IGZvciBsZWFybmluZywgYnV0IGZvciBkYWlseQo+PiB1c2UsCj4+Pj4g
YW5kIG9uZSBvZiB0aGUgY29tcHV0ZXJzIGluIHRoZSBob3VzZSB0aGF0IGlzIHJ1bm5pbmcgaXQg
aXMgZXZlbiBiZWluZwo+PiB1c2VkCj4+Pj4gZm9yIGdhbWluZyBhbmQgbGl2ZSBzdHJlYW1pbmcu
IElmIHlvdSBuZWVkIHRvIGRpZyBkZWVwZXIgaW50byB0aGUgZ3V0cwo+PiBvZgo+Pj4+IHRoZSBz
eXN0ZW0sIGl0IGFsbG93cyBmb3IgdGhhdCBhcyB3ZWxsLiBJIGZvciBvbmUgaGlnaGx5IHJlY29t
bWVuZCB0aGUKPj4+PiBGZWRvcmEgTUFURSBzcGluLgo+Pj4+PiAKPj4+Pj4gfkt5bGUKPj4+Pj4g
Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

