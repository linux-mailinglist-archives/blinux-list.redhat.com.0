Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9C3362318
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 16:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618584739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C55dlykCkUcvH2+LQqEvQqVMVef4tyZdzgh4HHZU2JM=;
	b=NB9uBvp6E0qq7TwGDmsv4n8N4/KdI/xXneZsga6MuX5x8vaB38XPmsIeOMUdvhNh32CKXL
	Zr72cN85esfrYmuB1u1h5BLnnN1eznQKUVwhc0DU3Dx3+rDnwuYzTwA/PyRd+achvHr2ha
	qVoobYGLFf/Pr0XMDqjFRiBt+9ifskA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-UcuF443GPluxumSZUHVn_w-1; Fri, 16 Apr 2021 10:52:17 -0400
X-MC-Unique: UcuF443GPluxumSZUHVn_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3EEC9F92C;
	Fri, 16 Apr 2021 14:52:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D224E163;
	Fri, 16 Apr 2021 14:52:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67B611806D16;
	Fri, 16 Apr 2021 14:52:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GEq2Hq004865 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 10:52:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5AF4810547DA; Fri, 16 Apr 2021 14:52:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5697410CD610
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:51:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF6AD805F44
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:51:59 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-471-HSuQG3-sOUy1JFPtpeyc5g-1; Fri, 16 Apr 2021 10:51:57 -0400
X-MC-Unique: HSuQG3-sOUy1JFPtpeyc5g-1
X-Halon-ID: 48b47305-9ec3-11eb-8f9b-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from smtpclient.apple (unknown [185.176.246.116])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id 48b47305-9ec3-11eb-8f9b-005056917149;
	Fri, 16 Apr 2021 16:51:54 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Re: re-sending this: are you interested in natural sounding TTS
	voices for Linux by Readspeaker? demo link included
Date: Fri, 16 Apr 2021 16:51:53 +0200
References: <161856255164.6.7776816386753760223.5910318@slmail.me>
	<b3a01a58-d003-cf09-7957-d2db8be288a3@slint.fr>
	<d84a5344-8bcd-c8de-f757-282759fe6aa0@slint.fr>
	<CAGJxbF4_7JsktUVko8CH4swWMURg2keSz5QJqy-dA4=x35M65A@mail.gmail.com>
	<6e3185ad-e0c2-30c1-2a55-d4c6422e65d4@hubert-humphrey.com>
To: blinux-list@redhat.com
In-Reply-To: <6e3185ad-e0c2-30c1-2a55-d4c6422e65d4@hubert-humphrey.com>
Message-Id: <AF8AF322-A5DE-4C8F-BA2B-0C927C200D5D@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13GEq2Hq004865
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

SGkhCkkgcmVhbGx5IGRvbuKAmXQgZ2V0IGlmIHRoaXMgaXMgZ29pbmcgdG8gYmUgaW5jbHVkZWQg
aW4gYSAgZGlzdHJvIG9yIGlmIHRoZXkgYWxsLXJlYWR5IGV4aXN0IGZvciBMaW51eD8KSSBkb27i
gJl0IGtub3cgaG93IG1hbnkgbGFuZ3VhZ2VzIGFyZSBzdXBwb3J0ZWQgZWl0aGVyLgpJZiBTd2Vk
aXNoIGFuZCBvdGhlciAgbGFuZ3VhZ2VzIHN1Y2ggYXMgRmlubmlzaCBpcyBzdXBwb3J0ZWQgdGhl
biBpdHMgIGdyZWF0IGJ1dCBhcyBJIHNhaWQgSSBtb3N0bHkgdXNlIGJyYWlsbGUgYW5kIHN0aWxs
IHdpbGwgZG8gdGhhdCBhcyBsb25nIGFzIEkgY2FuLgpCdXQgb2YgY29yc2UgaXRzIGdyZWF0IHdp
dGggYSBuYXR1cmFsIHNvdW5kaW5nIHR0cy4KL0EKCj4gMTYgYXByLiAyMDIxIGtsLiAxNjowOCBz
a3JldiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPjoKPiAKPiBXZWxsLCB0aGFuayB5b3Ugc28gZmFyIGZvciBhbiBpbnRlcmVzdCBpbiBi
ZXR0ZXIgdm9pY2VzLiBBbW9uZyB0aGUgUmVhZFNwZWFrZXIgdm9pY2VzIHdoaWNoIEkndmUgaGVh
cmQsIEkgbGlrZSB0aGUgYmV0dGVyIGluZmxlY3Rpb24gb2YgSGVhdGhlci4gQW5kIHllcywgRGlk
aWVyLCBJIGJlZ2FuIGEgc2ltaWxhciBkaXNjdXNzaW9uIHNvbWUgeWVhcnMgYWdvLCBidXQgeW91
IGtub3cgaWYgd2UgZG9uJ3QgZ2VudGx5LWFuZC1vY2Nhc2lvbmFsbHkgc3VnZ2VzdCBhY2Nlc3Mg
dG8gdGhlc2Ugc3BlZWNoIGVuZ2luZXMsIHdlIG1heSBuZXZlciBlbmpveSBjb21wcmlibGUgdm9p
Y2UgZXhwZXJpZW5jZXMgYXMgQW5kcm9pZCBvciB0aGUgTWFjLiBNZWFud2hpbGUgR2VuZSBtZW50
aW9ucyBWb3h5Z2VuLiBJIHRoaW5rIHNvbWUxIGZyb20gdGhhdCBjb21wYW55IGFjdHVhbGx5IHJl
cGxpZWQgbGFzdCB0aW1lIGFyb3VuZCwgYnV0IHRoaXMgcGVyc29uIGRpZG4ndCBzZWVtICB0byBi
ZSBhd2FyZSBvZiBTcGVha3VwIG9yIGFueSBjb25zb2xlIHNwZWVjaC4gSSBjYW5ub3QgZmluZCBh
bnkgSHlwcmEgdm9pY2Ugc2FtcGxlcywgYnV0IGZvciBhIHlvdXR1YmUgdmlkZW8sIGNvbXBsZXRl
bHkgaW4gRnJlbmNoLiBNb3N0bHkgdGhlaXIgc2l0ZSB0YWxrcyBhYm91dCBhIGNsb3VkIEFQSSBz
ZXJ2aWNlLgo+IE1lYW53aGlsZSwgSSBndWVzcyBzby1mYXIgdGhlcmUgYXJlIGF0IGxlYXN0IDUg
b2YgdXMgd2hvIHdvdWxkIGNvbnNpZGVyIFJlYWRTcGVha2VyLCBidXQgSSB0aGluayBzZW1hbnRo
YSBzdXBvc2VkbHkgc29sZCBieSBPcmFsdXggd291bGQgYmUgbXkgcHJlZmZlcmVuY2UsIGRlcGVu
ZGluZyBvbiBwcmljZXMuCj4gQ2hpbWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

