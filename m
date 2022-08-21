Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B3B59B180
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 06:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661054723;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jbIt07fsqZBBixnliCTPdumOoIi51j6QWyoqSXBihdA=;
	b=BG1UbpcZu1ksM7rc+Pg9P6XT62VSFmKnBsedDxA6VaOo4/NrhlDlbdS8ruKGU5Ci7XuXm9
	BlX0Z6DZCCYyfBCrfR2P7cQDUCxWPUSGLey4wDp2NQbX5dNFJ+SsTHXFcjwdvoQ6G3Sfb3
	DnNg6KqKyeJi+9fxEuoYwqfRTo5oR1I=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-bupSdlWeMbqGSG4RnL75ZA-1; Sun, 21 Aug 2022 00:05:20 -0400
X-MC-Unique: bupSdlWeMbqGSG4RnL75ZA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23C93101A586;
	Sun, 21 Aug 2022 04:05:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10707945DF;
	Sun, 21 Aug 2022 04:05:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B800F1946A4B;
	Sun, 21 Aug 2022 04:05:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Raspberry pi 3
Date: Sat, 20 Aug 2022 23:04:59 -0500
References: <mailman.2449.1661039000.10500.blinux-list@redhat.com>
In-Reply-To: <mailman.2449.1661039000.10500.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2582.1661054713.10503.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB0aGUgaW5mby4gSSBzdWJzY3JpYmVkIHRvIHRoZSBtYWlsaW5nIGxpc3Qg
aG93ZXZlciwgdGhleSBkaWQgbm90IGxpc3QgYW4gZW1haWwgYWRkcmVzcyBmb3IgdGhlIGdyb3Vw
LiBEbyB5b3UgaGFwcGVuIHRvIGtub3cgd2hhdCB0aGUgbGlzdCBlbWFpbCBhZGRyZXNzZXM/CgpB
c2hsZXkgQnJlZ2VyCgo+IE9uIEF1ZyAyMCwgMjAyMiwgYXQgNjo0MyBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4g
Cj4g77u/U2xpbnQgaXMgZXhjbHVzaXZlbHkgYW4geDg2IGRpc3Rybywgc28gbm8gd2F5IHRvIHJ1
biBpdCBkaXJlY3RseSBvbgo+IHRoZSBQaSwgYnV0IHlvdSBzaG91bGQgYmUgYWJsZSB0byB3cml0
ZSBhbnkgaW1hZ2UgdG8gYW4gU0QgY2FyZCB1c2luZwo+IGFueSBmbGF2b3Igb2YgTGludXgsIGFu
ZCBhcyBsb25nIGFzIGFuIHNzaCBzZXJ2ZXIgaXMgaW5zdGFsbGVkIGFuZAo+IGVuYWJsZWQgb24g
dGhlIFBpLCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gYWNjZXNzIGl0IGZyb20gYW55IExpbnV4Cj4g
c3lzdGVtIHdpdGggYSBzc2ggY2xpZW50Lgo+IAo+IFRoYXQgc2FpZCwgeW91IG1pZ2h0IHdhbnQg
dG8gY2hlY2sgb3V0IHJhc3BiZXJyeXZpLm9yZyBhbmQgdGhlCj4gUmFzcGJlcnJ5IFZJIG1haWxp
bmcgbGlzdCB3aGljaCBhcmUgZGVkaWNhdGVkIHNwZWNpZmljYWxseSB0byB1c2luZwo+IHRoZSBQ
aSBhcyBhIHZpc3VhbGx5IGltcGFpcmVkIG9yIGJsaW5kIHVzZXIuCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=

