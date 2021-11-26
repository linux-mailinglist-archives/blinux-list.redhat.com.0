Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A1945E397
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 01:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637885186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nl8SFDFqTTlF7VFhJePzz5f4PvvqXawWdb0IJWNAsmg=;
	b=Fnby4ifB2aj1d9J3aFGSYtWT4f3qHWEwlGKTP1NR8CDE+HOH/6qrOjCZj5UM00EpHUsvZr
	qLrdddmu+O9iaP3tuK5EhlkVXnmdkX65bqhDPd/n9zK5mHAaMFJBg5jo/jxMe5ykipZKY4
	W+KhcxkRHpYoOEWLZiVORHLM++hi0B0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-L6glVyTWOJ6_HZNrJyi67w-1; Thu, 25 Nov 2021 19:06:23 -0500
X-MC-Unique: L6glVyTWOJ6_HZNrJyi67w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D4981927800;
	Fri, 26 Nov 2021 00:06:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BD435D6B1;
	Fri, 26 Nov 2021 00:06:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D5691809C89;
	Fri, 26 Nov 2021 00:06:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ05vVG018804 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 19:05:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EF87640CFD12; Fri, 26 Nov 2021 00:05:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E938B40CFD01
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:05:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE419805A2E
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 00:05:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-12-rAzTa9taP2SsWPTlpx6ngA-1;
	Thu, 25 Nov 2021 19:05:54 -0500
X-MC-Unique: rAzTa9taP2SsWPTlpx6ngA-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 14400A3F72
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 23:05:13 +0100 (CET)
Message-ID: <47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
Date: Fri, 26 Nov 2021 02:05:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
In-Reply-To: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AQ05vVG018804
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSBhbmQgQWxsLAoKeXQtZGxwIGlzIG5vdyBwcm92aWRlZCBmb3IgU2xpbnQuCgpJ
IGFtIGxpdHRsZSBsYXRlIGJlY2F1c2UgSSB0b29rIHRoaXMgb2NjYXNpb24gdG8gdXBncmFkZSBm
Zm1wZWcsIG1wdiBhbmQgCnZsYy4gbXB2IG5vdyB1c2VzIHl0LWRscCBhcyBkb3dubG9hZGVyIGlm
IGF2YWlsYWJsZS4KClRvIGtub3cgbW9yZToKaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9wb3N0
L3NsaW50L2F1ZGlvLWFuZC12aWRlby1wYWNrYWdlcy11cGdyYWRlZAoKQ2hlZXJzLApEaWRpZXIK
CkxlIDIyLzExLzIwMjEgw6AgMTY6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXTCoDoKPiBIZWxsbyBmcmllbmRzLAo+IAo+IEkgYW0gd29uZGVyaW5nIGlmIHRo
ZXJlIGFyZSBnb29kIGFwcGxpY2F0aW9ucyBmb3IgZG93bmxvYWRpbmcgZnJvbSAKPiB5b3V0dWJl
IHRoYXQgd29ya3Mgd2VsbCB3aXRoIGxpbnV4ISBJIGFtIGxvb2tpbmcgZm9yIHNvbWV0aGluZyBz
aW1pbGFyIAo+IHRvIFBvbnRlJ3MgbWVkaWEgZG93bmxvYWRlciB3aGljaCB3b3JrcyB3ZWxsIHdp
dGggd2luZG93cyBzY3JlZW4gCj4gcmVhZGVycy4gSXMgdGhlcmUgc3VjaCBhbiBhcHA/Cj4gCj4g
VGhlIHNlY29uZCBhcHBsaWNhdGlvbiBJIGFtIGhvcGluZyB0byBmaW5kIGlzIGEgZ29vZCB3ZWF0
aGVyIGFwcC4gSSAKPiB0cmllZCB0byB0aGUgd2VhdGhlciBvbiB0aGUgdGVybWluYWwgYW5kIGRp
ZCBub3QgbGlrZSBpdCBhdCBhbGwuIFNvLCBJIAo+IGFtIGhvcGluZyB0byBmaW5kIGEgYmV0dGVy
IGFsdGVybmF0aXZlIHRoYXQgd29ya3Mgb24gdGhlIGd1aS4KPiAKPiBDaGVlcnMsCj4gCj4gSWJy
YWhpbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

