Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF175430FB
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jun 2022 15:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654693531;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Uq4+lxMQvYlSJ02GdFa0Lmk5YW4KxukzkAinxGzzejY=;
	b=dhJ9dd9eke2DXv1xlZlOunjHxQDqo7mtnC9L0SOw3QOAgh4MjPM0dECPgptZtJ+PRzvJvD
	F0G2DJRU01uEjxi/ouLpeTjw7oqRXw/Jibx+dKKwo7sexUAew3Ori37aTe9ah6cBVv1WxE
	cBOMby8kH7AlSQY7nvQjBCiNwCAqnJ0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-VIc6agdPNvmXVqeBm1DeEw-1; Wed, 08 Jun 2022 09:05:27 -0400
X-MC-Unique: VIc6agdPNvmXVqeBm1DeEw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE0DC97C5A1;
	Wed,  8 Jun 2022 13:05:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AAEF21121314;
	Wed,  8 Jun 2022 13:05:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 303F91947067;
	Wed,  8 Jun 2022 13:05:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 08 Jun 2022 12:44:58 +0000
To: blinux-list@redhat.com
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
In-Reply-To: <mailman.22357.1654606973.111201.blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21730.1654451477.111203.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
 <mailman.22357.1654606973.111201.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.22758.1654693519.111210.blinux-list@redhat.com>
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

SGksCgpJIHNhdyB5b3VyIGlzc3VlIG9uIEdpdGh1Yiwgd2lsbCBiZSBnZXR0aW5nIHRvIGl0IHNv
b24uCgpSaWdodCBub3csIEknbSB0cnlpbmcgdG8gZmlndXJlIG91dCBob3cgdG8gYm9vdCB1cCBB
cmNobGludXggaW50byB0aGUKYWNjZXNzaWJsZSBtb2RlIGluIHF1aWNrZW11LCBzbyBJIGNhbiBn
ZXQgYXQgbGVhc3QgYSBzaW1pbGFyIGVudmlyb25tZW50LgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rp
c2xhdgoKCkTFiGEgNy4gNi4gMjAyMiBvIDE1OjAyIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gbmFww61zYWwoYSk6Cj4gQXMgc2FpZCBvbiB0aGUgR2l0aHViIHBhZ2UuIEknbSBy
dW5uaW5nIHRoaXMgdW5kZXIgQXJjaCBhbmQgZ2V0IG5vCj4gb3V0cHV0IGF0IGFsbC4KPgo+IHdo
YXQgSSBkbwo+Cj4gMS4gRG93bmxvYWQgV2luZG93cyBleGUgYW5kIGV4dHJhY3QgaXQKPgo+IDIu
IEdyYWIgdGhlIHNlcnZlci9jbGllbnQgYW5kIHJlbmFtZS9yZXBsYWNlIG52ZGFDb250cm9sbGVy
eHguZGxsCj4gd2hlcmUgeHggaXMgMzIgb3IgNjQKPgo+IDMuIHN0YXJ0IHRoZSBzZXJ2ZXIgd2l0
aCAuL252ZGEyc3BlZWNoZCBpbiBpdHMgZm9sZGVyCj4KPiA0LiB3aW5lIHdpbmRvd3NleGUuZXhl
Cj4KPiBJIGdldCBhIGNvbm5lY3Rpb24gaGFzIGJlZW4gZXN0YWJsaXNoZWQgb24gdGhlIHRhYiB3
aXRoIHRoZQo+IG52ZGEyc3BlZWNoZCBydW5uaW5nLCBhbmQgbm8gc3BlZWNoIGZyb20gdGhlIHBy
b2dyYW0gYXQgYWxsIGhvd2V2ZXIsCj4gYW5kIGEgYm9hdGxvYWQgb2YgV0lORSBTYXBpIGVycm9y
cywgaXQgc2VlbXMqIHRvIG1lIGxpa2UgaXQncyBsb29raW5nCj4gZm9yIHRoZSBTQVBJIHN0dWZm
Cj4KPiBBbSBJIG1pc3Npbmcgc29tZWV0aGluZyBzdXBlciBzdXBlciBvYnZpb3VzIGhlcmUgb3I/
Cj4KPiBPbiAwNS8wNi8yMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiBJIGF2b2lkIEdVSSBhcHBzIGluIGdl
bmVyYWwgYW5kIEkgdGhpbmsgdGhlIGxhc3QgdGltZSBJIHVzZWQgV2luZQo+PiBtaWdodCBoYXZl
IGJlZW4geWVhcnMgYmVmb3JlIEkgd2VudCBibGluZCwgYnV0IHRoaXMgc3RpbGwgc291bmRzIGxp
a2UKPj4gYSBzaWduaWZpY2FudCBzdGVwIGZvcndhcmQgZm9yIHRoZSBhY2Nlc3NpYmlsaXR5IG9m
IG5vbi1uYXRpdmUKPj4gc29mdHdhcmUsIGFuZCBzdXJwcmlzaW5nbHkgZWxlZ2FudCB0byBib290
Lgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

