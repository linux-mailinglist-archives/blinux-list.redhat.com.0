Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7ABEC4108C9
	for <lists+blinux-list@lfdr.de>; Sun, 19 Sep 2021 00:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632002919;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MMTY8MEvJ4OxQ3/EzDf+cxX3uhL0U/ocSgokethNok0=;
	b=K7cyrcgMh3juMErteJoy7WafrlOb0jRWRv75oqEb8wD3RyeCXpGEQNAl1LDtOGIH96Kemw
	NKI8QE63AKSSVyB6zXKY5GCwHmNZzrqeswKYYZxW4LY8DvbNZVFyPTVV/o8VWlNlIelZgJ
	n76DGjPW20wc5MG2M2GHoFZGYLaAIWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-D6OrEGRaM8iGYFEyXGhG5g-1; Sat, 18 Sep 2021 18:08:37 -0400
X-MC-Unique: D6OrEGRaM8iGYFEyXGhG5g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DB581800D41;
	Sat, 18 Sep 2021 22:08:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E552660843;
	Sat, 18 Sep 2021 22:08:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA9204E58E;
	Sat, 18 Sep 2021 22:08:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IM8O6d028543 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 18:08:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E94EF202E4AB; Sat, 18 Sep 2021 22:08:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4996202E4A4
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 22:08:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A266E100B8D2
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 22:08:19 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-420-ngTnwT5SNri7ls9AncS3-w-1; Sat, 18 Sep 2021 18:08:17 -0400
X-MC-Unique: ngTnwT5SNri7ls9AncS3-w-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id AC54BFA657
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 18:08:16 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net AC54BFA657
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IM8GBn042444
	for blinux-list@redhat.com; Sat, 18 Sep 2021 18:08:16 -0400
Date: Sat, 18 Sep 2021 18:08:16 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: rhvoice broken on Arch
Message-ID: <YUZjUATrhuqRF+2A@rednote.net>
References: <YUXl/70G69mzJqvV@rednote.net> <YUYJPmtUN850ISXK@rednote.net>
	<20210918175433.vxj2bqpztnz67iqx@alex-pc>
	<YUZRaJrtj5nH3p4h@rednote.net>
	<20210918212952.kur7yxxzsbwoyina@alex-pc>
MIME-Version: 1.0
In-Reply-To: <20210918212952.kur7yxxzsbwoyina@alex-pc>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18IM8O6d028543
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWdhaW4hCgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyaXRlczoKPiBP
biBTYXQsIFNlcCAxOCwgMjAyMSBhdCAwNDo1MTo1MlBNIC0wNDAwLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gLi4uCj4gaG1tLiBJIGFtIHVzaW5nIHRtdXgg
YW5kIGl0IG1ha2VzIHRoZSBlYXNpZSB0byByZWFkIGFueSBvdXRwdXQuCj4gSSBzdHJvbmdseSBh
ZHZpc2UgeW91IHRvIGRldmVsb3AgdGhpcyBoYWJpdCBmb3IgeW91LCBpdCB3aWxsIGhlbHAgdG8K
PiBhdm9pZCBwcm9ibGVtcyBpbiB0aGUgZnV0dXJlLgo+IApZZXMsIEkgaGF2ZSBzZXZlcmFsIHJl
YXNvbnMgbm93IHRvIGxlYXZlIHNjcmVlbiBiZWhpbmQgYW5kIG1vdmUgdG8gdG11eC4KU29vbiEK
Cgo+ID4gPiA+IFNvcnJ5LCBBbGV4YW5kZXIhCj4gPiA+Cj4gPiA+IEkgZG9u4oCZdCBrbm93IHdo
eSB5b3UgYXJlIGFwb2xvZ2l6aW5nLCBidXQgaW4gYW55IGNhc2UsIHlvdSBkb27igJl0IG5lZWQg
dG8gZG8gdGhpcy4KPiA+ID4KPiA+IEZhaXIgZW5vdWdoLiBJIGp1c3QgZG9uJ3QgbGlrZSBiZWlu
ZyBwZXNreSwgYW5kIEkndmUgYmVlbiB1bmFibGUgdG8KPiA+IHN1Y2NlZWQgcmVsaWFibHkgd2l0
aCBlc3BlYWt1cC0wLjkwIGZvciB3ZWVrcyBub3cuCj4gCj4gSSdtIGFsc28gc29ycnkgdGhhdCBJ
IGhhdmVuJ3QgYmVlbiBhYmxlIHRvIGhlbHAgeW91IHdpdGggdGhpcyB5ZXQuCj4gCj4gPiBJJ20g
Z2xhZCB0byBoZWFyIHlvdSBhbmQgS2lyayBhcmUgd29ya2luZyBvbiB0aGF0LiBBbHNvLCBhcyBE
aWRpZXIKPiA+IHN1Z2dlc3RlZCwgSSB3aWxsIHNlZSBpZiByZWJ1aWxkaW5nIHBjYXVkaW9saWIg
d2l0aG91dCBwdWxzZSBtaWdodCBoZWxwLgo+ID4gSSB0cnkgdG8gYXZvaWQgcHVsc2UsIHNvIGl0
J3MgcG9zc2libGUgSSdtIG1pc3Npbmcgc29tZSBwaWVjZSBpdCB3YW50cy4KPiAKPiBvbyB5b3Ug
ZG9uJ3QgaGF2ZSBwdWxzZSBpbnN0YWxsZWQ/IHRoaXMgaXMgaW1wb3J0YW50IGluZm9ybWF0aW9u
Lgo+IAp5YXkgLVFpIHB1bHNlYXVkaW8gcmVwb3J0cyBpdCBpbnN0YWxsZWQgYXMgYSBkZXBlbmRl
bmN5LCBidXQgaXQncyBub3QgYQp3b3JraW5nIHN5c3RlbS4gRm9yIGV4YW1wbGU6CgpwYXBsYXkg
bXlmaWxlLndhdgoKZ2l2ZXMgbWU6CgpDb25uZWN0aW9uIGZhaWx1cmU6IENvbm5lY3Rpb24gcmVm
dXNlZApwYV9jb250ZXh0X2Nvbm5lY3QoKSBmYWlsZWQ6IENvbm5lY3Rpb24gcmVmdXNlZAoKV2hl
cmVhcyBhcGxheSB3b3JrcyBqdXN0IGZpbmUuCgpCZXN0LAoKSmFuaW5hCgo+ID4gQmVzdCwKPiA+
Cj4gPiBKYW5pbmEKPiAKPiAtLQo+IFNpbmNlcmVseSwgQWxleGFuZGVyCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gCgpKYW5pbmEgU2Fqa2EKaHR0
cHM6Ly9saW5rZWRpbi5jb20vaW4vanNhamthCgpMaW51eCBGb3VuZGF0aW9uIEZlbGxvdwpFeGVj
dXRpdmUgQ2hhaXIsIEFjY2Vzc2liaWxpdHkgV29ya2dyb3VwOglodHRwOi8vYTExeS5vcmcKClRo
ZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNzaWJpbGl0eSBJbml0
aWF0aXZlIChXQUkpCkNvLUNoYWlyLCBBY2Nlc3NpYmxlIFBsYXRmb3JtIEFyY2hpdGVjdHVyZXMJ
aHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

