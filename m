Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3124FC449
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 20:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649702596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9cSrqGWrHudhLbtvFeOvVnSKabDmdnV7qBWPZm79axo=;
	b=Aa+/q7U8ku77ZQYoXA4o5apmFUWaO39/+xR6A73i+qc61F1t9iKW7+AnIoM9YgANUj34Cf
	ZqXw1lJ0VKnWVsYwXOKLdT91hVQTwnAgvj9e7gj4HHvwLn3GT8H32xEAeed/2bo9KRguj9
	Vd8S2aR75493nZjJEH2nvumgMUmE4Kk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-8_-W_FEfPLudBnMbrJGWmg-1; Mon, 11 Apr 2022 14:43:12 -0400
X-MC-Unique: 8_-W_FEfPLudBnMbrJGWmg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A7541C04B72;
	Mon, 11 Apr 2022 18:43:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A79647C2B;
	Mon, 11 Apr 2022 18:43:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 01C4F1940370;
	Mon, 11 Apr 2022 18:43:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm history vs show hidden
Date: Mon, 11 Apr 2022 20:43:04 +0200
References: <425FD1FA-D2B3-4C49-9048-1CC65D43315F@linux-a11y.org>
In-Reply-To: <425FD1FA-D2B3-4C49-9048-1CC65D43315F@linux-a11y.org>
To: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.7755.1649702589.111203.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpXZWxsIEkgbSBub3QgdGhlIG1haW50YWluZXIgb2YgdGhlIHB5dGhvbi1pbm90aWZ5
IHBhY2thZ2UuIElmIGl0IGRvZXMgbm90IGJ1aWxkIHBsZWFzZSBjb250YWN0IHRoZSBtYWludGFp
bmVyLgoKaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9weXRob24taW5vdGlmeQoK
TWF5YmUgaSB3aWxsIHJlcGxhY2UgdGhpcyB3aXRoIHB5dGhvbi1weWlub3RpZnkgYW55dGltZS4g
VGhpcyBpcyBpbiBvZmZpY2lhbCBhcmNoIGxpbnV4IHJlcG9zLgoKQ2hlZXJzIGNocnlzCgo+IEFt
IDExLjA0LjIwMjIgdW0gMjA6Mjggc2NocmllYiBMaW51eCBBMTF5IDxjaHJ5c0BsaW51eC1hMTF5
Lm9yZz46Cj4gCj4g77u/SG93ZHksCj4gCj4gV2VsbCBJIG0gbm90IHRoZSBtYWludGFpbmVyIG9m
IHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJZiBpdCBkb2VzIG5vdCBidWlsZCBwbGVhc2Ug
Y29udGFjdCB0aGUgbWFpbnRhaW5lci4KPiAKPiBodHRwczovL2F1ci5hcmNobGludXgub3JnL3Bh
Y2thZ2VzL3B5dGhvbi1pbm90aWZ5Cj4gCj4gTWF5YmUgaSB3aWxsIHJlcGxhY2UgdGhpcyB3aXRo
IHB5dGhvbi1weWlub3RpZnkgYW55dGltZS4gVGhpcyBpcyBpbiBvZmZpY2lhbCBhcmNoIGxpbnV4
IHJlcG9zLgo+IAo+IENoZWVycyBjaHJ5cwo+IAo+IFZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0
Cj4gCj4+PiBBbSAxMS4wNC4yMDIyIHVtIDIwOjExIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+PiAKPj4g77u/RmFp
bGVkIHRvIGJ1aWxkIGFuZCBtYWtlIHRoZSBweXRob24gaW5vdGlmeSBkdWUgdG8gcHl0aG9uMi1u
b3NlIGlzIHdoYXQgSSdtIGdldHRpbmcuIEFkZGl0aW9uYWxseSB0aGUgcHl0aG9uLWlub3RpZnkg
eW91J3JlIHVzaW5nIGZvciB0aGUgc2NyaXB0IGlzIG1hcmtlZCBvdXQgb2YgZGF0ZS4gSSdsbCB0
cnkgcHV0dGluZyBpbm90aWZ5IGJhY2sgd2l0aCBwaXAgYW5kIHNlZSBpZiB0aGF0IGdldHMgYXJv
dW5kIGl0IGFnYWluLCB0aG91Z2ggSSdtIG5vdCBzdXJlIHdoeSBpdCdzIGZhaWxpbmcgdG8gYnVp
bGQuCj4+IAo+PiBBbnkgb3RoZXIgQXJjaCB1c2VycyBydW5uaW5nIGludG8gdGhpcyBvciBpcyBp
dCBqdXN0IG1lPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

