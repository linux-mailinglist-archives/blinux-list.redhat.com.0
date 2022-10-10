Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB3D5FA2DD
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 19:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665423942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xJistwQ0nuR9EVRZQ8XQJCLP0sOchv6h2RXlmCto8OY=;
	b=agp/fTzlt4ZkkBDag8Cd2aPw7r4UKz+JP8s8kASayrJH25N6gosnJC4o67O1AHoifTZMkr
	LVgWTVHTOkKNQH8N37G/1jtM3Ap3TkOn+ugqNECjrkW7P3RJdbQtTfNpvYUK0YuBnwVoAQ
	Ry0JAGNyz5SGzS3bCPT/4zJv/kk6d38=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-654-lU_rYpj4Ovmk82wbnZRJOQ-1; Mon, 10 Oct 2022 13:45:39 -0400
X-MC-Unique: lU_rYpj4Ovmk82wbnZRJOQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB32B382ECC0;
	Mon, 10 Oct 2022 17:45:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F247740E992F;
	Mon, 10 Oct 2022 17:45:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 770DA1946A48;
	Mon, 10 Oct 2022 17:45:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 19:45:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: TDSR?
To: blinux-list@redhat.com
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
In-Reply-To: <mailman.7185.1665419482.6076.blinux-list@redhat.com>
Message-ID: <mailman.6853.1665423932.6082.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U28gbmVpdGhlciB0ZHNyIG5vciB5YXNyIHdpbGwgbGFuZCBpbiBTbGludCAxNS4wLi4uCgouLi4g
d2hpY2ggYWxyZWFkeSBpbmNsdWRlcyBzcGVlY2gtZGlzcGF0Y2hlciwgZXNwZWFrdXAsIHNwZWVj
aGQtdXAsIHNwZWVjaGQtZWwsCmVtYWNzcGVhaywgYnJsdHR5LCBhbmQgb2YgY291cnNlIG9yY2Eg
c28gY2FuIGJlIHVzZWQgb24gdGhlIGNvbnNvbGUgYXMgaW4KZ3JhcGhpY2FsIGVudmlyb25tZW50
cyAobWFpbiBpbmNsdWRlZCBhcmUgTUFURSBhbmQgTFhRdCkgYW5kIHN3aXRjaCBiYWNrIGFuZApm
b3J0aCBiZXR3ZWVuIGNvbnNvbGUgYW5kIGdyYXBoaWNhbCB3aXRob3V0IGxvc2luZyBzcGVlY2gu
CgpJIHdvdWxkIGJlIGdsYWQgdG8gYW55b25lIHRlc3RpbmcgdGhlIHNsaW50LTE1LjAgcmVsZWFz
ZSBjYW5kaWRhdGUgMiwgSVNPCmF2YWlsYWJsZSBoZXJlOgpodHRwczovL3NsYWNrd2FyZS51ay9z
bGludC94ODZfNjQvc2xpbnQtMTUuMC9pc28vClBsZWFzZSByZWFkIGZpcnN0OgpodHRwczovL3Ns
YWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9SRUFETUUtcmMyCmh0dHBzOi8vc2xp
bnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjX2luc3RhbGxfc2xpbnQKaHR0cHM6Ly9zbGFja3dhcmUu
dWsvc2xpbnQveDg2XzY0L3NsaW50LTE1LjAvaXNvL1JFQURNRS1hbHQuaXNvCgoKSWYgeW91IGxp
a2UgaXQgeW91IHdpbGwgbm90IGhhdmUgdG8gcmVpbnN0YWxsIHdoZW4gdGhlICJvZmZpY2lhbCBy
ZWxlYXNlIiBJU08Kd2lsbCBiZSBhdmFpbGFibGUgaW4gYSB2ZXJ5IGZldyBkYXlzLiBPbiB0aGUg
b3RoZXIgaGFuZCBpZiBtYWpvciBidWdzIGFyZSBmb3VuZApJIHdpbGwgcHJvdmlkZSBhbm90aGVy
IElTTywgZWxzZSwganVzdCB1cGRhdGUgdGhlIGluc3RhbGxlZCBwYWNrYWdlcyB0byBwcmF2aWRl
CmZpeGVzIHdpbGwgYmUgZW5vdWdoLgoKQmVzdCwKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyCmRp
aWRlcmF0c2xpbnRkb3RmcgoKCkxlIDEwLzEwLzIwMjIgw6AgMTg6MzAsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUZHNyIGlzIGluIGZhY3QgbXVjaCBs
aWtlIFlBU1IgaW4gZnVuY3Rpb25hbGl0eSBmcm9tIHdoYXQgSSBjYW4gdGVsbCwgd2l0aCB0aGUK
PiBleGNlcHRpb24gdGhhdCBpdCBhcHBlYXJzIHRoZXJlIGlzIG5vIHdheSB0byBjaGFuZ2Ugd2hh
dCB2b2ljZSBpdCB1c2VzIHdpdGhvdXQKPiBlZGl0aW5nIHlvdXIgc3BlZWNoLWRpc3BhdGNoZXIg
Y29uZmlndXJhdGlvbi4gSSBkaWRuJ3QgZmluZCBhbnkgbWVudGlvbiBvZiBhbgo+IGV4Y2VwdGlv
biBkaWN0aW9uYXJ5IGVpdGhlciwgd2hpY2ggd2FzIGluY2x1ZGVkIGluIFlBU1IgYXMgSSByZWNh
bGwsIHRob3VnaCBpdAo+IGhhcyBiZWVuIGEgdmVyeSBsb25nIHRpbWUgc2luY2UgSSB1c2VkIHRo
YXQuIFRoYXQgc2FpZCwgSSBzZWUgbm8gYWR2YW50YWdlIHRvCj4gdXNpbmcgaXQgaWYgeW91IGFs
cmVhZHkgaGF2ZSBTcGVha3VwIHJ1bm5pbmcuIEkgYWxzbyBkb24ndCBzZWUgYW55IGFkdmFudGFn
ZSB0bwo+IHJ1bm5pbmcgU3BlYWt1cCBhbmQgRmVucmlyIGF0IHRoZSBzYW1lIHRpbWUsIGFuZCB0
aGUgcHJpbWFyeSBhZHZhbnRhZ2Ugb2YgRmVucmlyCj4gb3ZlciBTcGVha3VwLCBhc2lkZSBmcm9t
IHNwZWxsIGNoZWNrIGFuZCBvdGhlciB1c2VmdWwgZmVhdHVyZXMsIGlzIHNpbXBseSB0aGF0IGEK
PiBrZXJuZWwgdXBkYXRlIHdvbid0IGV2ZW4gdGVtcG9yYXJpbHkgYnJlYWsgeW91ciBzY3JlZW4g
cmVhZGVyIGFzIEkgaGF2ZSBzZWVuCj4gaGFwcGVuLCB0aG91Z2ggc3VjaCBicmVha2FnZSBkb2Vz
IG9jY3VyIHJhdGhlciBpbmZyZXF1ZW50bHkuIFRoYXQgc2FpZCwgcnVubmluZwo+IGVudGlyZWx5
IGluZGVwZW5kZW50IG9mIHRoZSBrZXJuZWwgZG9lcyBvZmZlciBiZXR0ZXIgcG9ydGFiaWxpdHks
IGFuZCBhbHNvIG1lYW5zCj4gdGhhdCB0aGUgc2NyZWVuIHJlYWRlciBjYW4gYmUgdXBkYXRlZCBp
bmRlcGVuZGVudGx5IG9mIHRoZSBrZXJuZWwsIHdoaWNoIElNTyBpcwo+IGFsd2F5cyBhIGdvb2Qg
dGhpbmcodG0pLgo+IAo+IH5LeWxlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cg==

