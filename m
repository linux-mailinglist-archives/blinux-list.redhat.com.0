Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDC642BD92
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 12:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634121960;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AsDD+lI/WiIqfiA7Lv5QvDyR8haPGCbeCzX13jwFPRs=;
	b=fSxscL0DqxhO2kG14LwjSGydhfz+YXwII4LxHvfUnlThHya+/EZm4gMKarUDN2DJBYyrhh
	y6ir+F1VkDMpJTrsFAtyoHcsiA+gJ4AvFyVDNUO92+CBl+tZhJ47QbTIuL7G81J1HZXgPL
	Kf6rqPbugBiRh0ODfSPwq0Eq+WakFBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-550-jSHulicGNjmYAukXJR7GBQ-1; Wed, 13 Oct 2021 06:45:56 -0400
X-MC-Unique: jSHulicGNjmYAukXJR7GBQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C85E4801ADB;
	Wed, 13 Oct 2021 10:45:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FB795C3E0;
	Wed, 13 Oct 2021 10:45:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 51BC718006DF;
	Wed, 13 Oct 2021 10:45:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DAja9k020993 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 06:45:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F41F40C1256; Wed, 13 Oct 2021 10:45:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B625400E410
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:45:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43E1B8007B1
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:45:36 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-62--RWrkkV8NWahrjNSQf20-Q-1; Wed, 13 Oct 2021 06:45:34 -0400
X-MC-Unique: -RWrkkV8NWahrjNSQf20-Q-1
Received: by mail-ot1-f49.google.com with SMTP id
	d21-20020a9d4f15000000b0054e677e0ac5so3034602otl.11
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 03:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=3G2oqtNd7ZXPM2v20cs/hCR+16egcw2CfL8ZFCG6kms=;
	b=PGk5q+v6nj+dETw2isKJwT3vGJcv+RLxRYhEZ5c8BzV8XovAMiDUnjubxER0yYh5nF
	4yXLk1vMEvJvwX2Vnl4VSRxXAHNnJbxoce2BcReuXQIwnNN2QcyoLoGGA9u896iofmk1
	7oxyTE7ZC65fnqglLg9l2pVEzuzIdsgHUdkkt+tqTWr8NFmTJDlAjZfe4+bGBqX+1i/T
	WlfzIhKOeISFuAT6n8VJ8SDqc1HAd0PuQUf5YtlD1bPX3WhxN1PFHzBQnFmOub69fRzz
	VNWPAr96gWoLQ2fUWvY+5Bk50R6kW+bnavXcMSM6nPBSEL9tx0D73zqdWboTpAw3qtpL
	iV6Q==
X-Gm-Message-State: AOAM530Xec8K4iGwn5c9oLsgz3RD4McGQQiRXczXG/BeOhZ/EH+7XQOr
	viboA9pykgx1dTXw/vy3Xk39T7qaf1s=
X-Google-Smtp-Source: ABdhPJwwK/f7im8dQUflB0WWrizWiQ29PPfJtYid8FuIpJ3pYjdbra4F8xUaBrWWROb0ir4imoJ6cA==
X-Received: by 2002:a9d:6655:: with SMTP id q21mr29694096otm.269.1634121933064;
	Wed, 13 Oct 2021 03:45:33 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:bd72:15f2:6981:d4c9])
	by smtp.gmail.com with ESMTPSA id e7sm1888118otq.4.2021.10.13.03.45.32
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Oct 2021 03:45:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Wed, 13 Oct 2021 05:45:31 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
Message-Id: <6DA5EF94-AB46-4F04-AB11-529A2E08E122@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19DAja9k020993
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

SGFkIHlvdSBiZWVuIGFibGUgdG8gZ2V0IGRyb3Bib3ggd29ya2luZyB3aXRoIG1pbnQ/Cgo+IE9u
IE9jdCAxMiwgMjAyMSwgYXQgNjoyMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSSBoYXZlIExpbnV4IE1p
bnQgKE1hdGUgRWRpdGlvbiksIG9uIG9uZSBvZiBteSBtYWNoaW5lcy4gVGhpcyBpcyBiYXNlZAo+
IG9uIFVidW50dSAyMC4wNCwgd2hpY2ggaXMgYSBsb25nLXRlcm0gc3RhYmxlIHZlcnNpb24uIEkg
aGVhciwgaXQgd2lsbCBiZQo+IHN1cHBvcnRlZCB0aWwgMjAzMD8gIHdpdGggb3JjYSBjb25maWd1
cmVkIGZvciBzcGVlY2g7IGNhbid0IHRlc3QgdGhlCj4gYnJhaWxsZSBzZXR1cCwgSSBoYXZlIG5v
IGRpc3BsYXkuICBUcnkgb3V0IHRoZSBsaXZlIHN5c3RlbSBmcm9tCj4gaHR0cHM6Ly9saW51eG1p
bnQuY29tLiAgCj4gCj4gSFRILAo+IAo+IAo+IERhdmUKPiAKPiAKPiBTZW50IGZyb20gbXkgVGhp
bmsgUGVuZ3VpbiBKNCBsYXB0b3AsIHJ1bm5pbmcgVHJpc3F1ZWwgR05VL0xpbnV4LCB2ZXJzaW9u
IDkuCj4gCj4gCj4gRGF2ZQo+IAo+IAo+IE9uIDEwLzEyLzIxIDY6MjkgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFRoaXMgd2FzIGZlZG9yYSAzNCBtYXRl
Lgo+PiAKPj4+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNToxOSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+
IFdoYXQgZGlzdHJpYnV0aW9uIGlzIHRoaXMgb24/Cj4+PiBEZXZpbiBQcmF0ZXIKPj4+IHIuZC50
LnByYXRlckBnbWFpbC5jb20KPj4+IGdlbWluaTovL3RpbGRlLnBpbmsvfmRldmlucHJhdGVyLwo+
Pj4gCj4+PiAKPj4+IAo+Pj4gT24gVHVlLCBPY3QgMTIsIDIwMjEgYXQgNDoxNiBQTSBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+Pj4gCj4+Pj4gQWZ0ZXIgaW5zdGFsbGluZywgSSBoZWFyZCDigJlzY3JlZW4tcmVh
ZGVyIG9mZuKAmSwgc28gSSB0dXJuZWQgb3JjYSBvbi4KPj4+PiBUaGVuIEkgd2FzIHRvbGQgdG8g
cmVib290Lgo+Pj4+IEFmdGVyIHJlYm9vdGluZywgSSB0dXJuZWQgb3JjYSBvbiwgdGhlbiBsb2dn
ZWQgaW4uCj4+Pj4gVGhlbiwgbm8gc3BlZWNoLgo+Pj4+IENvdWxkIG5vdCBnZXQgb3JjYSB3b3Jr
aW5nLgo+Pj4+IAo+Pj4+PiBPbiBPY3QgMTIsIDIwMjEsIGF0IDc6MTIgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+Pj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+Pj4+PiBBIGh1Z2UgKzEgZm9yIEZlZG9yYSBNQVRFLiBJIGhhdmUgaXQgcnVubmluZyBv
biB0d28gY29tcHV0ZXJzIGhlcmUsIG9uZQo+Pj4+IGlzIG5vdCBtaW5lLCBhbmQgaXQgd29ya3Mg
Z3JlYXQuIE9yY2EgY29tZXMgd2l0aCBpdCwgYW5kIHlvdSBjYW4gcnVuIGEgZnVsbAo+Pj4+IGlu
c3RhbGwgYWZ0ZXIgcHJlc3NpbmcgYWx0K2YyIHRvIG9wZW4gdGhlIHJ1biB3aW5kb3cgYW5kIHRo
ZW4gZW50ZXJpbmcgdGhlCj4+Pj4gd29yZCBvcmNhLiBXaWZpIGdlbmVyYWxseSB3b3JrcyBvdXQg
b2YgdGhlIGJveCwgdGhvdWdoIHRoZSBOZXR3b3JrTWFuYWdlcgo+Pj4+IGFwcGxldCB0aGF0IGNv
bnRyb2xzIGl0IGRvZXNuJ3QgdGVsbCB5b3Ugd2hhdCBpdCBpcy4gU3RpbGwsIHlvdSBjYW4ganVz
dAo+Pj4+IGhvbGQgdGhlIGFsdCBhbmQgY29udHJvbCBrZXlzIGFuZCBkb3VibGUgdGFwIHRoZSB0
YWIga2V5IHRvIGdldCB0byB0aGUgdG9wCj4+Pj4gcGFuZWwsIHRoZW4gc2hpZnQgdGFiIHBhc3Qg
dGhlIHRvZ2dsZSBidXR0b24gYW5kIHByZXNzIHRoZSBlbnRlciBrZXkgdG8KPj4+PiBicmluZyB1
cCB0aGUgbWVudSB0aGF0IGhhcyB5b3VyIHdpZmkgY29ubmVjdGlvbnMuIFRoZXJlJ3Mgbm90IG11
Y2ggbW9yZSB0bwo+Pj4+IHRlbGwgb3RoZXIgdGhhbiBpdCdzIGEgZ3JlYXQgT1MsIG5vdCBqdXN0
IGZvciBsZWFybmluZywgYnV0IGZvciBkYWlseSB1c2UsCj4+Pj4gYW5kIG9uZSBvZiB0aGUgY29t
cHV0ZXJzIGluIHRoZSBob3VzZSB0aGF0IGlzIHJ1bm5pbmcgaXQgaXMgZXZlbiBiZWluZyB1c2Vk
Cj4+Pj4gZm9yIGdhbWluZyBhbmQgbGl2ZSBzdHJlYW1pbmcuIElmIHlvdSBuZWVkIHRvIGRpZyBk
ZWVwZXIgaW50byB0aGUgZ3V0cyBvZgo+Pj4+IHRoZSBzeXN0ZW0sIGl0IGFsbG93cyBmb3IgdGhh
dCBhcyB3ZWxsLiBJIGZvciBvbmUgaGlnaGx5IHJlY29tbWVuZCB0aGUKPj4+PiBGZWRvcmEgTUFU
RSBzcGluLgo+Pj4+PiB+S3lsZQo+Pj4+PiAKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiAKPj4+PiAKPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

