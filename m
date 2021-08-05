Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2233E142C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 13:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628164393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S2xpEg2lCLxOKMuJ/jwytpEvNNMBGWxeVdaNLR5BJjU=;
	b=gwSh5S8HuTSHDk9SndAYztIHSruyRStfgvM5A28Bdcfvu9/Ut/EYS1Y0JQArwyWHANvlgh
	QBTHZLOcK+ogC05FbzDLoEbOVfvmiklbGJ90kTB0f3xltdAkjKVx8KV4Ga7iD4pmA8S/st
	yZHcYjCoLogfjjNcS0OWrhWlTiB/tJI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-o77z85UsNKeUnSj5_aUJFA-1; Thu, 05 Aug 2021 07:53:11 -0400
X-MC-Unique: o77z85UsNKeUnSj5_aUJFA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBE388799EC;
	Thu,  5 Aug 2021 11:53:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B042D60CA0;
	Thu,  5 Aug 2021 11:53:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 057754BB7B;
	Thu,  5 Aug 2021 11:52:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175BpxZ4030216 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 07:51:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7DADC200FA57; Thu,  5 Aug 2021 11:51:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 793BA2010DFD
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 11:51:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C137101A52C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 11:51:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-46-Kop_UG60M4qiujx8pwf3DA-1;
	Thu, 05 Aug 2021 07:51:54 -0400
X-MC-Unique: Kop_UG60M4qiujx8pwf3DA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4AB42A0714
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 11:51:48 +0200 (CEST)
Subject: Re: Looking for help with switching on the bare metal.
To: blinux-list@redhat.com
References: <851eefb8-2795-5684-1107-172bf66b985e@slint.fr>
	<0BF1ECEB-E10D-4502-B42E-09BE437F9FB3@gmail.com>
Message-ID: <fe4bdfcc-061c-5e11-a3b6-1453ba0d9cf1@slint.fr>
Date: Thu, 5 Aug 2021 13:51:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <0BF1ECEB-E10D-4502-B42E-09BE437F9FB3@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175BpxZ4030216
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKU2xpbnQgY2FuJ3QgYmUgaW5zdGFsbGVkIGluIGFuIE5URlMgcGFydGl0aW9u
IGJ1dCBjYW4gcmVhZCBhbmQgd3JpdGUgdGhlIApmaWxlcwppbiBpdCwgbm8gYWRkLW9uIG5lZWRl
ZC4gV2UgY2FuIGhlbHAgeW91IGRvaW5nIHRoZSBuZWVkZWQgc2V0dGluZ3MgYWZ0ZXIKaW5zdGFs
bGF0aW9uLgoKTWF5YmUgeW91IHdvdWxkIGNvbnNpZGVyIGEgZHVhbCBib290IGluc3RhbGxhdGlv
bj8KCklmIHllcyBidXQgeW91IGhhdmUgb25seSBvbmUgZHJpdmUsIHJlYWQgaG93LXRvIHByZXBh
cmUgdGhlIGRyaXZlIGluOgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI21ha2Vf
cm9vbV9mb3JfU2xpbnQKCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFp
bnRhaW5lcgoKTGUgMDUvMDgvMjAyMSDDoCAxMzozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFRoYW5rcyBmb3IgdGhhdC4gSSBhbSB2ZXJ5IHN0cm9u
Z2x5IGNvbnNpZGVyaW5nIGluc3RhbGxpbmcgU2xpbnQsIGJ1dCBiZWZvcmUgSSBkbywgSSBuZWVk
IHRvIHB1bGwgbXkgc3R1ZmYgb2ZmIG9mIG15IHdpbmRvd3MgaW5zdGFsbGF0aW9uLiBXaWxsIFNs
aW50IGJ5IGRlZmF1bHQgZGVhbCB3aXRoIE5URlMsIG9yIGRvIEkgbmVlZCB0byBpbnN0YWxsIGEg
dXRpbGl0eSB0byBkbyBzbz8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

