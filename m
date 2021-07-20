Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F014B3CFA7F
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 15:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626787561;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mzLJ83C239UQUuEcHqiPApA67z/qk9fcht/Y7e2jn/0=;
	b=QZmBnHI9XGiXqxrUBPjah0UA91enZ02NNRrUXeaMNa3Vqq5rdztkqVLHgolE8wtBsrfLC/
	HkDo9P4gToYzg0i5aNnuTMkii5Y4KTbe05uAE/x1fdo5GbzlaxZKrYhZNItSTHNK7UKSni
	FtSzp75QyJNsE7oCTsJaIVykTJMk3AM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-SZU4ZMbZN2-_b9N4FloAgw-1; Tue, 20 Jul 2021 09:25:59 -0400
X-MC-Unique: SZU4ZMbZN2-_b9N4FloAgw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC008C7403;
	Tue, 20 Jul 2021 13:25:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 296985D740;
	Tue, 20 Jul 2021 13:25:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EB5F4EA2A;
	Tue, 20 Jul 2021 13:25:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KDPP3i031894 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 09:25:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 568BB7D558; Tue, 20 Jul 2021 13:25:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D442D29DF
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 13:25:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C9408482CD
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 13:25:21 +0000 (UTC)
Received: from wblv-ip-smtp-10-5.saix.net (wblv-ip-smtp-10-5.saix.net
	[196.25.240.110]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-527-Ub-aqtDEPJmA8J8AYE0fhQ-1; Tue, 20 Jul 2021 09:25:18 -0400
X-MC-Unique: Ub-aqtDEPJmA8J8AYE0fhQ-1
Received: from RinaldoSmallPC (unknown [105.187.26.14])
	by wblv-ip-smtp-10-5.saix.net (Postfix) with SMTP id 85F565D4
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 14:49:17 +0200 (SAST)
Message-ID: <0BF4C3786225458D8EEB4D26F59F9AD3@RinaldoSmallPC>
To: <blinux-list@redhat.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com><C2911657-E880-4797-8B75-5666425CEE15@gmail.com><74CC17E1-4CF3-41EA-A314-75A2D0ADB886@gmail.com>
	<CAGJxbF5mQ301ZWTbgiksQU_rASyW24QLmJ3MDczzaFao_t7w7w@mail.gmail.com>
In-Reply-To: <CAGJxbF5mQ301ZWTbgiksQU_rASyW24QLmJ3MDczzaFao_t7w7w@mail.gmail.com>
Subject: Unsubscibe
Date: Tue, 20 Jul 2021 14:49:15 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16KDPP3i031894
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VW5zdWJzY3JpYmUKCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tIApGcm9tOiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uClNlbnQ6IE1vbmRheSwgSnVseSAxOSwgMjAyMSAyOjU5
IFBNClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uClN1YmplY3Q6IFJlOiBG
ZWRvcmEgcHJvcyBhbmQgY29ucwoKUHJlc3MgV2luZG93cyAoc3VwZXIpICsgQWx0ICsgUywgYW5k
IE9yY2Egc2hvdWxkIHNwZWFrLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQpn
ZW1pbmk6Ly90aWxkZS5waW5rL35kZXZpbnByYXRlci8KCgoKT24gU2F0LCBKdWwgMTcsIDIwMjEg
YXQgMTA6MDQgQU0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBJIHRyaWVkIGluc3RhbGxpbmcgRmVkb3JhIGluIFZN
V2FyZSB3b3Jrc3RhdGlvbiBpbiBXaW5kb3dzLCBidXQgSSBoYXZlIG5vCj4gaWRlYSB3aGF0IHRv
IGRvIGFmdGVyIHBvd2VyaW5nIG9uIHRoZSBWTS4KPgo+IFBsZWFzZSBoZWxwPwo+Cj4gV2FybSBy
ZWdhcmRzLAo+Cj4gQnJhbmR0IFN0ZWVua2FtcAo+Cj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWly
Cj4KPiBDb250YWN0Ogo+Cj4gUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1
MjU5MTgxPgo+Cj4gRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86YnJh
bmR0LnN0ZWVua2FtcEBnbWFpbC5jb20+Cj4KPiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxo
dHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPgo+Cj4KPgo+ID4gT24gMTYg
SnVsIDIwMjEsIGF0IDE3OjQyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwK
PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiBXaXRoIEZlZG9yYSwgeW91
IGF0IGxlYXN0IGtub3cgdGhhdCB0aGUgTWF0ZSBpbnN0YWxsZXIgaXMgYWNjZXNzaWJsZS4KPiBV
YnVudHUgTWF0ZeKAmXMgaW5zdGFsbGVyIGlzbuKAmXQgYWNjZXNzaWJsZSwgd2l0aCB0aGUgbGF0
ZXN0IDIwLjEwIHJlbGVhc2UuCj4gRmVkb3Jh4oCZcyBNYXRlIHNwaW4sIHdoaWNoIEkganVzdCBp
bnN0YWxsZWQgdG9kYXksICppcyogYWNjZXNzaWJsZS4gWW91Cj4gc3RpbGwgaGF2ZSB0byBlbmFi
bGUgQXNzaXN0aXZlIFRlY2hub2xvZ3kgc3VwcG9ydCwgYW5kIHR1cm4gb24gT3JjYSwgYW5kCj4g
c2V0IGEga2V5Ym9hcmQgY29tbWFuZCBmb3IgT3JjYSwgYnV0IHRoYXTigJlzIG5vdCB0b28gaGFy
ZCB0byBkby4KPiA+IERldmluIFByYXRlcgo+ID4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+ID4K
PiA+IEh0dHBzOi8vZGV2aW5wcmF0ZXIuZmxvdW5kZXIub25saW5lCj4gPgo+ID4+IE9uIEp1bCAx
NiwgMjAyMSwgYXQgMTA6MjkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PAo+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGVsbG8sIEkgYW0g
aW50ZXJlc3RlZCBpbiBhZHZhbnRhZ2VzIGFuZCBkaXNhZHZhbnRhZ2VzIG9mIEZlZG9yYSB2cwo+
IFVidW50dS1iYXNlZCBsaW51eC4KPiA+Pgo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPgo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

