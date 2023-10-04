Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABD57B7E7E
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 13:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696420436;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c+KwAQ4Cmnu71Eids1qaW3/kC/e/MGCrSWRBad+fHew=;
	b=Issd+F5lDNGY/knTwFNSVsFU1fKapzcOx7GqxwyrRNNgvgauWx8DHw48L1ojS5SQ6o8r96
	GKjC/tnVe/UUxIP01KupesBaC+ysj9gR3m9qWDVWFi0GTkP0ydqUMnSjV2uLP+Fme9o+O2
	ssPMJnT2+fMpH/+JTlq80XiGWKHGXzQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-692-E1mRbXzoN8OxrynBeHOWSg-1; Wed, 04 Oct 2023 07:53:52 -0400
X-MC-Unique: E1mRbXzoN8OxrynBeHOWSg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D715B811E8F;
	Wed,  4 Oct 2023 11:53:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2528A493113;
	Wed,  4 Oct 2023 11:53:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8FAC219465A3;
	Wed,  4 Oct 2023 11:53:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 4 Oct 2023 07:53:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Intro.
In-Reply-To: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.784.1696420428.2981444.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBjb3VwbGUgcXVlc3Rpb25zLgpJbiB5b3VyIGNhc2UgaXMgYmxpbmQgZGVmaW5lZCBhcyBubyB1
c2VhYmxlIHZpc2lvbiBpbmNsdWRpbmcgbm8gYWJpbGl0eSB0bwpzZWUgbGlnaHQ/CldoYXQgb3Bl
cmF0aW5nIHN5c3RlbSBvciBvcGVyYXRpbmcgc3lzdGVtcyBkaWQgeW91IHVzZSBiZWZvcmUgTGlu
dXg/CkFuc3dlcnMgdG8gdGhlc2UgdHdvIHF1ZXN0aW9ucyBvdWdodCB0byBoZWxwIHRoZSBsaXN0
IGdldCB5b3UgYmV0dGVyCmd1aWRlYW5jZS4KCgotLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBk
b3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9mIGxp
YmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdApv
cmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCgpPbiBXZWQsIDQgT2N0IDIwMjMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhpIGd1eXMsIHNvIGdsYWQgdG8g
YmUgam9pbmluZyB0aGlzIGdyb3VwLiBJIGtub3cgbm90aGluZyBhYm91dCBMaW51eCBwbGF0Zm9y
bSBidXQgd291bGQgbGlrZSB0byB0cnkgTGludXggZm9yIG15c2VsZi4gVGhlIHByb2JsZW0gaXMg
SSB3b3VsZG7igJl0IGtub3cgd2hpY2ggdmVyc2lvbiB0byB0cnkgb3V0IGZpcnN0IGFuZCB0aGF0
IGlzIG9uZSByZWFzb24gZm9yIGpvaW5pbmcgdGhpcyBncm91cC4gSSBhbSBhIGJsaW5kIHBlbnNp
b25lciBsaXZpbmcgaW4gU2NvdGxhbmQgVUsuIElGIHlvdSBjb3VsZCBwcm92aWRlIG1lIHdpdGgg
aGVscC9hZHZpY2Ugb24gd2hpY2ggdmVyc2lvbiBvZiBMaW51eCB3b3VsZCBiZSBiZXN0IGZvciBt
ZSBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaW5kZWVkLCBCaWxseQo+Cj4gU2VudCBmcm9tIE1haWwg
Zm9yIFdpbmRvd3MKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

