Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EF57936342E
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 08:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618728714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RZT/HDCJBYx0VYPNll8vKOT2iO1bYdnlkVhzpytbpNU=;
	b=Xm2mwgmErG9orTiegKayCOsIw6S67xhDL2+eNf3aLvgeB0wQsXCU3GoWL9dcJnZ86zYpU5
	8rFRI/5hIasjjvC4Cf4mR3aOj5EErcZDnlYHMb1xjxpnHXY5RvIaadTC5CMZrToCRoyvWv
	kaJjZjp/fRmxBDddXjWCmdG4Qo4AY4E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-D2T6ZammMb2_atub158yDg-1; Sun, 18 Apr 2021 02:51:51 -0400
X-MC-Unique: D2T6ZammMb2_atub158yDg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8B4210054F6;
	Sun, 18 Apr 2021 06:51:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB6C25B4B5;
	Sun, 18 Apr 2021 06:51:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A9D4244A5E;
	Sun, 18 Apr 2021 06:51:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I6pS94031802 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 02:51:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 183393459C; Sun, 18 Apr 2021 06:51:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 124F93459B
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:51:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 267F0185A7A5
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:51:25 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-20-stqwX6VuMrqmfLIftzlmSQ-1; Sun, 18 Apr 2021 02:51:21 -0400
X-MC-Unique: stqwX6VuMrqmfLIftzlmSQ-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.3] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 0D5775E18C
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:42:44 +0000 (UTC)
In-Reply-To: <161872382677.7.10394411580727118427.5973290@simplelogin.co>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@[0.0.0.0]>
	<161872382677.7.10394411580727118427.5973290@simplelogin.co>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161872816489.7.8571689919596394674.5974305@slmail.me>
Date: Sun, 18 Apr 2021 06:42:44 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5974305
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

WWVzLCBtYWtlcyBzZW5zZS4KSSB0aGluayBob3cgaXQgd29ya3MgaW4gbWFueSBjYXNlcywgaXMg
dGhhdCB0aGVyZSBpcyB0aGUgc2NyZWVucmVhZGVyIHByb2dyYW0sIHRoZSBUVFMgc29mdHdhcmUs
IGFuZCB0aGVuIGEgbW9kdWxlIHRoYXQga2luZCBvZiBsaW5rcyB0aGUgdHdvIHRvZ2V0aGVyIHRv
IGZ1bmN0aW9uLgpTbyBsaWtlLCBJJ2xsIHVzZSBXaW5kb3dzIGhlcmUgYXMgYW4gZXhhbXBsZSBq
dXN0IGJlY2F1c2UgdGhhdHMgd2hhdCBJJ3ZlIHVzZWQgbW9zdCBvdmVyIHRoZSB5ZWFycyB1bnRp
bCByZWNlbnRseSBnZXR0aW5nIGludG8gTGludXguIEJ1dCBvbiBXaW5kb3dzLCB5b3UgY2FuIGhh
dmUgdGhlIE5WREEgc2NyZWVucmVhZGVyLCB0aGVuIHlvdSBjYW4gYnV5IGFuIEl2b25hIFRUUyB2
b2ljZS4gQnV0IHRoZW4sIGlmIHlvdSB3YW50IHRvIHVzZSB0aGUgSXZvbmEgdm9pY2UgdGhyb3Vn
aCBOVkRBLCB5b3UgaGF2ZSB0byBzZWxlY3QgdGhlLCBJIHRoaW5rIGl0cyB0aGUgU0FQSSA1IHN5
bnRoIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5PyBZb3UgbmVlZCB0byBzZWxlY3QgdGhhdCBTQVBJ
IDUgc3ludGggaW4gdGhlIE5WREEgc2V0dGluZ3MgaW4gb3JkZXIgdG8gZ2V0IHRoZSBJdm9uYSBU
VFMgdm9pY2UgdG8gd29yayB3aXRoIE5WREEsIGFuZCB0aGVuIHlvdSBjb250cm9sIHRoZSBwaXRj
aCBhbmQgcHJvbm91bmNpYXRpb24gZXRjIG9mIEl2b25hIHRocm91Z2ggTlZEQS4KIEkgdGhpbmsg
aXRzIGtpbmRhIHNpbWlsYXIgd2l0aCB0aGUgT3JjYSBzY3JlZW5yZWFkZXIgaW4gTGludXguIFNv
IGlmIHlvdSdyZSB1c2luZyB0aGUgUkhWb2ljZSB2b2ljZXMsIHlvdSBoYXZlIHRvIHNlbGVjdCBm
b3IgaXQgdG8gdXNlIHRoZSBSSFZvaWNlIHN5bnRoIG1vZHVsZSBzbyB0aGV5IGFsbCB3b3JrIHRv
Z2V0aGVyLiBBcyBmYXIgYXMgSSdtIGF3YXJlLCBldmVyeSBUVFMgc29sdXRpb24gbmVlZHMgYSBt
b2R1bGUgb2Ygc29ydHMgdG8gY29ubmVjdCBpdCB3aXRoIHRoZSBzY3JlZW5yZWFkZXIuCm9uZSBv
ZiB0aGUgZ3V5cyBlaXRoZXIgb24gdGhlIFJlYWRzcGVha2VyIHRlYW0sIG9yIGFzc29jaWF0ZWQg
d2l0aCB0aGUgdGVhbSwgaXMgYmxpbmQuIEkgYW0gbm90IGNvbW11bmljYXRpbmcgd2l0aCBoaW0g
ZGlyZWN0bHkgeWV0LCBidXQgdGhlIHJlcHJlc2VudGF0aXZlIEkgYW0gaW4gY29udGFjdCB3aXRo
IG1lbnRpb25lZCBoaW0uIEl0IHdvdWxkIGJlIGdyZWF0IGlmIGhlIG1pZ2h0IGNvbnNpZGVyIGNv
bGxhYm9yYXRpbmfCoCBpbiB0aGUgcHJvamVjdCBhcyBJIGFtIGFzc3VtaW5nIGhlIHByb2JhYmx5
IHVzZXMgYSBzY3JlZW5yZWFkZXIgb2Ygc29tZSBzb3J0LiBFdmVuIGlmIGhlIHByaW1hcmlseSB1
c2VzIEJyYWlsbGUsICh3aGljaCBJIGRvbid0IGtub3cgdGhhdCBmb3IgYSBmYWN0LCBJJ20ganVz
dCBtZW50aW9uaW5nIGl0IGFzIGEgcG9zc2liaWxpdHkpLCBidXQgZXZlbiBpZiBoZSBkaWQgbW9z
dGx5IHVzZSBicmFpbGxlLCB0aGUgZmFjdCB0aGF0IGhlIGlzIGludm9sdmVkIHdpdGggYSBjb21w
YW55IHRoYXQgbWFudWZhY3R1cmVzIFRUUyB2b2ljZSBzb2x1dGlvbnMgZm9yIGRlc2t0b3AsIHNl
cnZlcnMsIGVtYmVkZGVkIHN5c3RlbXMgZXRjLCBtZWFucyBoZSBsaWtlbHkgaGFzIHF1aXRlIGEg
Yml0IG9mIGtub3dsZWRnZSByZWdhcmRpbmcgdGhlIHRlY2huaWNhbGl0aWVzIG9mIFRUUyBhbmQg
c2NyZWVucmVhZGVycywgYW5kIGlmIGhlIHdhbnRlZCB0byBjb2xsYWJvcmF0ZSB3aXRoIHRoZSBw
cm9qZWN0LCBoZSB3b3VsZCBsaWtlbHkgYmUgaGVscGZ1bCBpbiBhZHZpc2luZyB0aGVtIHRoZXJl
IG9uIHRoZSBncm91bmQgaWYgbmVlZGVkLiBJIGNhbiBjb21tdW5pY2F0ZSB3aXRoIHRoZW0gcmVt
b3RlbHksIGJ1dCBpdHMgYWx3YXlzIHJlYWxseSBncmVhdCB0byBoYXZlIHNvbWVvbmUgdGhhdCBj
YW4gc2l0IHRoZXJlIGluIHBlcnNvbiB3aXRoIHRoZSBkZXZlbG9wZXJzLiBJIGRvbid0IGtub3cg
aWYgaGUgd29ya3MgcmlnaHQgdGhlcmUgd2l0aCB0aGVtLCBvciByZW1vdGVseS4gQnV0IEknbGwg
YXNrIHdoZW4gSSBuZXh0IGNvbnRhY3QgdGhlbSBvbiBhIHdlZWsgZGF5LgpUaGFua3MsClNMCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

