Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 02705363B15
	for <lists+blinux-list@lfdr.de>; Mon, 19 Apr 2021 07:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618810843;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jm/ANIrzuxhM4CTgSBSBqWxK4B3ORP723hmBYSbJI3k=;
	b=TxU+ym0ULTQk2g0r5dVIngUpzsvXDwgKL+SI86vnV8a19r3uy338KegzYz7OsKwjYv49f2
	XKUeAuYa89nDPzUiD6H2dTz9ejcNKmjMi3vLptizEYqShkxSywUrtkyN1LDwLuAgEgMGNl
	CyN9zARV28gd06oQoJlMYjRcVc7lDIo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-zYsectmYPjW4gG7B6os8lA-1; Mon, 19 Apr 2021 01:40:41 -0400
X-MC-Unique: zYsectmYPjW4gG7B6os8lA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F734107ACE3;
	Mon, 19 Apr 2021 05:40:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DE1C5D741;
	Mon, 19 Apr 2021 05:40:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C5521806D17;
	Mon, 19 Apr 2021 05:40:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13J5aUfG007204 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 01:36:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6C578206354C; Mon, 19 Apr 2021 05:36:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66DF8206355A
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 05:36:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D98BF85A5BA
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 05:36:27 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-202-p1pD7y6uOxOhk0TSISYIjg-1; Mon, 19 Apr 2021 01:36:23 -0400
X-MC-Unique: p1pD7y6uOxOhk0TSISYIjg-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.7] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id C3E5D5EE49
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 05:30:55 +0000 (UTC)
In-Reply-To: <161877011177.7.14377886092267385856.5992902@simplelogin.co>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@[0.0.0.0]>
	<Pine.LNX.4.64.2104180111320.2518410@server2.shellworld.net>
	<alpine.NEB.2.23.451.2104180158400.20962@panix1.panix.com>
	<161877011177.7.14377886092267385856.5992902@simplelogin.co>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161881025547.7.12392101813774087546.6003316@slmail.me>
Date: Mon, 19 Apr 2021 05:30:55 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 6003316
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgZ29hbCBpcyBzaW1wbHkgdG8gYnJpbmcgbW9yZSB2YXJpZXR5IG9mIFRUUyB2b2ljZXMgd2hp
Y2ggY291bGQgYmUgaW5zdGFsbGVkIHRvIHVzZSB3aXRoIHRoZSBhbHJlYWR5IGV4aXN0aW5nIExp
bnV4IHNjcmVlbnJlYWRlcnMuIEZvciBleGFtcGxlLCBpbiBXaW5kb3dzIEkgY2FuIHVzZSB0aGUg
TlZEQSBzY3JlZW5yZWFkZXIgdG8gYWRqdXN0IHRoZSByYXRlIGFuZCBwaXRjaCBldGMgb2YgYSBU
VFMgdm9pY2UuIEJ1dCB3aGVuIGFsbCBpcyBzYWlkIGFuZCBkb25lLCBJIHByZWZlciB0aGUgc291
bmQgcXVhbGl0eSwgdGhlIHRhbWJlciwgb2YgY2VydGFpbiBUVFMgdm9pY2VzIG1vcmUgdGhhbiBv
dGhlcnMsIG5vIG1hdHRlciBob3cgbXVjaCBJIGNhbiBhZGp1c3QgcGVyYW1ldGVycyBpbiB0aGUg
c2NyZWVucmVhZGVyLiBPbiBXaW5kb3dzLCBJIGNhbiB1c2UgdGhlIE1pY3Jvc29mdCBaaXJhIHZv
aWNlIGZvciBleGFtcGxlLCBvciB0aGUgSXZvbmEgS2VuZHJhIHZvaWNlLiBObyBtYXR0ZXIgaG93
IG1hbnkgYWRqdXN0bWVudHMgSSBtYWtlIGZyb20gdGhlIHNjcmVlbnJlYWRlciwgZ3JhbnRlZCB0
aGF0IEkgYW0gYW4gYXZlcmFnZSB1c2VyIHdpdGggbm8gcHJvZ3JhbW1pbmcgZXhwZXJpZW5jZSwg
YnV0IG5vIG1hdHRlciB3aGF0IHN0YW5kYXJkIGFkanVzdG1lbnRzIEkgbWFrZSwgZm9yIG1lLCBp
dCBzdGlsbCBjb21lcyBkb3duIHRvIHF1YWxpdHkgb2Ygdm9pY2UsIGFuZCBJJ2xsIHN0aWxsIGNo
b29zZSBLZW5kcmEgb3ZlciBaaXJhIGlmIEkgaGF2ZSB0aGUgY2hhbmNlLiBTbywgSSBqdXN0IHdh
bnQgdG8gc2VlIG1vcmUgY2hvaWNlcyBvZiBUVFMgdm9pY2VzwqAgYmVjb21lIGF2YWlsYWJsZSB0
byBMaW51eCB1c2Vycy4KVGhlIGFkanVzdG1lbnRzIGFyZSBkb25lIHRocm91Z2ggdGhlIHNjcmVl
bnJlYWRlciB5ZXMsIGJ1dCBJIG9uY2UgdHJpZWQgb3V0IGEgdGhpcmQgcGFydHkgVFRTIG9uIFdp
bmRvd3MuIEl0IHdhcyBzb21lIHllYXJzIGJhY2ssIGJ1dCBJIHRoaW5rIEkgdXNlZCBpdCB3aXRo
IHRoZSBOVkRBIHNjcmVlbnJlYWRlciwgYW5kIHVubGlrZSBhbGwgdGhlIG90aGVyIFRUUyB2b2lj
ZXMgSSBoYXZlIGV2ZXIgdXNlZCB3aXRoIE5WREEgb24gV2luZG93cywgdGhlIG9uZSBwcm9kdWNl
ZCBieSB0aGF0IHNwZWNpZmljIGNvbXBhbnksIGFsd2F5cyBoYWQgYSB2ZXJ5IGxvbmcgcGF1c2Ug
YmV0d2VlbiBzZW50ZW5jZXMgbm8gbWF0dGVyIHdoYXQgYWRqdXN0bWVudHMgSSBtYWRlIGZyb20g
d2l0aGluIHRoZSBOVkRBIHNjcmVlbnJlYWRlci4gSXQgd2FzIGEgdHJpYWwgZGVtbywgc28gSSBj
aG9zZSBub3QgdG8gYnV5IHRoZSBUVFMgcHJvZHVjdCwgYmVjYXVzZSBubyBtYXR0ZXIgd2hhdCBh
ZGp1c3RtZW50cyBJIG1hZGUgaW4gdGhlIHNjcmVlbnJlYWRlciwgSSBjb3VsZG4ndCBnZXQgcmlk
IG9mIHRoZSBsYWdnaW5nIHBhdXNlcyBiZXR3ZWVuIHNlbnRlbmNlcyB3aGljaCBtYWRlIHJlYWRp
bmcgZG9jdW1lbnRzIHdpdGggdGhhdCBwYXJ0aWN1bGFyIFRUUyBpbnRvbGVyYWJsZS4gSSBoYXZl
IG5vdCBleHBlcmllbmNlZCB0aGF0IHdpdGggYW55IG9mIHRoZSBvdGhlciBUVFMgdm9pY2VzIGZy
b20gdmFyaW91cyBkaWZmZXJlbnQgY29tcGFuaWVzIEkgaGF2ZSB1c2VkLiBPbmx5wqAgdm9pY2Vz
IGZyb20gdGhhdCBzcGVjaWZpYyBjb21wYW55LCBhbmQgSSBzdXNwZWN0IGl0IG1heSBoYXZlIGhh
ZCBzb21ldGhpbmcgdG8gZG8gd2l0aCB3aGF0ZXZlciBtb2R1bGUgdGhleSBkZXZlbG9wZWQgdG8g
Y29ubmVjdCB0aGVpciB2b2ljZXMgdG8gdGhlIHNjcmVlbnJlYWRlci4KSSBoYXZlIGFsc28gZXhw
ZXJpZW5jZWQgVFRTIHZvaWNlcyB0aGF0IG1ha2UgbGlrZSBhIHNsaWdodCBwb3BwaW5nIHNvdW5k
IGFzIGl0IHRyaWVzIHRvIGtlZXAgdXAgd2l0aCB0aGUga2V5IHN0cm9rZXMgd2hlbiB3cml0aW5n
IGZhc3Qgb3IgbmF2aWdhdGluZyBmYXN0LCBhcyBpZiB0aGUgb3V0cHV0IGNhbid0IHF1aXRlIGtl
ZXAgdXAgd2l0aCB0aGUgaW5wdXQuCiBJIGFtIG5vdCBhIHRlY2ggc3BlY2lhbGlzdCwgYnV0IGJh
c2VkIG9uIHRob3NlIGtpbmQgb2bCoCBleHBlcmllbmNlcywgaXQgbGVhZHMgbWUgdG8gYmVsaWV2
ZSB0aGF0IHJlc3BvbnNpdmVuZXNzIG1heSBub3QganVzdCBiZSB0aGUgc2NyZWVucmVhZGVyIGl0
c2VsZiwgYnV0IGFsc28gbWF5IGRlcGVuZCBvbiB0aGUgc2VhbWxlc3MgY29ubmVjdGl2aXR5IGJl
dHdlZW4gdGhlIHNjcmVlbnJlYWRlciwgYW5kIHRoZSBUVFMgbW9kdWxlIHRoYXQgaXRzIGNvbm5l
Y3RlZCB0by4gSSBjb3VsZCBiZSB3cm9uZy4gSSBkb24ndCBrbm93IGFsbCB0aGUgaG93cyBhbmQg
d2h5cywgYnV0IHRob3NlIGhhdmUganVzdCBiZWVuIHNvbWUgb2YgbXkgZXhwZXJpZW5jZXMuCm5v
dCBldmVyeW9uZSB3aWxsIGJlIGludGVyZXN0ZWQgaW4gUmVhZHNwZWFrZXIgYW5kIHRoYXRzIHRv
dGFsbHkgZmluZS4gU29tZSBwZW9wbGUgYXJlIHNhdGlzZmllZCB3aXRoIHdoYXRzIGFscmVhZHkg
YXZhaWxhYmxlIGFuZCBJIHJlc3BlY3QgdGhlaXIgcHJlZmVyZW5jZXMuCk15IGhvcGUgZm9yIHRo
aXMgcG90ZW50aWFsIHByb2plY3QsIGlzIHNpbXBseSB0byBtYWtlIGF2YWlsYWJsZSBtb3JlIMKg
bmF0dXJhbC1saWtlIHZvaWNlcyBjb21wYXRpYmxlIHdpdGggTGludXggc2NyZWVucmVhZGVycyBm
b3IgdGhvc2Ugd2hvIHdhbnQgdGhlbS4KTm90IGV2ZXJ5b25lIHdpbGwgd2FudCBuYXR1cmFsLWxp
a2Ugdm9pY2VzIGFuZCB0aGF0cyBvay4KQnV0IGlmIHRoaXMgcHJvamVjdCBtb3ZlcyBmb3J3YXJk
LCB0aGVuIEkgZG8gd2FudCB0byBiZSBjZXJ0YWluIHRoYXQgdGhlcmUgd2lsbCBub3QgYmUgYW55
IGxhZ2dpbmcgaW4gcmVzcG9uc2Ugd2l0aCB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIHRoZSBUVFMg
bW9kdWxlLCBhbmQgdGhlIHNjcmVlbnJlYWRlci4gU28gaWYgUmVhZHNwZWFrZXIgZGV2ZWxvcHMg
YSBtb2R1bGUgZm9yIHRoZWlyIHZvaWNlcyB0byBsaW5rIHRvIE9yY2EgYW5kIFNwZWVjaGVkVXAs
IHRoZW4gSSBkbyB0aGluayB0aGF0IHRoZSBmbHVpZCByZXNwb25zaXZlbmVzcyBiZXR3ZWVuIE9y
Y2EgYW5kIEVzcGVhay1uZywgb3IgT3JjYSBhbmQgUkhWb2ljZSwgaXMgYSBnb29kIGV4YW1wbGUg
b2Ygc2VhbWxlc3MgcmVzcG9uc2l2ZW5lc3MsIGZvciBSZWFkc3BlYWtlciB0byByZWZlciB0byBh
cyBhIG1vZGVsIHdoZW4gdGVzdGluZyB0aGVpciBvd24gbW9kdWxlIHRvIGJlIHN1cmUgdGhhdCB0
aGVpciBSZWFkc3BlYWtlciBUVFMgbW9kdWxlIGZsb3dzIHNtb290aGx5IGluIGNvbm5lY3Rpb24g
d2l0aCB0aGUgc2NyZWVucmVhZGVyIGFzIHRoZSB1c2VyIG5hdmlnYXRlcy4KVGhhbmtzLApTTApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

