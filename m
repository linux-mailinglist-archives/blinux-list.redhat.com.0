Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4DE5BBE65
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 16:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663511569;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k5LEiUizSjLQDBUsxr74yxbAwAgXBxXheHo1Z1Gj5U8=;
	b=V7Jx+MlXbR2JFmQtdAzmFpaTpGFVkeGE/ya4dohPm3XF5W0dAJJEayIjgZ94phjRwqEr6E
	WhEvNuoECTQJUUQO9wDH8iYhsG5zLvtJBCA5kOmLSVzyD/+x45YaHdfisu6wtoV/1OzqRG
	LYzRthWW7RuaK4qEwMWBfCNivfCIEUo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-64-lBVOIZGUO_m55JoTzXyw9A-1; Sun, 18 Sep 2022 10:32:48 -0400
X-MC-Unique: lBVOIZGUO_m55JoTzXyw9A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E1B0A811E67;
	Sun, 18 Sep 2022 14:32:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3AD27492CA2;
	Sun, 18 Sep 2022 14:32:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9328C19465A0;
	Sun, 18 Sep 2022 14:32:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: KDE Plasma 5.26 beta questions
Date: Sun, 18 Sep 2022 16:30:50 +0200
References: <mailman.1122.1663510798.6076.blinux-list@redhat.com>
In-Reply-To: <mailman.1122.1663510798.6076.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1124.1663511562.6082.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpUbyBnZXQgaXQgaW4gb2ZmaWNpYWwgQXJjaExpbnV4IFJlcG9zaXRvcnkgeW91IG1p
Z2h0IG5lZWQgdG8gd2FpdCB0aWwgS0RFIFBsYXNtYSA1LjI2IGlzIHJlbGVhc2VkLiAKCkJ1dCBp
IGp1c3Qgc2VhcmNoZWQgYSBlYXN5IHdheSBmb3IgdGVzdGluZyBLREUgTmVvbiBEZXZlbG9wbWVu
dCBuaWdodGx5IHVzaW5nIGRvY2tlci4gIEFzIHVzZXJzIHNob3VsZCBiZSBhYmxlIHRvIGdldCBp
bnZvbHZlZCBpbiBhY2Nlc3NpYmlsaXR5IGRldmVsb3BtZW50IGFuZCB0ZXN0aW5nIHByb2Nlc3Mu
CgpJIG0gY3VycmVudGx5IG5vdCBvbiBteSBtYWNoaW5lIGJ1dCBpIGFscmVhZHkgaGF2ZSBhIHdv
cmtpbmcgaG93dG8gdG8gc2hhcmUgd2l0aCB5b3UuCgpCeSB0aGUgd2F5LCBLREUganVzdCB2b3Rl
cyBpdHMgZ29hbHMuIEtERSB2b3RlcyAzIGdvYWxzLiBPbmx5IDYgZ29hbHMgYXZhaWxhYmxlIGZv
ciB2b3RpbmcuIEFjY2Vzc2liaWxpdHkgaXMgb25lIG9mIHRoZW0uIFNvIHRoZSBjaGFuY2UgaXMg
dmVyeSBoZWlnaCB0aGF0IFBsYXNtYSA1LjI2IHdhcyBqdXN0IHRoZSBmaXJzdCBzaG90IG9mIGEg
bG9uZyBzZXJpZXMgb2YgYWNjZXNzaWJpbGl0eSBpbXByb3ZlbWVudHMuIEJ5IHRoZSB3YXkgbW9z
dCBvZiByZWNlbnQgIHdvcmsgaXMgZG9uZSBieSBjYXJsIHN3YW4gYW5kIGZ1c2lvbmZ1dHVyZS4g
U28gdGhlIGNoZXJyeSBnb2VzIHRoZXJlLiAKCkkgbSBjdXJyZW50bHkgbW9zdGx5IGJ1c3kgaW4g
Z2V0dGluZyBvcmNhIHJlYmFzZWQgb24gYW4gcGx1Z2luIGFyY2hpdGVjdHVyZS4KCkludGVyZXN0
aW5nIHRpbWVzIGFoZWFkIGluIHRlcm1zIG9mIGFjY2Vzc2liaWxpdHkuCgpDaGVlcnMgY2hyeXMK
Cj4gQW0gMTguMDkuMjAyMiB1bSAxNjoyMCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IO+7v1NvIHF1aWNrIHF1
ZXN0aW9uLCBzaW5jZSBLREUgLlBsYXNtYSA1LjI2IGJldGEgaXMgYSB0aGluZywgd2l0aCBhcHBh
cmVudGx5IEExMVkgaW1wcm92ZW1lbnRzLCBnb2luZyBieSBudW1lcm91cyBZVCB2aWRzLCBLREUu
b3JnIGFuZCB0aGVpciAoYWRtaXR0ZWRseSBtYXNzaXZlKSBjaGFuZ2Vsb2cuLi4KPiAKPiBJcyBp
dCB3b3J0aCB0ZXN0aW5nIGl0IG91dD8gTG9va2luZyBhdCBteSByZXBvcyBvbiBBcmNoIEknbSBz
ZWVpbmcgNS4yNS45LTEgaGVyZSwgYW5kIG5vdCBzZWVpbmcgYW55IG9mIHRoZSB1cGRhdGVzIGxp
c3RlZCBpbiB0aGUgY2hhbmdlbG9nLCBpLmUuIHRoZSBkaWFsb2dzIGFyZSBzdGlsbCBpbmFjY2Vz
c2libGUsIHRoZSBjbG9jayBkb2Vzbid0IHBsYXkgbmljZSB3aXRoIE9yY2EsIGV0IGFsLgo+IAo+
IFNvIGRvIEkgbmVlZCB0byB3YWl0IG9uIHRoZSBmdWxsIHJlbGVhc2Ugb2YgNS4yNiB0byBnZXQg
YWxsIHRoZSBuZXcgZmVhdHVyZXMgdGhlbiwgc2luY2UgdGhlIHdheSBJIHJlYWQgS0RFJ3MgYmV0
YS9yZWxlYXNlIHNjZWR1bGUgaXMgdGhlIGJldGEgaXMgZmVhdHVyZSBjb21wbGV0ZSBpZiBJIHVu
ZGVyc3RhbmQgaXQgcmlnaHQgb3IgYW0gSSBub3QgdW5kZXJzdGFuZGluZyBob3cgS0RFIGRvZXMg
dGhlaXIgYmV0YXMKPiAKPiAKPiBJIGtub3cgQ3J5cyBoYXMgYmVlbiBkb2luZyBhIGxvdCBvZiB3
b3JrIHdpdGggS0RFIHNvIEknbSBob3BpbmcgZm9yIHlvdXIgaW5wdXQgb24gdGhpcywgc2luY2Ug
SSd2ZSBiZWVlbiB0b2xkIGJ5IG90aGVyIGZvbGtzIG9mZiBsaXN0IHRoZXkndmUgaGFkIG11Y2gg
bXVjaCBiZXR0ZXIgZXhwZXJpZW5jZXMgd2l0aCBpdCBhbmQgZ2V0dGluZyB0aGluZ3MgdG8gd29y
ayB0aGF0IEkgY2FuJ3QsIGZvciBleGFtcGxlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

