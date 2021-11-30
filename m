Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAC3463FBA
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 22:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638306911;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IoxmquHYv6ugG1280XQMw9oeuyu8taR9UV6OuOE6p34=;
	b=a3ZjRAHX846UrbMGrCWceWPJhKafIFquiBK4WMJycA2EzswAdACJo0pcuzwgH9PqQ8HE0O
	cj2wsNwPGP9bbWP//QqXe65s2KW0R1FOIaIOpSMwQKoAqYTbG/kce/Lusj8osYt4Y6dqfT
	X9qUgv7/OEgEE9bLMpeHrPz20I42NdU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-247-JZ8XONHNMO-4TLYgk4mGUg-1; Tue, 30 Nov 2021 16:15:07 -0500
X-MC-Unique: JZ8XONHNMO-4TLYgk4mGUg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C06D61006AA5;
	Tue, 30 Nov 2021 21:15:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11E6745D68;
	Tue, 30 Nov 2021 21:15:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D3244BB7C;
	Tue, 30 Nov 2021 21:14:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AULCRkF000607 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 16:12:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 40C07C15E73; Tue, 30 Nov 2021 21:12:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C2B8C15E6F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:12:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21FF38011A5
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:12:27 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-233-sGeKH59QNAayw2RrdOECCg-1;
	Tue, 30 Nov 2021 16:12:24 -0500
X-MC-Unique: sGeKH59QNAayw2RrdOECCg-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B0BF2A1CE8
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:11:41 +0100 (CET)
Message-ID: <d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
Date: Tue, 30 Nov 2021 22:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: My qemu error
To: blinux-list@redhat.com
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
In-Reply-To: <cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AULCRkF000607
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG8gQnJhbmR0LAoKVGhpcyBkb2VzIHRlbGwgaWYgdGhlIHN1cHBvcnQgZm9yIEtWTSBpcyBwcm9w
ZXJseSBjb25maWd1cmVkIGluIHRoaXMga2VybmVsLgoKdG8gY2hlY2ssIHlvdSBjYW4gZG8gdGhp
czoKCmNwIC9wcm9jL2NvbmZpZy5neiAvdG1wCmNkIC90bXAKZ3VuemlwIGNvbmZpZy5negp5b3Ug
d2lsbCBnZXQgYSBmaWxlIG5hbWVkIGNvbmZpZyB3aXRoIGNvbmZpZ3VyYXRpb24gc2V0dGluZ3Mg
b2YgdGhlIGtlcm5lbAoKWW91IGNhbiBkbyB0aGUgc2FtZSB3aXRoIFNsaW50IGFuZCBjb21wYXJl
LgoKQW5kL29yIHVzZSBhIEZlZG9yYSBzdXBwb3J0IGNoYW5uZWwuCgpDaGVlcnMsCgpEaWRpZXIK
CgpMZSAzMC8xMS8yMDIxIMOgIDIxOjQzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4gQXMgSSBzdGF0ZWQsIEknbSBydW5uaW5nIEZlZG9yYSBNYXRlIENv
bXBpeiAzNSBhdCB0aGUgbW9tZW50LCBhbmQKPiAKPiAkdW5hbWUgLXIKPiAKPiBnaXZlcyBtZSB0
aGUgZm9sbG93aW5nLgo+IAo+IDUuMTUuNS0yMDAuZmMzNS54ODZfNjQKPiAKPiAKPiBXYXJtIHJl
Z2FyZHMsCj4gCj4gQnJhbmR0IFN0ZWVua2FtcAo+IAo+IFNlbnQgZnJvbSB0aGUgRmVkb3JhIG1h
Y2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCj4gCj4gT24gMjAyMS8xMS8zMCAyMDowMywgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gUFMgaW5zdGVhZCBvZjoKPj4g
L2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xMwo+PiBwbGVhc2UgcmVhZDoKPj4gL2Jvb3QvY29u
ZmlnLWdlbmVyaWMtNS4xMy4xMwo+Pgo+PiBPVCBCb3RoIHRoZSA1LjEzIGFuZCA1LjE0IGhhdmUg
YmVlbiBkZWNsYXJlZCBFbmQgb2YgTGlmZSwgSSB3aWxsIAo+PiBwcm92aWRlIGEKPj4gNS4xNS56
IHdoZW4gSSB3aWxsIHRoaW5rIHRoaXMgYnJhbmNoIGlzIHN0YWJsZSBlbm91Z2guCj4+Cj4+IERp
ZGllcgo+Pgo+PiBMZSAzMC8xMS8yMDIxIMOgIDE4OjQ5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBCcmFuZHQsCj4+PiBhbnN3ZXJzIGlubGlu
ZQo+Pj4KPj4+IExlIDMwLzExLzIwMjEgw6AgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+PiBxZW11LXN5c3RlbS14ODZfNjQ6IHdhcm5pbmc6
ICctc291bmRodyBoZGEnIGlzIGRlcHJlY2F0ZWQsIHBsZWFzZSAKPj4+PiB1c2UgJy1kZXZpY2Ug
aW50ZWwtaGRhIC1kZXZpY2UgaGRhLWR1cGxleCcgaW5zdGVhZAo+Pj4+IGF1ZGlvOiBEZXZpY2Ug
aGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFtZXRlciBpcyBkZXByZWNhdGVkLCBwbGVhc2UgCj4+
Pj4gc3BlY2lmeSBhdWRpb2Rldj1wYQo+Pj4+IGF1ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBk
ZWZhdWx0IHBhcmFtZXRlciBpcyBkZXByZWNhdGVkLCBwbGVhc2UgCj4+Pj4gc3BlY2lmeSBhdWRp
b2Rldj1wYQo+Pj4+Cj4+PiBJbiB0aGUgY29tbWFuZCByZW1vdmUKPj4+IC1zb3VuZGh3IGhkYQo+
Pj4gd2hpY2ggaXMgcmVkdW5kYW50IHdpdGgKPj4+IC1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2Ug
aGRhLWR1cGxleAo+Pj4gYW5kIHByb2JhbHkgcmVwY2FjZQo+Pj4gLS1hdWRpb2RldiBwYQo+Pj4g
Ynk6Cj4+PiAtLWF1ZGlvZGV2PXBhaG93ZXZlciwgbWF5YmUgdGhpcyB3aG9sZSBzdHVmZiBpcyBu
b3QgCj4+PiBuZWNlc3Nhcnk6LWF1ZGlvZGV2IHBhLGlkPXBhLG91dC5taXhpbmctZW5naW5lPW9m
ZixvdXQubGF0ZW5jeT0yMDAwMAo+Pj4gSSBkb24ndCBoYXZlIGl0Lgo+Pj4KPj4+IMKgPsKgIGtu
b3cgaXQgZG9lcyB3b3JrIHVuZGVyIFNsaW50LCBidXQgbm90IHVuZGVyIEZlZG9yYSwgQXJjaCBv
ciBVYnVudHUuCj4+Pgo+Pj4gTWF5YmUgdGhlIGtlcm5lbCB5b3UgYXJlIHJ1bm5pbmcgaW4gRmVk
b3JhLCBBcmNoIG9yIFVidW50dSBkb2VzIG5vdCAKPj4+IGhhdmUgYQo+Pj4gcHJvcGVyIGNvbmZp
Z3VyYXRpb24gZm9yIEtWTSwgcmVhZDoKPj4+IGh0dHBzOi8vd3d3LmxpbnV4LWt2bS5vcmcvcGFn
ZS9UdW5pbmdfS2VybmVsCj4+Pgo+Pj4gSW4gU2xpbnQgdGhlIGtlcm5lbCBjb25maWd1cmF0aW9u
IGlzIGZvdW5kIGluIG9uZSBvZiB0aGVzZSBmaWxlczoKPj4+IC9ib290L2NvbmZpZy1nZW5lcmlj
LTUuMTQuMTQueDY0Cj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjEzCj4+PiBUaGVzZSBj
b21tYW5kczoKPj4+IGNhdCAvcHJvYy9jbWRsaW5lCj4+PiB1bmFtZSAtcgo+Pj4gdGVsbCB5b3Ug
d2hpY2gga2VybmVsIGlzIHJ1bm5pbmcsIHNvIHlvdSBrbm93IGhvdyBpdCBpcyBjb25maWd1cmVk
Lgo+Pj4KPj4+IEFsc28sIHRoZXJlIGNvdWxkIGJlIGFuIGlzc3VlIHdpdGggeW91ciBxZW11IHZl
cnNpb24uCj4+Pgo+Pj4gSW4gU2xpbnQgYXQgdGltZSBvZiB3cml0aW5nOgo+Pj4gZGFuY2Vbfl0k
IHFlbXUtc3lzdGVtLXg4Nl82NCAtLXZlcnNpb24KPj4+IFFFTVUgZW11bGF0b3IgdmVyc2lvbiA2
LjAuMAo+Pj4gQ29weXJpZ2h0IChjKSAyMDAzLTIwMjEgRmFicmljZSBCZWxsYXJkIGFuZCB0aGUg
UUVNVSBQcm9qZWN0IGRldmVsb3BlcnMKPj4+Cj4+PiBDaGVlcnMsCj4+PiBEaWRpZXIKPj4+Cj4+
Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

