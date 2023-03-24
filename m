Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3C6C7F8E
	for <lists+blinux-list@lfdr.de>; Fri, 24 Mar 2023 15:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679667138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BcqtFEWTXBwJQAT74TCTsjBGXP4n+5VTK3eDVWx9fLI=;
	b=Va6s0HU368PIsLuInda++h7gHQ0vdqy4ELOe97XFxaMQSEl+/k1l7IOaVPVT5jH+0IgqMm
	WTl6y3xsUoSleC43/u4wPIEZQ9fJfLKJuewdhvRoyIHF7Re1dJ+lJJRoFEQZo5sTQqHa77
	b/kFkOrXkWV2M2Y625CxU/OQosixAUw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-h471mnMiOB2HafY316f9yw-1; Fri, 24 Mar 2023 10:12:14 -0400
X-MC-Unique: h471mnMiOB2HafY316f9yw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68E503C10154;
	Fri, 24 Mar 2023 14:12:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F8A52027040;
	Fri, 24 Mar 2023 14:12:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 864FE1946A69;
	Fri, 24 Mar 2023 14:12:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 24 Mar 2023 15:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1003.1679507434.636361.blinux-list@redhat.com>
 <mailman.1128.1679507738.636367.blinux-list@redhat.com>
 <mailman.1106.1679508893.636360.blinux-list@redhat.com>
In-Reply-To: <mailman.1106.1679508893.636360.blinux-list@redhat.com>
Message-ID: <mailman.1605.1679667127.636360.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCwgSSBoYXZlIHByZXBhcmVkIGEgcGFja2FnZSBmb3IgU2xpbnQsIGJ1dCB3aWxsIHdhaXQg
YSBiaXQgdG8gdXBsb2FkIGl0IGFzCnRoZSBiZWhhdmlvciBpcyB0b28gZXJyYXRpYyBmb3Igbm93
IGZvciB0ZXN0aW5nIGJ5IGVuZCB1c2VycyBpbiBteSBvcGluaW9uLgoKQ2hlcnMsCkRpZGlvZXIK
CkxlIDIyLzAzLzIwMjMgw6AgMTk6MTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXTCoDoKPiBJdCdzIGFsbCB3cml0dGVuIGluIHRoZSBhbm5vdW5jZW1lbnQ6IGh0
dHBzOi8vb2RpbGlhLmFwcC9uZXdzL3JlbGVhc2VfMC0xLTAvCj4gCj4gQXMgaXQgc2F5cyBhbW9u
ZyB0aGUgY2FwYWJpbGl0aWVzOgo+IENvbmZpZ3VyYWJsZSB2b2ljZXMvcmF0ZSB2aWEgc3BlZWNo
ZC5jb25mCj4gSSBhc3N1bWUgYSB0aGF0IGl0IGNhbiB1c2UgdGhlIHNhbWUgVFRTIGFuZCB2b2lj
ZXMgYXMgT3JjYS4KPiAKPiBBbmQgaXQgaXMgb2J2aW91c2x5IG5vdCBhbiBPcmNhIGNsb25lLgo+
IAo+IERpZGllcgo+IAo+IExlIDIyLzAzLzIwMjMgw6AgMTg6NTUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gQWN0dWFsbHkgaXQgZGlkIHJlYWQgZmlu
ZSwgYnV0IEkgd29uZGVyIGlzIHRoaXMgYW4gT1JDQSBjbG9uZSwgb3IgYSBicmFuZCBuZXcKPj4g
c2NyZWVuLXJlYWRlcj8gQW5kIHdoYXQgc3BlZWNoIGVuZ2luZXMgd2lsbCBpdCBoYXZlPyBUaGFu
a3MgaW4gYWR2YW5jZQo+PiBDaGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

