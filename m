Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 745237B9B2D
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 08:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696488840;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I98iYzEy7YM0WCypjowuRVJo/O5xhe3T0go0aNl8qeM=;
	b=Pgk+M30jnk3hUAkrVIgQAID8TkVdQp/fX7pGwwjQaMxvMuAmE4JunSZLwoOLiLa/Tlab+u
	xXPoi6BStJmWVJulbqwEsy3JQ6ZUbCVbDv+NzSef1ap2MbI4UgGCkOjydpjZ/k0IIAYOSh
	q8KPO3XRiqFuJM5XtWjV8UtaNKGsgcI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-178-s4bmAPDSM7m2_cM2vclPCg-1; Thu, 05 Oct 2023 02:53:51 -0400
X-MC-Unique: s4bmAPDSM7m2_cM2vclPCg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFE96101AA6F;
	Thu,  5 Oct 2023 06:53:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 740BF140E950;
	Thu,  5 Oct 2023 06:53:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B64EF19465B1;
	Thu,  5 Oct 2023 06:53:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Intro.
Date: Thu, 5 Oct 2023 07:53:38 +0100
Importance: normal
In-Reply-To: <mailman.1194.1696432221.2981446.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.1194.1696432221.2981446.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1491.1696488824.2981442.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmFzdGlzbGF2LCBUaGlzIGlzIHNvIGhlbHBmdWwgaW5kZWVkIGFuZCB0aGUgbGlua3N3aWxs
IGNvbWUgaW4gcmVhbGx5IGhhbmR5LiBJcyBpdCBwb3NzaWJsZSBmb3IgbWUgdG8gdHVuIExpbnV4
IHdpdGggd2luZG93cyBvbiB0aGUgc2FtZSBjb21wdXRlciBzeXN0ZW0/LCBCaWxseQoKU2VudCBm
cm9tIE1haWwgZm9yIFdpbmRvd3MKCkZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24KU2VudDogMDQgT2N0b2JlciAyMDIzIDE2OjEwClRvOiBibGludXgtbGlzdEByZWRoYXQu
Y29tClN1YmplY3Q6IFJlOiBJbnRyby4KCkhlbGxvLAoKc2luY2UgeW91J3JlIG5ldyB0byBMaW51
eCwgSSB3b3VsZCByZWNvbW1lbmQgZ29pbmcgd2l0aCBVYnVudHUgTWF0ZS4gSXQgCndpbGwgcHJv
dmlkZSB5b3Ugd2l0aCB0aGUgbW9zdCBzdGFibGUgd2hpbGUgc3RpbGwgdXB0b2RhdGUgZXhwZXJp
ZW5jZSwgCnNvIHlvdSBjYW4gZnVsbHkgZm9jdXMgb24gZGlzY292ZXJpbmcgdGhlIG9wZW4gcGxh
dGZvcm0uCgpUaG91Z2gsIEkgd291bGQgcmVjb21tZW5kIHRvIHdhaXQgYSB3ZWVrLCBVYnVudHUg
MjMuMTAgaXMgc2NoZWR1bGVkIHRvIApiZSByZWxlYXNlZCBvbiAxMnRoIE9jdG9iZXIsIHNoaXBw
aW5nIHRoZSBsYXRlc3QgYXRzcGkgcGFja2FnZXMgYW5kIApvdGhlciB0aGluZ3MuCgoKSWYgdGhp
cyBpcyB0aGUgY2hvaWNlIHlvdSBkZWNpZGUgdG8gdGFrZSwgeW91IG1heSBhbHNvIGJlIGludGVy
ZXN0ZWQgaW4gCnNvbWUgb2YgbXkgcmVsYXRlZCBwcm9qZWN0cywgbmFtZWx5OgoKaHR0cHM6Ly9n
aXRodWIuY29tL1Jhc3Rpc2xhdktpc2gvdW1haQoKCmZvciBzZXR0aW5nIHVwIGFjY2Vzc2liaWxp
dHkgb24gVU0sCgpodHRwczovL2dpdGh1Yi5jb20vUmFzdGlzbGF2S2lzaC9tbG9jawoKCmZvciBm
aXhpbmcgb25lIGFubm95aW5nIGJ1ZyB3aXRoIGZvY3VzIGlmIGl0IGFwcGVhcnMgb24geW91ciBt
YWNoaW5lLCBhbmQ6CgpodHRwczovL2dpdGh1Yi5jb20vUmFzdGlzbGF2S2lzaC9tdGcKCgpmb3Ig
dHVybmluZyBvZmYgeW91ciBtb25pdG9yLgoKClJlZ2FyZGluZyB1bWFpIGFuZCBzdXBwb3J0IGZv
ciBVTSAyMy4xMCwgaXQgc2hvdWxkIGJlIHByZXBhcmVkIGJ5IHRoZSAKZGF0ZSBvZiB0aGUgZGlz
dHJvJ3MgcmVsZWFzZSwgc2VlIHRoZSBwcm9qZWN0J3MgcmVhZG1lIGZvciBhbiB1cHRvZGF0ZSAK
bGlzdCBvZiBzdXBwb3J0ZWQgVU0gdmVyc2lvbnMuCgoKSGF2ZSBhIGxvdCBvZiBmdW4sIGFuZCB0
aGUgYmVzdCBleHBlcmllbmNlIQoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgNC4g
MTAuIDIwMjMgbyAxMzoxOCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOt
c2FsKGEpOgo+IEhpIGd1eXMsIHNvIGdsYWQgdG8gYmUgam9pbmluZyB0aGlzIGdyb3VwLiBJIGtu
b3cgbm90aGluZyBhYm91dCBMaW51eCBwbGF0Zm9ybSBidXQgd291bGQgbGlrZSB0byB0cnkgTGlu
dXggZm9yIG15c2VsZi4gVGhlIHByb2JsZW0gaXMgSSB3b3VsZG7igJl0IGtub3cgd2hpY2ggdmVy
c2lvbiB0byB0cnkgb3V0IGZpcnN0IGFuZCB0aGF0IGlzIG9uZSByZWFzb24gZm9yIGpvaW5pbmcg
dGhpcyBncm91cC4gSSBhbSBhIGJsaW5kIHBlbnNpb25lciBsaXZpbmcgaW4gU2NvdGxhbmQgVUsu
IElGIHlvdSBjb3VsZCBwcm92aWRlIG1lIHdpdGggaGVscC9hZHZpY2Ugb24gd2hpY2ggdmVyc2lv
biBvZiBMaW51eCB3b3VsZCBiZSBiZXN0IGZvciBtZSBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaW5k
ZWVkLCBCaWxseQo+Cj4gU2VudCBmcm9tIE1haWwgZm9yIFdpbmRvd3MKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

