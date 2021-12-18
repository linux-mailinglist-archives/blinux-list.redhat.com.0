Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F067E479C9A
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 21:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639859936;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=csKNX7F2cpgmWfBAl9I+KWTxBEQyHTW3YrHwroivoLA=;
	b=T5h/pSu8uk5V6uNS2pkQVm1IMK2ymphz+K/kPdjqQs//267OjLrN+WF4Awcrc94+YgWX09
	ClcN8VA8FYDUuDurBXkXUyrcBghCr2AR6AAJuaUQ78wsH912uVEDPuowapj7jaKGURbwmV
	oF942LSHA1n9zrVp8yzZQIPxMR1WAO8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-117-qoVl6K7WM42mdvxSzCmKGQ-1; Sat, 18 Dec 2021 15:38:52 -0500
X-MC-Unique: qoVl6K7WM42mdvxSzCmKGQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF4A11006AA4;
	Sat, 18 Dec 2021 20:38:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EA636AB92;
	Sat, 18 Dec 2021 20:38:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08D9B4A706;
	Sat, 18 Dec 2021 20:38:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIKcjlu025249 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 15:38:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B17CD53DB; Sat, 18 Dec 2021 20:38:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC6BB53D9
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 20:38:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7413380068E
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 20:38:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-172-oXaqXrAfNYynVJzs22g8JQ-1; Sat, 18 Dec 2021 15:38:40 -0500
X-MC-Unique: oXaqXrAfNYynVJzs22g8JQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JGd3h3Lmpz3vdX
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:38:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JGd3h3C3Yzcbc; Sat, 18 Dec 2021 15:38:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JGd3h38zNzcbP
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:38:40 -0500 (EST)
Date: Sat, 18 Dec 2021 15:38:40 -0500
To: blinux-list@redhat.com
Subject: [fenrir-screenreader] Re: fenrir-screenreader and python 3.10
 (fwd)
Message-ID: <alpine.NEB.2.23.451.2112181538290.12616@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BIKcjlu025249
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KRGF0ZTogU2F0LCAxOCBE
ZWMgMjAyMSAxNDoxODoyNQpGcm9tOiBMaW51eCBBMTF5IDxjaHJ5c0BsaW51eC1hMTF5Lm9yZz4K
UmVwbHktVG86IGZlbnJpci1zY3JlZW5yZWFkZXJAZnJlZWxpc3RzLm9yZwpUbzogZmVucmlyLXNj
cmVlbnJlYWRlckBmcmVlbGlzdHMub3JnClN1YmplY3Q6IFtmZW5yaXItc2NyZWVucmVhZGVyXSBS
ZTogZmVucmlyLXNjcmVlbnJlYWRlciBhbmQgcHl0aG9uIDMuMTAKCkhvd2R5LAoKUHl0aG9uIGlz
IGFuIGludGVycHJldGVkIGxhbmd1YWdlLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIGJ1aWxkIG9y
IHJlYnVpbGQgaXQuIFlvdSBjYW4gcnVuIHRoZSBjb2RlIHdpdGggYW55IG5ldyBQeXRob24gdmVy
c2lvbi4gSWYgdGhlcmUgYXJlIGFueSBpbmNvbXBhdGlibGUgbGFuZ3VhZ2UgY29uc3RydWN0IHMg
aW4gdGhlIG5ldyB2ZXJzaW9uIGkgd2lsbCBmaXggaXQuIEJ1dCBjdXJyZW50bHkgbm9uZSBpcyBr
bm93biB0byBtZS4gVGhlIGdvb2QgdGhpbmcgLT4geW91IGRvbnQgaGF2ZSB0byBpbnN0YWxsIGZl
bnJpcnMgc291cmNlIGluIGFueSB3YXkgYmVjYXVzZSBpdHMgcnVubmFibGUganVzdCByaWdodCBm
cm9tIHRoZSBnaXQgcmVwb3NpdG9yeS4gVGhpcyB3YXkgeW91IGNhbiB0cnkgZmVucmlyIHdpdGhv
dXQgYnJlYWsgeW91ciBsb2NhbCBpbnN0YWxsYXRpb24gOikuCgpDaGVlcnMgY2hyeXMKCj4gQW0g
MTguMTIuMjAyMSB1bSAyMDowMSBzY2hyaWViIEp1ZGUgRGFTaGllbGwgPGpkYXNoaWVsQHBhbml4
LmNvbT46Cj4KPiDvu79IYXMgZmVucmlyLXNjcmVlbnJlYWRlciBiZWVuIGJ1aWx0IHdpdGggcHl0
aG9uIDMuMTAgeWV0Pwo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiBNYWlsaW5nTGlzdDogZmVucmlyLXNjcmVlbnJlYWRlckBmcmVlbGlzdHMub3JnCj4g
V2Vic2l0ZTogaHR0cHM6Ly9saW51eC1hMTF5Lm9yZwo+IFdpa2k6IGh0dHBzOi8vd2lraS5saW51
eC1hMTF5Lm9yZy9kb2t1LnBocD9pZD1mZW5yaXIKPiBDb2RlOiBodHRwczovL2dpdGh1Yi5jb20v
Y2hyeXM4Ny9mZW5yaXIKPiBJUkMgTGl2ZSBTdXBwb3J0Ogo+IE5ldHdvcms6IGlyYy5saW51eC1h
MTF5Lm9yZwo+IFJvb206ICNhMTF5Cj4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCk1haWxpbmdMaXN0OiBmZW5yaXItc2NyZWVucmVhZGVyQGZyZWVsaXN0cy5v
cmcKV2Vic2l0ZTogaHR0cHM6Ly9saW51eC1hMTF5Lm9yZwpXaWtpOiBodHRwczovL3dpa2kubGlu
dXgtYTExeS5vcmcvZG9rdS5waHA/aWQ/bnJpcgpDb2RlOiBodHRwczovL2dpdGh1Yi5jb20vY2hy
eXM4Ny9mZW5yaXIKSVJDIExpdmUgU3VwcG9ydDoKTmV0d29yazogaXJjLmxpbnV4LWExMXkub3Jn
ClJvb206ICNhMTF5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

