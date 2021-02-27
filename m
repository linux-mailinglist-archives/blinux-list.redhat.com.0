Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A4129326F25
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614464914;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=haHtp6shqcezpaay/WDdrS7ms1lQgTHqCnqHU1sJTTc=;
	b=DFh5HxIV1Y7wRN/NTZNruox7cLSSbZoR5W5Jpn6zAnyVjoss7SyQGUI8NnzDmyegawLoXI
	kPjh8EtVznA/TMfCcWOlTasq2LG+zScFt3RUmLdO1IxtGv72kC0x44XrKyO3XlJrVafXEv
	NrJCeU30vREed2xjqEXsnxfG0kBGyHs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-c8dFaMcIOCaLoW3gFGOAJw-1; Sat, 27 Feb 2021 17:28:32 -0500
X-MC-Unique: c8dFaMcIOCaLoW3gFGOAJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CE13803F4D;
	Sat, 27 Feb 2021 22:28:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18B826F45E;
	Sat, 27 Feb 2021 22:28:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E86068BEB;
	Sat, 27 Feb 2021 22:28:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMSJag017780 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:28:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4ADDB1111C70; Sat, 27 Feb 2021 22:28:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45D21112CA3E
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:28:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B84F8007D9
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:28:15 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-520-O4lJTNCKNYuCBL5hXsA29A-1; Sat, 27 Feb 2021 17:28:12 -0500
X-MC-Unique: O4lJTNCKNYuCBL5hXsA29A-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id E15305F8D2
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:21:27 +0000 (UTC)
In-Reply-To: <161444979750.8.5402375494901459390.4266338@simplelogin.co>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161446448778.8.10629460359382025123.4270314@slmail.me>
Date: Sat, 27 Feb 2021 22:21:27 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4270314
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IENoaW1lLApJbiBteSByZXNlYXJjaCBJIGNhbWUgYWNyb3NzIGFuIEl2b25hIHNkayBwYWNr
YWdlIG9mZmVyZWQgYnkgcmVhZHNwZWFrZXIuIEkgdGhpbmsgeW91IGNhbiBmaW5kIGl0IGF0Ogp3
d3cucmVhZHNwZWFrZXIuY29tIDxodHRwOi8vd3d3LnJlYWRzcGVhay5jb20+Ckl0IHNheXMgdGhl
IHNkayBpcyBjb21wYXRpYmxlIHdpdGggTGludXggYW5kIGFpbWVkIGF0IGRldmVsb3BlcnMuIApC
dXQgSSB0aGluayB5b3UgcHJvYmFibHkgaGF2ZSB0byBidXkgaXQsIGFuZCB0aGVuIGhhdmUgc29t
ZSBzb2Z0d2FyZSBkZXZlbG9wbWVudCBza2lsbHMgdG8gaW1wbGVtZW50IGl0LgogVW5mb3J0dW5h
dGVseSBJIGRvbid0IGhhdmUgdGhlIHByb2dyYW1taW5nIHNraWxscyB0byB3b3JrIHdpdGggc2Rr
IHBhY2thZ2VzIHlldC4KSSBmb3VuZCBvdXQgYWJvdXQgdGhhdCBzZGsgYSB3aGlsZSBhZ28gYW5k
IEkndmUgaGFkIGFuIGlkZWEga2luZGEgb24gdGhlIGJhY2sgYnVybmVyIHRoYXQgSSBoYXZuJ3Qg
Z290IGFyb3VuZCB0byB5ZXQuIEkgd2FzIHRoaW5raW5nIHRoYXTCoCBtYXliZSBJIGNvdWxkIHJl
YWNoIG91dCB0byBzb21lIG9mIHRoZSBsb2NhbCBMaW51eCBvcmdhbml6YXRpb25zIGluIG15IHN0
YXRlLCBtYXliZSB2aXNpdCB0aGVtIGluIHBlcnNvbiwgIGFuZCBhc2sgYXJvdW5kIGlmIGFueW9u
ZSB0aGVyZSBpcyBhIGRldiB3aG8gbWlnaHQgYmUgaW50ZXJlc3RlZCBpbiBmb3JtaW5nIGEgcHJv
amVjdCB0ZWFtIHRvIG1ha2Ugc29tZSBzb3J0IG9mIHByb2dyYW0gdGhhdCB3b3VsZCBjb25uZWN0
IHRoZSBJdm9uYSBUVFMgdm9pY2VzIHRvIE9yY2EgYXMgd2VsbCBhcyB0aGUgQ29uc29sZSBzY3Jl
ZW5yZWFkZXJzIHZpYSB0aGUgc2RrIGZyb20gUmVhZHNwZWFrZXIuIElmIHNvbWVvbmUgaW4gYW55
IG9mIHRoZSBMaW51eCBvcmdhbml6YXRpb25zIG5lYXIgbWUgd291bGQgYmUgaW50ZXJlc3RlZCBp
biBmb3JtaW5nIGEgdGVhbSwgZXZlbiB0aG91Z2ggSSdtIGEgYmVnaW5uZXIgYW5kIEkgZG9uJ3Qg
aGF2ZSB0aGUgcHJvZ3JhbW1pbmcgc2tpbGxzIHlldCwgSSBjb3VsZCBhdCBsZWFzdCBwcmVzZW50
IHRoZSBjb25jZXB0LCBhbmQgbGVhcm4gZnJvbSB0aGUgc2tpbGxlZCBkZXZlbG9wZXJzIGFzIHdl
IGdvIGFsb25nLiAKSXRzIGp1c3QgYW4gaWRlYSBJJ3ZlIGhhZCBidXQgSSBoYXZuJ3QgY29udGFj
dGVkIHRoZSBsb2NhbCBMaW51eCBvcmdhbml6YXRpb25zIHlldCB0byBhc2sgaWYgYW55b25lIG1p
Z2h0IGJlIGludGVyZXN0ZWQgaW4gZm9ybWluZyBhIHRlYW0gcHJvamVjdCBmb3IgdGhhdC4KVGhl
eSBhcmUgZ2VuZXJhbCBMaW51eCBvcmdhbml6YXRpb25zLCBhcyBmYXIgYXMgSSBrbm93LCB0aGV5
IGRvIG5vdCBwYXJ0aWN1bGFybHkgc3BlY2lhbGl6ZSBpbiBhY2Nlc3NpYmlsaXR5LgogQnV0IHRo
ZXkgYXJlIG5lYXIgbWUsIGFuZCBJIGZpZ3VyZWQgSSB3b3VsZCBzdGFydCB0aGVyZS4gTWF5YmUg
c29tZSBMaW51eCBlbnRodXNpYXN0cyBsb29raW5nIGZvciBhIHByb2plY3QgdG8gZG8sIG1pZ2h0
IGJlIGludGVyZXN0ZWQgaW4gd29ya2luZyB3aXRoIG1lIHRvIG1ha2UgaXQgYSByZWFsaXR5LiBJ
IGtub3cgVFRTIGlzIGEgYml0IG5pY2hlIGJ1dCB0aGVyZSBhcmUgcXVpdGUgYSBmZXcgYmxpbmQg
TGludXggdXNlcnMgYXJvdW5kIHRoZSB3b3JsZCBhcyBpcyBldmlkZW50IGZyb20gdGhlIG1lbWJl
cnNoaXAgb2YgdGhpcyBsaXN0LCBhbmQgaXQgbWlnaHQgZXZlbiBhcHBlYWwgdG8gdGhlIHNpZ2h0
ZWQgbWFpbnN0cmVhbSBpZiB0aGV5IGhhZCBpdCBhcyBhbiBvcHRpb24gZm9yIHJlYWRpbmcgZG9j
dW1lbnRzIG9yIG1heWJlIGV2ZW4gZWJvb2tzIGV0YyB3aGVuIE9yY2EgYWxyZWFkeSBjb21lcyBi
dWlsdCBpbiB3aXRoIHF1aXRlIGEgZmV3IERpc3Ryb3MsIGlmIGl0IGhhZCBuYXR1cmFsIEl2b25h
IHZvaWNlcyBhcyBhIHBsdWdpbiwgaXQgd291bGQgc2ltcGx5IGJlIGEgbWF0dGVyIG9mIGFjdGl2
YXRpbmcgT3JjYSBhbmQgcHJlc3NpbmcgdGhlIGtleXMgdG8gcmVhZCBhbGwsIGFuZCBhbnlvbmUg
Y291bGQgaGF2ZSBtYXRlcmlhbHMgcmVhZCBpbiBhIHZvaWNlIHRoYXQgaXMgcGxlYXNhbnQgdG8g
bGlzdGVuIHRvLiBPZiBjb3Vyc2UgdGhlIG1haW4gcHVycG9zZSB3b3VsZCBiZSBmb3IgYWNjZXNz
aWJpbGl0eSBuYXZpZ2F0aW9uLCBidXQgZXZlcnlvbmUgY291bGQgYmVuZWZpdCBmcm9tIG1vcmUg
bmF0dXJhbCB2b2ljZXMuwqAKQW55d2F5cywgaXQgc291bmRzIGxpa2UgdGhlIGZpbGVzIHlvdSBo
YXZlIG1heSBiZSBkaWZmZXJlbnQgZnJvbSB0aGUgb25lIG9uIHJlYWRzcGVha2VyIHdoaWNoIGlz
IGFuIHNkayBhbmQgSSB0aGluayB5b3Ugd291bGQgaGF2ZSB0byBidXkgdGhhdCBvbmUgYW5kIGhh
dmUgc29tZSBkZXZlbG9wbWVudCBiYWNrZ3JvdW5kLgpMZXQgbWUga25vdyBpZiB5b3UndmUgaGVh
cmQgYWJvdXQgdGhlIHNkaywgSSB0aGluayBpZiB5b3UgdHlwZSBpbiBkdWNrZHVja2dvIHNvbWV0
aGluZyBsaWtlICJJdm9uYSBMaW51eCBzZGsgcmVhZHNwZWFrZXIuY29tIiBpdCB3aWxsIGJyaW5n
IGl0IHVwLgpJZiB5b3VyIGZpbGVzIGFyZSBkaWZmZXJlbnQgdGhlbiB5ZXMsIEkgd291bGQgZGVm
aW5pdGVseSBiZSBpbnRlcmVzdGVkIGlmIHlvdSBjb3VsZCBzZW5kIG1lIGEgY29weS4gSSBkb24n
dCBoYXZlIHRoZSBjb2Rpbmcgc2tpbGxzIGZvciBzb2Z0d2FyZSBkZXZlbG9wbWVudCB5ZXQgYW5k
IEknbSBzdGlsbCBhIGJlZ2lubmVyIG15c2VsZiwgYnV0IEkgbWlnaHQgYmUgYWJsZSB0byByZWFj
aCBvdXQgdG8gc29tZSBsb2NhbCBvcmdhbml6YXRpb25zIGFuZCBzZWUgaWYgc29tZXRoaW5nIGNv
dWxkIGJlIGRvbmUgd2l0aCBpdC4KIFdobyBrbm93cywgSXZvbmFzcGVhazMgbWlnaHQgYmUgZWFz
aWVyIHRvIHdvcmsgd2l0aCB0aGFuIHRoZSByZWFkc3BlYWtlciBJdm9uYSBzZGsuIEkgcmVhbGx5
IGRvbid0IGtub3csIGJ1dCBpdCBtaWdodCBiZSB3b3J0aCBhIHRyeS4gSSdtIGRlZmluaXRlbHkg
dXAgZm9yIHJlYWNoaW5nIG91dCBsb2NhbGx5IHRvIHNlZSBpZiBhbnlib2R5IHdvdWxkIGJlIGlu
dGVyZXN0ZWQgaW4gZm9ybWluZyBhIHRlYW0gcHJvamVjdC4gT2YgY291cnNlIHRoYXRzIG5vIGd1
YXJhbnRlZSB0aGF0IEkgY291bGQgZmluZCBhbnkgZGV2ZWxvcGVycyB3aG8gd291bGQgYmUgaW50
ZXJlc3RlZCBpbiBzdWNoIGEgcHJvamVjdCwgYnV0IGl0cyB3b3J0aCBhIHRyeSBhbmQgbWF5YmUg
SXZvbmFzcGVhazMgbWlnaHQgYmUgZWFzaWVyIHRvIHdvcmsgd2l0aCBhdCBsZWFzdCBhcyBhbiBv
cHRpb24uClRvIEt5bGUsIHllYWggSSBhZ3JlZSB0aGF0IFJIVm9pY2UgaXMgb25lIG9mIHRoZSBi
ZXR0ZXIgVFRTIG9wdGlvbnMgZm9yIExpbnV4LiAKSSBzdGlsbCB3YW50IHRvIGZpbmQgc29tZSB3
YXkgdG8gZ2V0IEl2b25hIG9uIExpbnV4IHRob3VnaCBhcyBJIHRoaW5rIGl0cyBvbmUgb2YgdGhl
IHRvcCBvZiB0aGUgbGluZSBUVFMgYW5kIHNpbmNlIHJlYWRzcGVha2VyIHNheXMgdGhleSBoYXZl
IGFuIHNkayB0aGF0IGlzIGFwcGFyZW50bHkgY29tcGF0aWJsZSB3aXRoIExpbnV4LCB0aGVuIEkg
d2FudCB0byBmaW5kIG91dCBzb21lIHdheSB0byBkbyB0aGF0LCBldmVuIHRob3VnaCBJIGRvbid0
IGhhdmUgdGhlIHNraWxscyB5ZXQsIEkgd2FudCB0byBmaW5kIHNvbWVvbmUgd2hvIGRvZXMuCkJ1
dCBpbiByZWdhcmRzIHRvIFJIVm9pY2UsIG15IGZhdm9yaXRlcyBhcmUgdHdvIGZlbWFsZSB2b2lj
ZXMsIEkgZG9uJ3QgcmVtZW1iZXIgdGhlaXIgbmFtZXMgcmlnaHQgb2ZmIGhhbmQuIENMVD8gU0xU
PyBNYXliZT8gSSBkb24ndCBoYXZlIHRoZSBuYW1lcyBpbiBmcm9udCBvZiBtZSBhdCB0aGUgbW9t
ZW50IHNvIEkgZG9uJ3Qga25vdyBidXQgSSB0aGluayBpdHMgc29tZXRoaW5nIGFsb25nIHRob3Nl
IGxpbmVzLiBBbnl3YXlzLCB0aGV5IGFyZSBpbmNsdWRlZCBpbiBTbGludC4gQW5kIEkndmUgYmVl
biB0cnlpbmcgdG8gZ2V0IHRoZW0gb24gbXkgTGludXggTWludCBNQVRFIE9TLgpJIGluc3RhbGxl
ZCBSSFZvaWNlIGZvciBFbmdsaXNoIG9uIExpbnV4IE1pbnQgYnV0IGl0IG9ubHkgaGFzIG9uZSBk
ZWZhdWx0IG1hbGUgdm9pY2UuIApEbyB5b3UgaGF2ZSBhbnkgaWRlYSBob3cgdG8gZ2V0IHRoZSB0
d28gZmVtYWxlIHZvaWNlcyBvbiBhbiBVYnVudHUgYmFzZWQgc3lzdGVtPyBJJ3ZlIHRyaWVkIGJ1
dCBpdCBzZWVtcyB0aGF0IHRoZSBpbnN0cnVjdGlvbnMgb24gZ2l0IGh1YiBmb3IgaW5zdGFsbGlu
ZyB0aG9zZSBwYXJ0aWN1bGFyIGVuZ2xpc2ggZmVtYWxlIHZvaWNlcyBmcm9tIFJIVm9pY2UsIHRo
ZSBpbnN0cnVjdGlvbnMgYXJlIGFjdHVhbGx5IGluIGEgZGlmZmVyZW50IGxhbmd1YWdlIHRoYXQg
SSBkb24ndCB1bmRlcnN0YW5kLiBTbyBJIG9ubHkgaGF2ZSB0aGUgb25lIGRlZmF1bHQgbWFsZSBF
bmdsaXNoIHZvaWNlLgpUaGFua3MsClNMCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

