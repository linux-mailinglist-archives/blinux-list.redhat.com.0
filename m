Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A77714FC4CC
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 21:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649704452;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YXN4grRLLgrc3aeWLIDnKXoHcMYLmuyIYpVFGHOY5WE=;
	b=NOnPgRZv0rcoHNwTJTrkXzH/cm3w6DvHEr0kyOlWuvXNGe7SE/XvitHVX2auLpWbKq98fx
	kfsjBkYC3ARKwUQbF9paGZxfrlv5GKLboTBzgu+zIjNaWkUsV55ciXOlSE4vnPfBbuYFDB
	q+PAATgold4TyGQvMvveQdg1MaShRiM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-271-vVwB8Y5ANnG_eS-m6ZD1sA-1; Mon, 11 Apr 2022 15:14:11 -0400
X-MC-Unique: vVwB8Y5ANnG_eS-m6ZD1sA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 829E186B8A3;
	Mon, 11 Apr 2022 19:14:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6DE30C35993;
	Mon, 11 Apr 2022 19:14:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 37DEE1940373;
	Mon, 11 Apr 2022 19:14:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm history vs show hidden
Date: Mon, 11 Apr 2022 21:14:03 +0200
References: <mailman.7826.1649703242.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.7826.1649703242.111202.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.7988.1649704448.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpTdXJlLCBhcyBpIHdyb3RlLCBpIHJldmVydCB0aGUgY2hhbmdlcyBhcyBzb29uIGFz
IEkgY29tZSBob21lLgoKQ2hlZXJzIGNocnlzCgpWb24gbWVpbmVtIGlQaG9uZSBnZXNlbmRldAoK
PiBBbSAxMS4wNC4yMDIyIHVtIDIwOjU0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gCj4g77u/Q2hlY2tlZCB0aGUg
QVVyIGFuZCB0aGF0IHBhY2thZ2UgaXMgZmxhZ2dlZCBvdXQgb2YgZGF0ZS4gUHl0aG9uMi1ub3Nl
IGRvZXNuJ3Qgc2VlbSogZnJvbSBhIHF1aWNrIGxvb2sgdG8gYmUgaW4gdGhlIHJlcG9zIGFueXdo
ZXJlLiBObyB5b3UncmUgbm90IHRoZSBtYWludGFpbmVyIGJ1dCBpdCBtYWtlcyBpdCBpbXBvc3Np
YmxlIHRvIGJ1aWxkIGF0IHByZXNlbnQgZHVlIHRvIG1pc3NpbmcgZGVwZW5kZW5jaWVzIHRoYXQg
YXJlIG5vdCBpeSB0aGUgQVVSIG9yIHJlcG9zLCBzbyBoZW5jZSB3aHkgSSBhc2tlZCBpbiBteSBs
YXN0IG1lc3NhZ2UgdG8gcmV2ZXJ0IHRoZSBzY3JpcHQgYW5kIHNlZSBpZiBjaGFuZ2luZyB0byB0
aGUgcHl0aG9uLXBpbm90aWZ5IG9uZSB3b3VsZCB3b3JrIHdpdGhvdXQgdG9vIG11Y2ggcmV0b29s
aW5nIGhvd2V2ZXIgc2luY2UgSSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoYXQgcGFja2FnZSBhdCBh
bGwuCj4gCj4+IE9uIE1vbiwgQXByIDExLCAyMDIyIGF0IDA4OjQzOjA0UE0gKzAyMDAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhvd2R5LAo+PiAKPj4gV2Vs
bCBJIG0gbm90IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJ
ZiBpdCBkb2VzIG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4gCj4+
IGh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGFja2FnZXMvcHl0aG9uLWlub3RpZnkKPj4gCj4+
IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUu
IFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPj4gCj4+IENoZWVycyBjaHJ5
cwo+PiAKPj4+PiBBbSAxMS4wNC4yMDIyIHVtIDIwOjI4IHNjaHJpZWIgTGludXggQTExeSA8Y2hy
eXNAbGludXgtYTExeS5vcmc+Ogo+Pj4gCj4+PiDvu79Ib3dkeSwKPj4+IAo+Pj4gV2VsbCBJIG0g
bm90IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJZiBpdCBk
b2VzIG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4+IAo+Pj4gaHR0
cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9weXRob24taW5vdGlmeQo+Pj4gCj4+PiBN
YXliZSBpIHdpbGwgcmVwbGFjZSB0aGlzIHdpdGggcHl0aG9uLXB5aW5vdGlmeSBhbnl0aW1lLiBU
aGlzIGlzIGluIG9mZmljaWFsIGFyY2ggbGludXggcmVwb3MuCj4+PiAKPj4+IENoZWVycyBjaHJ5
cwo+Pj4gCj4+PiBWb24gbWVpbmVtIGlQaG9uZSBnZXNlbmRldAo+Pj4gCj4+Pj4+IEFtIDExLjA0
LjIwMjIgdW0gMjA6MTEgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4gCj4+Pj4g77u/RmFpbGVkIHRvIGJ1aWxk
IGFuZCBtYWtlIHRoZSBweXRob24gaW5vdGlmeSBkdWUgdG8gcHl0aG9uMi1ub3NlIGlzIHdoYXQg
SSdtIGdldHRpbmcuIEFkZGl0aW9uYWxseSB0aGUgcHl0aG9uLWlub3RpZnkgeW91J3JlIHVzaW5n
IGZvciB0aGUgc2NyaXB0IGlzIG1hcmtlZCBvdXQgb2YgZGF0ZS4gSSdsbCB0cnkgcHV0dGluZyBp
bm90aWZ5IGJhY2sgd2l0aCBwaXAgYW5kIHNlZSBpZiB0aGF0IGdldHMgYXJvdW5kIGl0IGFnYWlu
LCB0aG91Z2ggSSdtIG5vdCBzdXJlIHdoeSBpdCdzIGZhaWxpbmcgdG8gYnVpbGQuCj4+Pj4gCj4+
Pj4gQW55IG90aGVyIEFyY2ggdXNlcnMgcnVubmluZyBpbnRvIHRoaXMgb3IgaXMgaXQganVzdCBt
ZT8KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

