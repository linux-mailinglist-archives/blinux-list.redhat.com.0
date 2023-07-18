Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9457580F8
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 17:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689694336;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5slnHlbER3i/9SvfGiUMo8QBQ9YTPO7dfjm86yMb1Ho=;
	b=O6zHkOBH1v+QTlyDb0tZVdc5ipmzzlTuZA9d9pMo8GZ7YqRO+6lv6fja7du/Cvec1b3SB1
	nGVpb939yvHwaasBLYbRS0hV+jYgpK4e2kYSO5NRcXyN/vXy1Yil7lkxqM2IF1dEsZ74EM
	sOVgNuDEwB/hT0gMo6gUGZTsbRYn3xE=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-416-dQvmrbzmOliTxN7Q1aGNtg-1; Tue, 18 Jul 2023 11:32:13 -0400
X-MC-Unique: dQvmrbzmOliTxN7Q1aGNtg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA2983825868;
	Tue, 18 Jul 2023 15:27:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5B1FC207B313;
	Tue, 18 Jul 2023 15:27:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9336E19465A0;
	Tue, 18 Jul 2023 15:27:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 11:21:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Fixing a corrupted partition table using orca?
To: blinux-list@redhat.com
References: <mailman.287.1689646905.687810.blinux-list@redhat.com>
 <mailman.418.1689689614.687810.blinux-list@redhat.com>
In-Reply-To: <mailman.418.1689689614.687810.blinux-list@redhat.com>
Message-ID: <mailman.415.1689694069.687812.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBJZiB5b3UgaGF2ZSBhIGxpdmUgQ0Qgb3IgYm9vdGFibGUgVVNCIHN0aWNrLCB5b3Ug
c2hvdWxkIGJlIGFibGUgdG8gCmJyaW5nIHVwIE9SQ0EuwqAgVGhlbiBvcGVuIGEgdGVybWluYWwg
YW5kIHRyeSB1c2luZyAnZmRpc2snIG9yIHNvbWUgb2YgCnRoZSBMaW51eCBjb21tYW5kIGxpbmUg
dXRpbGl0aWVzLsKgIFRoaXMgYXNzdW1lcyB0aGF0IHlvdXIgQklPUyBpcyBzZXQgdG8gCmNoZWNr
IGZvciBib290aW5nIGZyb20gYSBVU0IgZGV2aWNlIGZpcnN0LsKgIElmIGl0IGlzbid0LCB5b3Ug
cHJvYmFibHkgCm5lZWQgc29tZW9uZSB0byBoZWxwIHlvdSBjaGFuZ2UgdGhhdCBzZXR0aW5nLgoK
U28geWVzIGl0IG1pZ2h0IGJlIHBvc3NpYmxlLCBidXQgaXQgcmVxdWlyZXMgc29tZSBrbm93bGVk
Z2UuCgpPbiA3LzE4LzIwMjMgMTA6MTIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gSSBoYWQgbm8gaWRlYSBvbmUgY291bGQgdXNlIGxpbnV4IG1pbnQgd2l0
aCBvcmNhLgo+IEkgdHJpZWQgdG8gcnVuIG1pbnQsIGFuZCBjb3VsZCBub3QgZ2V0IG9yY2EgdG8g
cnVuIG9uIHRoZSBpbnN0YWxsLgo+Cj4+IE9uIEp1bCAxNywgMjAyMywgYXQgMjE6MjEsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+Pgo+PiBIaSwKPj4gTXkgTGludXggbWFjaGluZSBoYXMgYSBjb3JydXB0ZWQgcGFydGl0
aW9uIHRhYmxlLgo+PiBJcyBpdCBwb3NzaWJsZSBmb3IgbWUgdG8gZml4IGl0LCB1c2luZyB0aGUg
b3JjYSBzY3JlZW4gcmVhZGVyPwo+PiBJ4oCZbSB1c2luZyBMaW51eCBNaW50IDIxLjEgd2l0aCBP
cmNhIDQyLgo+Pgo+Pgo+PiBUaGFua3MsCj4+IEplc3NpY2EgRGFpbAo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

