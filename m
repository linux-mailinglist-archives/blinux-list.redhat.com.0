Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7BBAB345717
	for <lists+blinux-list@lfdr.de>; Tue, 23 Mar 2021 06:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616476022;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fWYbsBXD/UvYWt+KhF9eLRpbtld6S8SDToQIz7ccS0M=;
	b=eykpxbwyFQrvCIccbVAsXjJNMAgInlns4RdIt1UlubVB/YjI9kQfwxOqE50gZg0qJwXTK4
	Smyw7velW5ci/fhUcekRKAFigqwz7+J31dzoNCafL8VxJRDXrgQBSBtjOp0E+TdceV00a2
	/V/wbW7L/YLc0ct1+V8nbO6B3mz2FUA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-DWIhh0HeOBq5EH2R2sMEzg-1; Tue, 23 Mar 2021 01:07:00 -0400
X-MC-Unique: DWIhh0HeOBq5EH2R2sMEzg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D3D383DD20;
	Tue, 23 Mar 2021 05:06:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01D031002388;
	Tue, 23 Mar 2021 05:06:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10E721809C81;
	Tue, 23 Mar 2021 05:06:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12N56ci1021328 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Mar 2021 01:06:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C822E2166BA4; Tue, 23 Mar 2021 05:06:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C24482166B44
	for <blinux-list@redhat.com>; Tue, 23 Mar 2021 05:06:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B034101A531
	for <blinux-list@redhat.com>; Tue, 23 Mar 2021 05:06:35 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-70-8DrMmL-mMByW03pown1Zjw-1; Tue, 23 Mar 2021 01:06:32 -0400
X-MC-Unique: 8DrMmL-mMByW03pown1Zjw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.2] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id D21775D7CA
	for <blinux-list@redhat.com>; Tue, 23 Mar 2021 04:57:53 +0000 (UTC)
Subject: Any suggestions for survey hosting websites accessible with Lynx?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161647547368.8.2733938886744004118.5021544@slmail.me>
Date: Tue, 23 Mar 2021 04:57:53 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5021544
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkknbSBob3Bpbmcgc29tZW9uZSBvbiB0aGlzIGxpc3TCoG1pZ2h0IGhhdmUgc29tZSBzdWdn
ZXN0aW9ucyBmb3IgYSB3ZWJzaXRlIHdoZXJlIEkgY291bGQgcG9zdCBhIHN1cnZleSBhY2Nlc3Np
YmxlIGZvciB0aG9zZSB1c2luZyB0aGUgY29uc29sZSB3aXRoIHRoZSBMeW54IGJyb3dzZXIgdG8g
ZmlsbCBvdXQ/IApJJ3ZlIGhlYXJkIG9mIFN1cnZleU1vbmtleSBidXQgSSBkb24ndCBrbm93IGlm
IHRoYXQgd2Vic2l0ZSB3b3VsZCBiZSBhY2Nlc3NpYmxlIGZvciBzb21lb25lIHVzaW5nIHRoZSBj
b25zb2xlLsKgCkkgdXNlIEZpcmVmb3ggaW4gZ3JhcGhpY2FsIGFuZCBJJ20gbm90IHRoYXQgZmFt
aWxpYXIgd2l0aCBjb25zb2xlIGJyb3dzZXJzIGJ1dCB0aGUgc3VydmV5IG5lZWRzIHRvIGJlIGFj
Y2Vzc2libGUgZm9yIHRob3NlIHVzaW5nIEx5bnguCkkgZG8gbm90IGhhdmUgdGhlIHNraWxscyBp
biB3ZWIgZGVzaWduIHRvIGNyZWF0ZSBteSBvd24gc2l0ZSBqdXN0IHRvIGhvc3QgYSBzdXJ2ZXku
CkknbSBob3BpbmcgdG8gdXNlIG9uZSBvZiB0aGUgc3VydmV5IGhvc3Rpbmcgd2Vic2l0ZSBvcHRp
b25zIG91dCB0aGVyZSBidXQgSSBkb24ndCBrbm93IHdoaWNoIG9uZXMgbWlnaHQgd29yayB3aXRo
IEx5bnguIApJdCBuZWVkcyB0byBiZSBhY2Nlc3NpYmxlIGJvdGggZm9yIHRoZSBzdXJ2ZXkgYWRt
aW5pc3RyYXRvcnMgYXMgd2VsbCBhcyB0aGUgcGFydGljaXBhbnRzLgpBbnkgc3VnZ2VzdGlvbnMg
d291bGQgYmUgdmVyeSBhcHByZWNpYXRlZC4KVGhhbmtzIHNvIG11Y2gsClNMCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

