Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2225460935
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 20:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638126174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4RFQS+1a9wisvwPeYCC+BQ1AWi+jEoqPuX0ssnILfrg=;
	b=PoTHnbHEsIWQpFQcH8ObAL6n0Bnb8DxEX9cz3AJQ2mqMh2OVs2JynU50kuHWvvXthdmgtW
	/Y0DlMgsSP2IjPPC2OqvRY/S0H2ISHl5uuXqBc03fVSjTlfTFqGOi2GRgAnOuRXQME/h86
	TWs/PeqHta0XSP4A/nzW5z2qXpjjrrs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-429-tvzEIv7YOaiK3KQpbXZ2mw-1; Sun, 28 Nov 2021 14:02:50 -0500
X-MC-Unique: tvzEIv7YOaiK3KQpbXZ2mw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53D432F21;
	Sun, 28 Nov 2021 19:02:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1FD95C25A;
	Sun, 28 Nov 2021 19:02:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03A2F1809C89;
	Sun, 28 Nov 2021 19:02:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASJ2Vnr014284 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 14:02:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4BA242026D5D; Sun, 28 Nov 2021 19:02:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4650E2026D4D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:02:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C285801E6E
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:02:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-389-pDR1KbrtMrO4TK67OhPEaQ-1; Sun, 28 Nov 2021 14:02:26 -0500
X-MC-Unique: pDR1KbrtMrO4TK67OhPEaQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J2Hst159Jz2s50
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 14:02:26 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J2Hst0PQDzcbc; Sun, 28 Nov 2021 14:02:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J2Hst04RZzcbW
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 14:02:25 -0500 (EST)
Date: Sun, 28 Nov 2021 14:02:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
In-Reply-To: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111281401050.19117@panix1.panix.com>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASJ2Vnr014284
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

SXQncyBub3QgdGhlIG9ubHkgb3B0aW9uLCBidXQgeW91J2xsIGhhdmUgdG8gY2hlY2sgb3V0IGNv
bW1hbmQgbGluZQpvcHRpb25zIGFuZCB3cml0ZSBhIHNjcmlwdCBvciBjb25maWd1cmUgeXQtZGxw
IGluIGl0cyBjb25maWd1cmF0aW9uIGZpbGUKdG8gaGF2ZSBhIGRpZmZlcmVudCB0eXBlIG9mIG91
dHB1dC4KCgpPbiBTdW4sIDI4IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgoKPiBIZWxsbyBmcmllbmRzLAo+Cj4gSSBub3RpY2VkIHRoYXQgYWxsIG9m
IG15IGRvd25sb2FkcyBmcm9tIHlvdXR1YmUgYW5kIGZhY2Vib29rIHVzaW5nIHl0LWRscCBjb21l
Cj4gaW4gYSBXRUJNIGZvcm1hdC7CoCBJcyBXRUJNIHRoZSBkZWZhdWx0IG9wdGlvbiBvZiB5dC1k
bHAgb3IgaXMgaXQgdGhlIG9ubHkKPiBvcHRpb24/Cj4KPiBIb3cgY2FuIEkgY2hhbmdlIHRoZSBz
ZXR0aW5nIHRvIG1ha2Ugc3VyZSB0aGF0IG15IGRvd25sb2FkcyBtYWludGFpbiB0aGVpcgo+IG9y
aWdpbmFsIGZvcm1hdHMgd2l0aG91dCBjaGFuZ2VzLiBJIHdhbnQgbXkgZG93bmxvYWRzIHRvIGJl
IG1wMyBpZiB0aGUKPiBvcmlnaW5hbCBpcyBtcDMsIG9yIG1wNCBpZiB0aGUgb3JpZ2luYWwgaXMg
bXA0Li4uZXRjLiBJcyB0aGlzIHBvc3NpYmxlPwo+Cj4gQ2hlZXJzLAo+Cj4gSWJyYWhpbQo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

