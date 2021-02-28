Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 218553273AB
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 18:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614533798;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tdEHbCFdY/0s+WgcEsObjPMgzNQ/aaQax9KKah+mnTo=;
	b=Ka27AO/+NlrvH43LcyRulW/6zt96FFghrKb90B8v6p/pyRDZfMM6ZX4xMLTiPLcleUC5wX
	W40uS1Axh8hNfRCYkKlpfUyra9VAqjKG5Oytg6JuMkNeTqCRkz9FPQZhR3YYAtBiHBnu4e
	pwMYMA1I9oAy1oy6l62JsntFNDMLYCc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-jxhuUHTBMv6DbG003ctvpQ-1; Sun, 28 Feb 2021 12:36:35 -0500
X-MC-Unique: jxhuUHTBMv6DbG003ctvpQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3939A107ACE3;
	Sun, 28 Feb 2021 17:36:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 395A6608BA;
	Sun, 28 Feb 2021 17:36:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D867618095C7;
	Sun, 28 Feb 2021 17:36:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11SHaBCC006722 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Feb 2021 12:36:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 66DA24E3DA; Sun, 28 Feb 2021 17:36:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 613EF4E623
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 17:36:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4072A9988E2
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 17:36:09 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-351-bb3BFxmAN16lxYC4E7F8Cw-1; Sun, 28 Feb 2021 12:36:05 -0500
X-MC-Unique: bb3BFxmAN16lxYC4E7F8Cw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.5] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id EF69B5E200
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 17:30:22 +0000 (UTC)
In-Reply-To: <161447666901.8.13140491573543472108.4272803@simplelogin.co>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
	<161447494525.8.17811239841066658738.4272534@slmail.me>
	<161447666901.8.13140491573543472108.4272803@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161453342282.6.13142153429195754961.4290790@slmail.me>
Date: Sun, 28 Feb 2021 17:30:22 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4290790
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IENoaW1lLApUaGFuayB5b3UsIEkgc2VlIHRoZSBsaW5rLCBJJ2xsIGNoZWNrIGl0IG91dC4K
SSdsbCByZWFkIHVwIG9uIGl0IGFuZCBmYW1pbGlhcml6ZSBteXNlbGYgaWYgdGhlcmUgaXMgYW55
IEl2b25hIGxpY2Vuc2luZyBsZWdhbGl0aWVzIGludm9sdmVkIHRvIGhlbHAgbWUgZGV0ZXJtaW5l
IGlmIHRoZXNlIGZpbGVzIG9yIGlmIHRoZSByZWFkc3BlYWtlciBJdm9uYSBzZGsgd291bGQgYmUg
dGhlIGJlc3QgdG8gd29yayB3aXRoIGZvciBhIHByb2plY3QgdGhhdCBjb3VsZCBwb3RlbnRpYWxs
eSByZXN1bHQgaW4gYSB3aWRlbHkgZGlzcGVyc2VkIHByb2dyYW0gaWYgYWxsIHdlbnQgd2VsbC4g
VGhlIHRlcm1zIG9mIGFncmVlbWVudCAoSSdtIGFzc3VtaW5nIHRoZXJlIG1heSBiZSBzb21lKSwg
bWF5IGJlIGRpZmZlcmVudCBmb3IgaW5kaXZpZHVhbCB1c2UgdmVyc3VzIGJlaW5nIGludGVncmF0
ZWQgaW50byBhIHByb2plY3QgdGhhdCBjb3VsZCBoYXZlIGdsb2JhbCBwb3RlbnRpYWwuIEkgZG9u
J3Qga25vdywgaGF2bid0IGNoZWNrZWQgaXQgb3V0IHlldC4KVGhhbmsgeW91IHNvIG11Y2ggZm9y
IHNoYXJpbmcgdGhlIGxpbmsgdG8gdGhvc2UgZmlsZXMgYW5kIEkgbG9vayBmb3J3YXJkIHRvIHJl
YWRpbmcgYWxsIGFib3V0IHRoZW0uwqAKT25jZSBJIGRlY2lkZSB3aGF0IHRvIHdvcmsgd2l0aCwg
ZWl0aGVyIHRoZXNlIGZpbGVzLCBvciB0aGUgcmVhZHNwZWFrZXIgc2RrLCBpdCB3aWxsIGxpa2Vs
eSB0YWtlIG1lIHNvbWUgdGltZSB0cnlpbmcgdG8gcmVhY2ggb3V0IHRvIHRoZSBsb2NhbCBvcmdh
bml6YXRpb25zIGFyb3VuZCBtZSwgY29uc2lkZXJpbmcgdGhhdCBsYXN0IEkgY2hlY2tlZCwgc29t
ZSBvZiB0aGVpciBwaHlzaWNhbCBtZWV0dXBzIHdlcmUgb24gaG9sZCBkdWUgdG8gdGhlIHdob2xl
IHN0YXRld2lkZSBvZmYgYW5kIG9uIHNodXRkb3duIHN0dWZmLiBCdXQgSSBrbm93IGEgY29tcHV0
ZXIgYnVzaW5lc3MgaW4gdG93biB3aG9zZSBlbXBsb3llZXMgd29yayB3aXRoIGEgbG90IG9mIHRo
ZSBMaW51eCBzZXR1cHMgYXJvdW5kIGhlcmUgYW5kIHRoZXkgYXJlIG9wZW4uIFNvIEknbGwgc3Rh
cnQgd2l0aCBhc2tpbmcgdGhlbSwgYW5kIGlmIHRoZXkgZG9uJ3QgaGF2ZSB0aGUgY29ubmVjdGlv
bnMgSSdtIGxvb2tpbmcgZm9yLCBJJ2xsIHRyeSBlbWFpbGluZyB0aGUgTGludXggZ3JvdXBzIGlu
IG5lYXJieSBjaXRpZXMuIFNvIGl0IG1pZ2h0IHRha2Ugc29tZSB0aW1lLCBidXQgaWYgSSBtYW5h
Z2UgdG8gZ2V0IGEgcHJvamVjdCBnb2luZywgSSdsbCBkZWZpbml0ZWx5IGxldCB5b3Uga25vdy4K
SGkgS3lsZSwKVGhhbmsgeW91IGZvciB0aGF0IHN1Z2dlc3Rpb24gYW5kIGZvciB0aGUgY29tbWFu
ZHMgdG8gY2xvbmUgUkhWb2ljZS4gSSd2ZSBuZXZlciBjbG9uZWQgYSBwcm9ncmFtIGJlZm9yZSwg
c291bmRzIGludGVyZXN0aW5nLCBJIGxvb2sgZm9yd2FyZCB0byB0cnlpbmcgaXQuIEhlcmUncyB0
byBob3BpbmcgaXQgd2lsbCB3b3JrIGZvciBtZS4KVGhhbmsgeW91IGFuZCBoYXZlIGEgZ3JlYXQg
ZGF5LApTTApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

