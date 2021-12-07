Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B98046AFA6
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 02:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638840004;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fXwCZzN+JL1eXmOPv0A3yCpkpIZ6OY0jT3VnL311NG4=;
	b=imP1ASw5yxKi7joJ7cOo11LEKfY5EwFye99stcWwsfiK1rKKtb+SvY8hLCkqcfcgjpUshy
	92Kl+OprW8CXCKdpZf5HNIIMdqu1fvqS6+s9yhM+KbWysTLnFykimNw0l8GO6Byi+l/KS0
	nYfGfye0tTCwW0imgwbzrjQp4bPvwsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-1JnA9iEuMra8ynqKYUCG_g-1; Mon, 06 Dec 2021 20:20:01 -0500
X-MC-Unique: 1JnA9iEuMra8ynqKYUCG_g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA597190B2A0;
	Tue,  7 Dec 2021 01:19:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BADEF19741;
	Tue,  7 Dec 2021 01:19:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D2A6D1809C88;
	Tue,  7 Dec 2021 01:19:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B71Jkc4017868 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 20:19:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A33634010FFE; Tue,  7 Dec 2021 01:19:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DFE340CFD02
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 01:19:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 846038015F8
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 01:19:46 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-563-G9vp1sK1PnKpWElHZhk8Sw-1;
	Mon, 06 Dec 2021 20:19:44 -0500
X-MC-Unique: G9vp1sK1PnKpWElHZhk8Sw-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 411A6A40F8
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 00:18:59 +0100 (CET)
Message-ID: <70b53e38-54f8-60e5-7d23-b94d850e60dc@slint.fr>
Date: Tue, 7 Dec 2021 02:19:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: I have some questions about braille TTY, running alongside orca.
To: blinux-list@redhat.com
References: <4064d1ee-3bdb-32be-938f-cc0242974857@gmail.com>
In-Reply-To: <4064d1ee-3bdb-32be-938f-cc0242974857@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B71Jkc4017868
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgpJbiB0aGUgZGVza3RvcCB5b3VyIGJyYWlsbGUgZGlzcGxheSBzaG91bGQgdXNlIHRo
ZSBicmFpbGxlIGZhY2lsaXR5IApidWlsdCBpbnRvCm9yY2EsIGl0IHdvbih0IHdvcmsgZGlyZWN0
bHkgYXMgaXQgZG9lcyBpbiBjb25zb2xlIG1vZGUuCgpBYm91dCB0aGUgcm9ib3RpYyB2b2ljZTog
eW91IG1heSBjaGFuZ2UgaXQsIGluIHRoZSBPcmNhIHByZWZlcmVuY2VzIEdVSSwgYnV0CnlvdSB3
aWxsIHByb2JiYWx5IG5lZWQgdG8gaW5zdGFsbCBhZGRpdGlvbmFsIG9uZXMuCgpJIGFtIG5vdCBz
dXJlIHRvIHVuZGVyc3RhbmQ7IGRvIHlvdSB3YW50IHRvIHVzZSB5b3VyIGJyYWlsbGUgZGlzcGxh
eSBpbiB0aGUKaG9zdCBzeXN0ZW0gb3IgaW4gdGhlIE9yIGJvdGg/CgpBcyBzdGF0ZWQgaW4gdGhp
cyBDaGFuZ2Vsb2c6Cmh0dHBzOi8vZ2l0aHViLmNvbS9icmx0dHkvYnJsdHR5L2Jsb2IvbWFzdGVy
L0RvY3VtZW50cy9DaGFuZ2VMb2cKVGhlIEJyYWlsbGlhbnQgNDBYIGZyb20gSHVtYW53YXJlIGlz
IHN1cHBvcnRlZCBieSBicmx0dHksIGJ1dCBvbmx5IGluIHRoZQpsYXRlc3QgcmVsZWFzZSBicmx0
dHkgNi40LgoKSW5zdGVhZCB0aGUgU2xpbnQgZGlzdHJpYnV0aW9uIHRoYXQgSSBtYWludGFpbiBz
aGlwcyBicmx0dHktNi40LiBBbmQgc2hpcHMKc2V2ZXJhbCB2b2ljZXMsIG1hbnkgb3RoZXIgb25l
cyBjYW4gYmUgYm91Z2h0IHRvIG9yYWx1eC5vcmc6Cmh0dHBzOi8vb3JhbHV4Lm9yZy92b2ljZS5w
aHA/bXlsYW5nPWVuCgpJIGNhbid0IGFuc3dlciBhYm91dCBCbHVldG9vdGgsIGZvciB0aGlzIHF1
ZXN0aW9uIHlvdSBjb3VsZCBhc2sgb24gb3VyIAptYWlsaW5nCmxpc3Q6ClRvIHN1YnNjcmliZSBv
ciB1bnN1YnNjcmliZSwgZW1haWwgc2xpbnQtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggdGhl
IApzdWJqZWN0CidzdWJzY3JpYmUnIG9yICd1bnN1YnNjcmliZScsIHRoZW4gYW5zd2VyIHRoZSBl
bWFpbCB5b3Ugd2lsbCByZWNlaXZlLgpNb3JlOiBlbWFpbCBzbGludC1yZXF1ZXN0QGZyZWVsaXN0
cy5vcmcgd2l0aCBhcyBzdWJqZWN0ICdoZWxwJyBvciAKJ2NvbW1hbmRzJy4KCkNoZWVycywKRGlk
aWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lcgpodHRwczovL3NsaW50LmZyL2Rv
Yy9IYW5kQm9vay5odG1sCgpCdXQgVWJ1bnR1IDIxLjEwIHNoaXBzIGJybHR0eSA2LjMgc28gcHJv
dmlkZXMgbm8gc3VwcG9ydCBmb3IgdGhpcyBkZXZpY2UKTGUgMDcvMTIvMjAyMSDDoCAwMTo0OSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEdvb2QgYWZ0
ZXJub29uLCBteSBzdWJqZWN0IGxpbmUgYW5kIHNvbWVvbmUgc2F5cyBpdCBhbGwsIHNob3VsZCBJ
IHJ1biAKPiBicmFpbGxlIFRUWSBhbG9uZ3NpZGUgb3JjYSwgb3Igc2hvdWxkIEkgdXNlIHRoZSBi
cmFpbGxlIGZhY2lsaXR5IGJ1aWx0IAo+IGludG8gb3JjYSB0byBkcml2ZSBteSBicmFpbGxlIGRp
c3BsYXk/IEkgYW0gcnVubmluZyBVYnVudHUgMjExMCBhbmQgYSAKPiB2aXJ0dWFsIG1hY2hpbmUu
IEFsdGhvdWdoIG9yY2EgaXMgcnVubmluZywgSSBjYW4ndCB1bmRlcnN0YW5kIHRoYXQgCj4gcm9i
b3RpYyB2b2ljZSBhbnltb3JlLiBUaGF0J3Mgd2h5IEkgYW0gZXh0cmVtZWx5IGludGVyZXN0ZWQg
aW4gYWRkaW5nIAo+IHN1cHBvcnQgZm9yIG15IGJyYWlsbGUgZGlzcGxheS4gVGhlIHNlY29uZCBx
dWVzdGlvbiBpcyBiZWNhdXNlIG15IAo+IGJyYWlsbGUgZGlzcGxheSBpcyBvbmUgb2YgdGhlIGxh
dGVzdCwgYW5kIGdyZWF0ZXN0LiBJcyBpdCBldmVuIAo+IHN1cHBvcnRlZD8gSSB1c2UgYSBodW1h
biB3aGVyZSBCcmFpbGxpYW50IEJJIDQwIFggZGlzcGxheS4gSSBub3JtYWxseSAKPiBydW4gaXQg
aW4gYSBuZXcgVVNCIG1vZGUgd2hlbiBJIGhhdmUgdG8gdXNlIGFuIGFzc2lzdGl2ZSBsaXN0ZW5p
bmcgCj4gZGV2aWNlIGZvciB0aGUgY29tcHV0ZXIuIFRoaXMgaXMgZXNwZWNpYWxseSB0cnVlIGlm
IHRoZSBsaXN0ZW5pbmcgZGV2aWNlIAo+IG11c3QgYmUgQmx1ZXRvb3RoLCBiZWNhdXNlIGluIHRo
ZSBob3N0IG9wZXJhdGluZyBzeXN0ZW0gd2hpY2ggaXMgTWFjIE9TIAo+IE1vbnRlcmV5LCBpdCBh
cHBlYXJzIHRoYXQgeW91IGNhbm5vdCBydW4gQmx1ZXRvb3RoIGF1ZGlvLCBhbmQgQmx1ZXRvb3Ro
IAo+IGJyYWlsbGUgdG9nZXRoZXIuIElmIHRoaXMgaGFwcGVucywgc3BlZWNoIGlzIGV4dHJlbWVs
eSBjaG9wcHkgdG8gCj4gdW5pbnRlbGxpZ2libGUuIFVTQiBicmFpbGxlIHdoZW4gdXNpbmcgQmx1
ZXRvb3RoIGF1ZGlvIGFuZCBCbHVldG9vdGggCj4gYnJhaWxsZS4gSSBzdXNwZWN0IHRoYXQgdGhp
cyBpcyBzb21ldGhpbmcgdG8gZG8gd2l0aCBteSBtYWNoaW5lLgo+IAo+IAo+IFNpbmNlIHdoZW5l
dmVyIEkgdXNlIHRoZSBndWVzdCwgSSB1c2UgYnJhaWxsZSBpbiBVU0IgbW9kZSBJJ20gdGhpbmtp
bmcgCj4gc3VwcG9ydGluZyB0aGlzIHNob3VsZCBiZSBzdWJzdGFudGlhbGx5IGVhc2llciB0aGFu
IGlmIEkgd2VyZSB0byB1c2UgCj4gQmx1ZXRvb3RoIGZvciBpbnN0YW5jZS4gRG9lcyBhbnlvbmUg
aGF2ZSBhbnkgdGhvdWdodHMsIGFuZC9vciAKPiBzdWdnZXN0aW9ucyBvbiB0aGlzIGlzc3VlPyBQ
bGVhc2UgYmUgYXdhcmUgdGhhdCBJIGFtIGRpY3RhdGluZyB0aGlzIHRvIAo+IHRoZSBjb21wdXRl
ciwgc28gdGhlcmUncyBzb21ldGhpbmcgdGhhdCBJIGhhdmUgd3JpdHRlbiBhYm92ZSwgcGxlYXNl
IAo+IHJlYWNoIG91dCB0byBtZSBhbmQgYXNrZWQgbWUgd2hhdCBJIG1pZ2h0IGhhdmUgbWVhbnQu
IEkgbG9vayBmb3J3YXJkIHRvIAo+IGNsZWFyaW5nIHVwIGFueSBtaXN1bmRlcnN0YW5kaW5ncyB0
aGF0IG1pZ2h0IGNvbWUgdXAgYXMgYSByZXN1bHQgb2YgdGhlIAo+IGFib3ZlIHdyaXR0ZW4gdGV4
dC4gVGhhbmsgeW91IGFsbCB2ZXJ5IG11Y2ggZm9yIHJlYWRpbmcgdGhpcy4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

