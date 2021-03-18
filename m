Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5E2AB34110F
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616110308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OMvpwUlJNtYARRu57neyV2UMUq4LWRBodXfmUv3N8b8=;
	b=PkUyvZModZBlT1gM3Cf00WnODvSKvl+qoR6B3hkBtOzyJuSTtx52IJW3bvIBwJinlyyVMk
	mlFfUTHtQJBRj2amdGjpZfNI9rTSsMtmnWexGH4cleSkYe2JsOPO7OwGQ04OuqnX2QyGIj
	FUdKHSTxuVNeKr0dbsrNqvXwfuZsEag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-OLTfBscXO--9oCpgcIgcmw-1; Thu, 18 Mar 2021 19:31:46 -0400
X-MC-Unique: OLTfBscXO--9oCpgcIgcmw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D297B107ACCD;
	Thu, 18 Mar 2021 23:31:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44B975D9D0;
	Thu, 18 Mar 2021 23:31:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C85634BB7C;
	Thu, 18 Mar 2021 23:31:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INTc0k024899 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:29:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED2572026D65; Thu, 18 Mar 2021 23:29:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E59E62024CD0
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:29:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD860100DE77
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:29:33 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
	[185.70.41.104]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-501-icL8KQBjN3OZGhaJxOX1sw-1; Thu, 18 Mar 2021 19:29:31 -0400
X-MC-Unique: icL8KQBjN3OZGhaJxOX1sw-1
Received: from mail-03.mail-europe.com (mail-03.mail-europe.com
	[91.134.188.129])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by mail-41104.protonmail.ch (Postfix) with ESMTPS id 4F1jfZ5LMpz4x04X
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:19:50 +0000 (UTC)
Date: Thu, 18 Mar 2021 23:19:35 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Decluttering Thunderbird/other alternatives?
Message-ID: <ab3298ec-a4d7-f2a1-e422-922ca49959d9@protonmail.com>
In-Reply-To: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12INTc0k024899
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aGV5IHRoZXJlLAoKaG1tLCBJJ20gYWZmcmFpZCBJIGtpbmQgb2YgZG9uJ3QgdW5kZXJzdGFuZCBp
dC4KCkhvdyBleGFjdGx5IGlzIFRodW5kZXJiaXJkIGNsdXR0ZXI/CgoKQXMgZm9yIExpZ2h0bmlu
ZywgeWVzLCBpdCB1c2VkIHRvIGJlIHRoZXJlLCBidXQgaXQgd2FzIG5ldmVyIGFwcGVhcmluZwph
bnl3aGVyZSBuZWFyIHRoZSBjb21wb25lbnRzIHVzZWQgZm9yIG5hdmlnYXRpb24sIGFuZCB3YXMg
c28gaW52aXNpYmxlLAp0aGF0IEkgZG9uJ3QgcmVtZW1iZXIgZXZlciBzZWVpbmcgaXQuCgpJbiBm
YWN0LCBJIGRvbid0IGV2ZW4ga25vdywgd2hldGhlciBpdCBpcyBzdGlsbCBoZXJlIG9yIG5vdC4g
OkQKClRoZXJlIHdlcmUgdmFyaW91cyBjaGFuZ2VzLCBhbmQgSSBkb24ndCByZW1lbWJlciB3aGF0
J3MgdGhlIGN1cnJlbnQKcmVzb2x1dGlvbi4KCgpBcyBmb3IgdGhlIG5ldyBtZXNzYWdlIHdpbmRv
dywgd2hhdCB2ZXJzaW9uIG9mIFRCIGRvIHlvdSB1c2U/CgpJbiA3OCsgcmVsZWFzZXMsIHRoZSBy
ZWNpcGllbnQgZmllbGQgd2FzIHJlcGxhY2VkIGJ5IGEgbmV3b25lLCB3aGljaAphbGxvd3MgeW91
IHRvIHdyaXRlIGV2ZXJ5dGhpbmcgdG8gdGhhdCBvbmUgcGxhY2UuCgpSaWdodCBhZnRlciBmaW5p
c2hpbmcgdGhlIGFkZHJlc3MgYW5kIHRhYmJpbmcgb3IgbWF5IGJlIHByZXNzaW5nIHNvbWUKa2V5
IChJIGRpZCBub3QgY2hlY2spLCBpdCBkaXNhcHBlYXJzIGFuZCBuZXh0b25lIGNhbiBiZSB3cml0
dGVuLCBpZiB5b3UKd2lzaCB0aGUgbWVzc2FnZSB0byBiZSBzZW5kIHRvIGFueW9uZSBlbHNlLgoK
ClNvIGluIHByYWN0aWNlLCB5b3UgbmVlZCBqdXN0IG9uZSB0YWIgdG8gZ2V0IHRvIHRoZSBzdWJq
ZWN0IGZpZWxkLgoKCkluIGdlbmVyYWwsIEknbSBwZXJzb25hbGx5IHJlYWxseSBzYXRpc2ZpZWQg
d2l0aCBUQi4gSXQgcGVyaGFwcyBjb3VsZCBiZQphIGxpdHRsZSBiaXQgZmFzdGVyIHdpdGggaW1h
cCBhY2NvdW50cywgYnV0IHNpbmNlIEkgdXNlIFByb3Rvbm1haWwsCndoaWNoIHByb3ZpZGVzIGl0
cyBvd24gYXBwIHRvIGNyZWF0ZSBhIGxvY2FsIGltYXAgc2VydmVyIGZvciBlbmQgdG8gZW5kCmlu
Ym94IGVuY3J5cHRpb24gLyBkZWNyeXB0aW9uLCB0aGF0IGRvZXNuJ3QgcmVhbGx5IGJvdGhlciBt
ZSBhcyBsb2NhbApzb2NrZXRzIGhhdmUgcHJhY3RpY2FsbHkgbm8gc3BlZWQgbGltaXRzLgoKCkJl
aW5nIGFibGUgdG8gc29ydCBlLW1haWxzIHRvIHRocmVhZHMgKGluIGEgbG9naWNhbCB3YXksIHVu
bGlrZQpFdm9sdXRpb24pLCByZWNlaXZlIFJTUyBuZXdzIGFuZCB3cml0ZSBlTWFpbHMgaW4gTWFy
a2Rvd24sIEkgcGVyc29uYWxseQpjdXJyZW50bHkgZG9uJ3QgaGF2ZSBhbnkgcmVhc29ucyB0byBz
ZWFyY2ggYWx0ZXJuYXRpdmVzLCBleGNlcHQgbXkKY3VyaW9zaXR5LiA6KQoKCkJlc3QgcmVnYXJk
cwoKClJhc3Rpc2xhdgoKCkTFiGEgMTguIDMuIDIwMjEgbyAxNjowMSBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IFNvIGlzIHRoZXJlIGEgd2F5IEkgY2Fu
IGRlY2x1dHRlciBUaHVuZGVyYmlyZCB0byBiZSBzaW1wbGVyL2Vhc2llciB0bwo+IG5hdmlnYXRl
PyBJIGRvbid0IC9uZWVkLyBMaWdodG5pbmd0YWtpbmcgdXAgc3BhY2UsIG9yIGhhdmluZyB0byB0
YWIKPiB0d2ljZSBpbiB3cml0aW5nIGEgbWVzc2FnZSB0byBnZXQgdG8gdGhlIHN1YmplY3QgZmll
bGQuCj4KPiBTbyBjYW4gSSBkbyBhbnl0aGluZyB0byBkZWNsdXR0ZXIgVGh1bmRlcmJpcmQuIE9y
IGFyZSB0aGVyZSBhbnkKPiBhbHRlcm5hdGl2ZSBlbWFpbCBwcm9ncmFtcyB0aGF0IGFyZSBqdXN0
IGFzIGdvb2QgYXMgVGh1bmRlcmJpcmQgdGhhdAo+IHdvcmsgZ3JlYXQgd2l0aCBPcmNhPwo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

