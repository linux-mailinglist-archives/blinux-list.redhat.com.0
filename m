Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0F8462918
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 01:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638232016;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ch7EK5OvJcuq4HUXuD+HkFTQBHYY3YrlNlodXAhnQMg=;
	b=WN0RJocwQO2bVReuTuYO0udFojMKtpO3fcFWrutLfrLhgU9/sweRs2JMEjxDXVL/S4Zve1
	hj2J7Qw5QDea6J2345DLp0ntlqL0iaTNDDKgmHx7P/3UmM1Yp2+j43XiBQRR/xM8k6ToSE
	wpVr2Cmxku7SORKralH5LTxb2dTlRe4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-9oSvuwp6OfmHI-f89I11WQ-1; Mon, 29 Nov 2021 19:26:53 -0500
X-MC-Unique: 9oSvuwp6OfmHI-f89I11WQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E810719253C0;
	Tue, 30 Nov 2021 00:26:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 367DD100EBAD;
	Tue, 30 Nov 2021 00:26:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 547824BB7C;
	Tue, 30 Nov 2021 00:26:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU0N10n021164 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 19:23:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B14A0404727A; Tue, 30 Nov 2021 00:23:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACE1D4047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 00:23:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9584A85A5AA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 00:23:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-342-TNONoj9xNd-yJDb1C_2sew-1;
	Mon, 29 Nov 2021 19:22:59 -0500
X-MC-Unique: TNONoj9xNd-yJDb1C_2sew-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0778FA478E
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 23:22:16 +0100 (CET)
Message-ID: <7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
Date: Tue, 30 Nov 2021 01:22:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
In-Reply-To: <878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AU0N10n021164
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSBhbmQgQWxsLAoKbm8gTWljcm8gaXMgbm90IHByb3ZpZGVkIGJ5IFNsaW50ICh5
ZXQpLiBJIGxlYXJuZWQgaXRzIGV4aXN0ZW5jZSB0b2RheSAKPHNtaWxlPi4KCkkgaGF2ZSBidWls
dCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBhbmQgYWxzbyBpdHMgR1VJIGd0ay1waXBlLXZpZXdl
ciAKKG5vdCBmdWxseQphY2Nlc3NpYmxlLCBidXQgbmljZSkuCgpJdCB0b29rIG1lIG1vcmUgdGlt
ZSB0aGFuIGFudGljaXBhdGVkLCBidXQgZXhwZWN0IGEgYmlnIGJhdGNoIG9mIHVwZGF0ZXMgZm9y
ClNsaW50IHRvbW9ycm93ICgzNyBwYWNrYWdlcywgaW5jbHVkaW5nIHRoZSBtYW55IGRlcGVuZGVu
Y2llcyBvZiBmaWxlIAp2aWV3ZXIpLgoKSSBkaWQgc29tZSByZWFkaW5nIGFuZCB0ZXN0cyB3aXRo
IGZsYXRwYWssIGFuZCB3b3VsZG4ndCByZWNvbW1lbmQgdG8gdXNlIAp0aGF0LAplc3BlY2lhbGx5
IGlmIHNwYWNlIG9uIGRpc2sgaXMgYSBjb25jZXJuLgpXb3J0aCByZWFkaW5nIGFib3V0IHRoYXQ6
Cmh0dHBzOi8vbHVkb2NvZGUuY29tL2Jsb2cvZmxhdHBhay1pcy1ub3QtdGhlLWZ1dHVyZQpIb3dl
dmVyLCAiY2hvc2UgcHJvbWlzZSwgY2hvc2UgZHVlIiBhcyB3ZSBzYXkgaGVyZSwgYSBmbGF0cGFr
IHBhY2thZ2UgCndpbGwgYmUKYXZhaWxhYmxlIGZvciBTbGludCB1c2VycyB0b21vcnJvdy4KCkNo
ZWVycywKCkRpZGllcgoKTGUgMzAvMTEvMjAyMSDDoCAwMDozMCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFRoYW5rcyBhIGJ1bmRsZSBmb3IgYWxsIG9m
IHlvdSBmb2xrcy4gSSBkaWQgbm90IGtub3cgaG93IG11Y2ggb2YgYSAKPiBkaXNjdXNzaW9uIG15
IGlubm9jZW50IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5lcmF0ZS4gSSBsZWFybmVkIGEg
Cj4gbG90IGZyb20geW91ciBhbnN3ZXJzLiBBbHRob3VnaCBJIGhhdmUgbmV2ZXIgbWVzc2VkIHdp
dGggY29uZmlndXJhdGlvbiAKPiBmaWxlcyBzaW5jZSB0aGUgZGF5cyBvZiB0aGUgYXV0b2V4ZWMu
YmF0IGluIHRoZSBkYXlzIG9mIGRvcywgSSB0aGluayBJIAo+IGhhdmUgZW5vdWdoIGNvdXJhZ2Ug
dG8gcGxheSB3aXRoIGNoYW5naW5nIHNvbWUgY29uZmlndXJhdGlvbiBzZXR0aW5ncyAKPiB1c2lu
ZyBzb21lIG9mIHRoZSBlZGl0b3JzIHlvdSBzdWdnZXN0ZWQuCj4gCj4gSSBsYXVuY2hlZCBmZXcg
b2YgdGhlbSBib3RoIGluIHRoZSBkZXNrdG9wIGFuZCBpbiB0aGUgdGVybWluYWwgYW5kIEkgCj4g
Zm91bmQgZ2VhbnkgYW5kIG5hbm8gdG8gYmUgZWFzeS4gSSBkaWQgbm90IGZpbmQgTWljcm8sIEkg
Z3Vlc3MgaXQgaXMgbm90IAo+IHByZWluc3RhbGxlZCBvbiBzbGludC4KPiAKPiBJIGtub3cgdGhh
dCBteSBlZGl0aW5nIG5lZWRzIHdvdWxkIGJlIHZlcnkgYmFzaWMuCj4gCj4gQ2hlZXJzLAo+IAo+
IElicmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

