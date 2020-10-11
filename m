Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B980128A88C
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 19:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602438017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=O3R9zxXn2SB8D1ithEkoQTITtCILo4+79pl2yPofP0M=;
	b=HIe0qN4iVmjqMv0v2+DWZ/0KLg1+y8wvQVtGNpeDDLGkk2WqBFBxdIx5VskmJhBXNpKJQS
	1rqY/ELEmh3PAqFUeQQo6aRkJCf3g2sflXZ7FetjRTcG20x0oNg1Oc+rmSQeV0ckHb1v+e
	MeaSyA0es2KYgIaPn9AvCwMPBi/Kdso=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-4ED7XcxfPva6sws7mD3QSg-1; Sun, 11 Oct 2020 13:40:16 -0400
X-MC-Unique: 4ED7XcxfPva6sws7mD3QSg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9ED141868401;
	Sun, 11 Oct 2020 17:40:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 964A960C05;
	Sun, 11 Oct 2020 17:40:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B292692309;
	Sun, 11 Oct 2020 17:40:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BHe29v026253 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 13:40:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E459E2064018; Sun, 11 Oct 2020 17:40:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDEE0206323A
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 17:39:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 630F4811E79
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 17:39:59 +0000 (UTC)
Received: from bilbo.visn.co.uk (bilbo.visn.co.uk [193.254.210.60]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-402-MfbfqjVLPmSTu0TSor9lHQ-1; Sun, 11 Oct 2020 13:39:56 -0400
X-MC-Unique: MfbfqjVLPmSTu0TSor9lHQ-1
Received: from cpc121376-wals12-2-0-cust281.16-1.cable.virginm.net
	([77.100.81.26]:1051 helo=bobsh23aug09)
	by bilbo.visn.co.uk with esmtpa (Exim 4.93)
	(envelope-from <robh@apearl.net>) id 1kRf1T-00BjYT-UN
	for blinux-list@redhat.com; Sun, 11 Oct 2020 18:20:40 +0100
Message-ID: <D4A5BA9C3CBF4FE39CAE97397FB516BE@bobsh23aug09>
To: <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
	<c81de67d-96ad-d809-8f1a-0cbf30051702@gmail.com>
Subject: Re: have we any experts on the list?
Date: Sun, 11 Oct 2020 18:20:41 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5579
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - bilbo.visn.co.uk
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apearl.net
X-Get-Message-Sender-Via: bilbo.visn.co.uk: authenticated_id:
	robh+apearl.net/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: bilbo.visn.co.uk: robh@apearl.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgdGhpcyBhIGQmZCB0aGluZz8gICBub3QgcGxheWVkIHRoYXQgZm9yIGRlY2FkZXMuICBEaWQg
dGhleSB1c2VkIHRvIGJlIApjYWxsZWQgTVVEcz8KCkknbSBndWVzc2luZywgc28gbG9uZyBzaW5j
ZSBJIGhhZCB0byB0aGluayBhYm91dCBpdCwgSSBkb24ndCBhbnkgbW9yZS4KCkVuam95LgoKLS0t
LS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLSAKRnJvbTogIkxpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24iIDxibGludXgtbGlzdEByZWRoYXQuY29tPgpUbzogIkxpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24iIDxibGludXgtbGlzdEByZWRoYXQuY29tPgpTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTEsIDIwMjAgNDo0NyBQTQpTdWJqZWN0OiBSZTogaGF2ZSB3ZSBhbnkgZXhw
ZXJ0cyBvbiB0aGUgbGlzdD8KCgp3aGF0IHJvb20/CgoxMS4xMC4yMDIwIDE4OjQyLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjRiNC10YI6Cj4gSWYgeWVzLCBkb2VzIGEg
d2F5IGV4aXN0IGZvciBhIHVzZXIgZW50ZXJpbmcgYSByb29tIHRvIGxpc3QgdHJhZmZpYyB0aGF0
Cj4gaGFwcGVuZWQgaW4gdGhlIHJvb20gYmVmb3JlIHRoZSB1c2VyIGVudGVyZWQgdGhlIHJvb20/
Cj4KPgo+IC0tCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgot
LSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

