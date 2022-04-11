Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA784FC4CA
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 21:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649704357;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9YLDqbrnCaimoLrdczMzgd+wtGZQqvZ85dURm7nwQQc=;
	b=ginwv+EseuY+uPPx1ZBbxPYJyOea6db30CDCwNCjUMeS/Po3DaSNnHXjRXRpcTLTF3U76k
	TP99dwi6FjpHkq3Z2AYbYH0Y1X2MZ4hVboQfAJ4Tv8wb5mtW1XLKfWT6E1P48Lf145fJV7
	QJDyZVT9eCJFUbH99+bbO7vwMVLRV9c=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-5D5dBKtQNfyi-V2_ix2zEw-1; Mon, 11 Apr 2022 15:12:33 -0400
X-MC-Unique: 5D5dBKtQNfyi-V2_ix2zEw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 209A03C23FA6;
	Mon, 11 Apr 2022 19:12:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 95680111E410;
	Mon, 11 Apr 2022 19:12:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 19CC51940370;
	Mon, 11 Apr 2022 19:12:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm history vs show hidden
Date: Mon, 11 Apr 2022 21:12:17 +0200
References: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
In-Reply-To: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.7756.1649704345.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpTdXJlIGNhbiByZXZlcnQgaXQgdGlsIHRoZSBkZXBlbmRlbmN5IGlzc3VlIGlzIGZp
eGVkLiBCdXQgaXQgbWlnaHQgdGFrZSBhIHdoaWxlLCBp4oCYbSBjdXJyZW50bHkgYXQgYW4gYmFy
IGRyaW5rIHNvbWUgY29sZCBiZWVyLgoKTWF5YmUgaSBjYW4gcmV3b3JrIGl0IHRvIHVzZSBweXRo
b24tcHlpbm90aWZ5IGluc3RlYWQgb2YgcHl0aG9uLWlub3RpZnkuIFRoaXMgaXMgaW4gb2ZmaWNp
YWwgQXJjaCBSZXBvc2l0b3J5LgoKCkNoZWVycyBjaHJ5cwoKPiBBbSAxMS4wNC4yMDIyIHVtIDIw
OjQ4IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT46Cj4gCj4g77u/Rm9yIG5vdyBjYW4geW91IHJldmVydCB0aGF0IGNoYW5n
ZSB0byB0aGUgc2NyaXB0PyBJdCBidWlsdCBmaW5lIGJlZm9yZSBhbmQganVzdCBuZWVkZWQgdGhl
IG5vdGlmeSBpbnN0YWxsZWQgdmlhIHBpcCB0byBtYWtlIGl0IHdvcmssIGhvd2V2ZXIgSSBkdW5u
byBlbm91Z2ggYWJvdXQgdGhlIG90aGVyIHB5dGhvbi1weW5vdGlmeSBwYWNrYWdlIGF0IGFsbCB0
aG91Z2ggCj4gCj4+IE9uIE1vbiwgQXByIDExLCAyMDIyIGF0IDA4OjQzOjA0UE0gKzAyMDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhvd2R5LAo+PiAKPj4g
V2VsbCBJIG0gbm90IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdl
LiBJZiBpdCBkb2VzIG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4g
Cj4+IGh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGFja2FnZXMvcHl0aG9uLWlub3RpZnkKPj4g
Cj4+IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRp
bWUuIFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPj4gCj4+IENoZWVycyBj
aHJ5cwo+PiAKPj4+PiBBbSAxMS4wNC4yMDIyIHVtIDIwOjI4IHNjaHJpZWIgTGludXggQTExeSA8
Y2hyeXNAbGludXgtYTExeS5vcmc+Ogo+Pj4gCj4+PiDvu79Ib3dkeSwKPj4+IAo+Pj4gV2VsbCBJ
IG0gbm90IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJZiBp
dCBkb2VzIG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4+IAo+Pj4g
aHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9weXRob24taW5vdGlmeQo+Pj4gCj4+
PiBNYXliZSBpIHdpbGwgcmVwbGFjZSB0aGlzIHdpdGggcHl0aG9uLXB5aW5vdGlmeSBhbnl0aW1l
LiBUaGlzIGlzIGluIG9mZmljaWFsIGFyY2ggbGludXggcmVwb3MuCj4+PiAKPj4+IENoZWVycyBj
aHJ5cwo+Pj4gCj4+PiBWb24gbWVpbmVtIGlQaG9uZSBnZXNlbmRldAo+Pj4gCj4+Pj4+IEFtIDEx
LjA0LjIwMjIgdW0gMjA6MTEgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4gCj4+Pj4g77u/RmFpbGVkIHRvIGJ1
aWxkIGFuZCBtYWtlIHRoZSBweXRob24gaW5vdGlmeSBkdWUgdG8gcHl0aG9uMi1ub3NlIGlzIHdo
YXQgSSdtIGdldHRpbmcuIEFkZGl0aW9uYWxseSB0aGUgcHl0aG9uLWlub3RpZnkgeW91J3JlIHVz
aW5nIGZvciB0aGUgc2NyaXB0IGlzIG1hcmtlZCBvdXQgb2YgZGF0ZS4gSSdsbCB0cnkgcHV0dGlu
ZyBpbm90aWZ5IGJhY2sgd2l0aCBwaXAgYW5kIHNlZSBpZiB0aGF0IGdldHMgYXJvdW5kIGl0IGFn
YWluLCB0aG91Z2ggSSdtIG5vdCBzdXJlIHdoeSBpdCdzIGZhaWxpbmcgdG8gYnVpbGQuCj4+Pj4g
Cj4+Pj4gQW55IG90aGVyIEFyY2ggdXNlcnMgcnVubmluZyBpbnRvIHRoaXMgb3IgaXMgaXQganVz
dCBtZT8KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

